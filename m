From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 26 Jan 2015 18:26:17 +0100
Subject: [PATCH] b43: Fix locking FIXME in beacon update top half
Message-ID: <20150126182617.521f58b5@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>

b43 has a FIXME about locking in the mac80211 set-beacon-int callback for a long time.
As it turns out there actually is a tiny race window that could result in
a use-after-free bug of the 'current_beacon' memory.
Nobody ever reported this, so it probably never happened.

Fix this by adding a spin lock that protects the current_beacon access.
We must not be in atomic context while accessing hardware (due to SDIO),
so the beacon update bottom half has to clone the skb and release the lock
before writing it to hardware.

Let's all hope that this stops the troll who is trying to submit incorrect
fixes for this issue repeatedly.
And let's hope that I'm not a troll, too, who just hides even more evil code
in an even more complex attempt to fix the issue.

Signed-off-by: Michael Buesch <m@bues.ch>
Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

---

Index: linux/drivers/net/wireless/b43/b43.h
===================================================================
--- linux.orig/drivers/net/wireless/b43/b43.h
+++ linux/drivers/net/wireless/b43/b43.h
@@ -941,6 +941,7 @@ struct b43_wl {
 	bool beacon1_uploaded;
 	bool beacon_templates_virgin; /* Never wrote the templates? */
 	struct work_struct beacon_update_trigger;
+	spinlock_t beacon_lock;
 
 	/* The current QOS parameters for the 4 queues. */
 	struct b43_qos_params qos_params[B43_QOS_QUEUE_NUM];
Index: linux/drivers/net/wireless/b43/main.c
===================================================================
--- linux.orig/drivers/net/wireless/b43/main.c
+++ linux/drivers/net/wireless/b43/main.c
@@ -1601,12 +1601,26 @@ static void b43_write_beacon_template(st
 	unsigned int rate;
 	u16 ctl;
 	int antenna;
-	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(dev->wl->current_beacon);
+	struct ieee80211_tx_info *info;
+	unsigned long flags;
+	struct sk_buff *beacon_skb;
 
-	bcn = (const struct ieee80211_mgmt *)(dev->wl->current_beacon->data);
-	len = min_t(size_t, dev->wl->current_beacon->len,
-		  0x200 - sizeof(struct b43_plcp_hdr6));
+	spin_lock_irqsave(&dev->wl->beacon_lock, flags);
+	info = IEEE80211_SKB_CB(dev->wl->current_beacon);
 	rate = ieee80211_get_tx_rate(dev->wl->hw, info)->hw_value;
+	/* Clone the beacon, so it cannot go away, while we write it to hw. */
+	beacon_skb = skb_clone(dev->wl->current_beacon, GFP_ATOMIC);
+	spin_unlock_irqrestore(&dev->wl->beacon_lock, flags);
+
+	if (!beacon_skb) {
+		b43dbg(dev->wl, "Could not upload beacon. "
+		       "Failed to clone beacon skb.");
+		return;
+	}
+
+	bcn = (const struct ieee80211_mgmt *)(beacon_skb->data);
+	len = min_t(size_t, beacon_skb->len,
+		    0x200 - sizeof(struct b43_plcp_hdr6));
 
 	b43_write_template_common(dev, (const u8 *)bcn,
 				  len, ram_offset, shm_size_offset, rate);
@@ -1674,6 +1688,8 @@ static void b43_write_beacon_template(st
 				B43_SHM_SH_DTIMPER, 0);
 	}
 	b43dbg(dev->wl, "Updated beacon template at 0x%x\n", ram_offset);
+
+	dev_kfree_skb_any(beacon_skb);
 }
 
 static void b43_upload_beacon0(struct b43_wldev *dev)
@@ -1790,13 +1806,13 @@ static void b43_beacon_update_trigger_wo
 	mutex_unlock(&wl->mutex);
 }
 
-/* Asynchronously update the packet templates in template RAM.
- * Locking: Requires wl->mutex to be locked. */
+/* Asynchronously update the packet templates in template RAM. */
 static void b43_update_templates(struct b43_wl *wl)
 {
-	struct sk_buff *beacon;
+	struct sk_buff *beacon, *old_beacon;
+	unsigned long flags;
 
-	/* This is the top half of the ansynchronous beacon update.
+	/* This is the top half of the asynchronous beacon update.
 	 * The bottom half is the beacon IRQ.
 	 * Beacon update must be asynchronous to avoid sending an
 	 * invalid beacon. This can happen for example, if the firmware
@@ -1810,12 +1826,17 @@ static void b43_update_templates(struct
 	if (unlikely(!beacon))
 		return;
 
-	if (wl->current_beacon)
-		dev_kfree_skb_any(wl->current_beacon);
+	spin_lock_irqsave(&wl->beacon_lock, flags);
+	old_beacon = wl->current_beacon;
 	wl->current_beacon = beacon;
 	wl->beacon0_uploaded = false;
 	wl->beacon1_uploaded = false;
+	spin_unlock_irqrestore(&wl->beacon_lock, flags);
+
 	ieee80211_queue_work(wl->hw, &wl->beacon_update_trigger);
+
+	if (old_beacon)
+		dev_kfree_skb_any(old_beacon);
 }
 
 static void b43_set_beacon_int(struct b43_wldev *dev, u16 beacon_int)
@@ -5094,7 +5115,6 @@ static int b43_op_beacon_set_tim(struct
 {
 	struct b43_wl *wl = hw_to_b43_wl(hw);
 
-	/* FIXME: add locking */
 	b43_update_templates(wl);
 
 	return 0;
@@ -5584,6 +5604,7 @@ static struct b43_wl *b43_wireless_init(
 	wl->hw = hw;
 	mutex_init(&wl->mutex);
 	spin_lock_init(&wl->hardirq_lock);
+	spin_lock_init(&wl->beacon_lock);
 	INIT_WORK(&wl->beacon_update_trigger, b43_beacon_update_trigger_work);
 	INIT_WORK(&wl->txpower_adjust_work, b43_phy_txpower_adjust_work);
 	INIT_WORK(&wl->tx_work, b43_tx_work);
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150126/49c944c0/attachment-0001.sig>
