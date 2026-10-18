Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB276CCF2C9
	for <b43-dev@archiver.kernel.org>; Sun, 18 Oct 2026 20:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TDPCEh0q1rlURuGuFo0hqoE5CtJoV9D7L7fSRHltXAw=; b=yB2cBvRldMN4mA
	V4bh0WndP0y0gOrrDPpUQgPFlT+BFQTBv6TMqV/910VzY+/P8DL3UCki1XOQ/OoNfVpL4AvivYgw1
	fX7ud3oKP/6tEEzMrzA+kLEpL5YDEIb6rphH5U+AYvBfciFFv9Bi9TpwDomZ4ObZM8BK3NvHgnW4E
	Jfr6NyzHlHoN0+IFeF13evtIY2nBbA0W6FE7BuFYIIv1EfcNW2uhDHSZh4FqC6hq6EPrsAmTWMa8k
	xQYwhY3jbhHHbX8ATv7uz99QjxxQN3rnqowzV1aTzlQ+82eLuWXMakzP0+u5gctuB8ys65Q7ivUwM
	ZS2EpotJwDbYO+mcC4wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXBP-00000006C7k-3XQm;
	Sun, 18 Oct 2026 20:08:39 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXBM-00000006C7L-0qzs
	for b43-dev@lists.infradead.org;
	Sun, 18 Oct 2026 20:08:38 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-3282db206d3so1931256eec.0
        for <b43-dev@lists.infradead.org>; Sun, 18 Oct 2026 13:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792354115; x=1792958915; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kwv4RNc5UH41528+dkhNkqH92wtpyPfTX7ImyVQZAQs=;
        b=forFz+rsJ3noLmy9fJ34CL5rQ/DM++HcN60B+20hMd/R4hx9PzuavjW3BD0BwFCcpW
         QAfOj35Jqg5sDD9GsAbIuaX41LL9SkgShFfMMpABKuPIue8V2U7/uOnM093mCP7uZ+LQ
         u9QWR5BvgLdw9ZpNC85u7rA2n8jWAnm+OwP/fHjmuMi6ZsyCx7oK3Rw4/BC9zfOQiBqE
         KibEDn3ESvx5y6dc0yVbq+riHX46CidS5IA9Z/rGs4ovg5I6BC7T2KpZd0o/aK/HLAOn
         g+Q4gkAqtRRslsFvmE+vkECecDPywzG4BgFzkuQbPO08H2mv1RusoFYFMmjSSdw/Fo7W
         X1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792354115; x=1792958915;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kwv4RNc5UH41528+dkhNkqH92wtpyPfTX7ImyVQZAQs=;
        b=pBzqg43apA8Jo4d7d2cP4VSQ5U2gwRA+kvpTAmo1BC9kdnDo5135kBYCkuP1p1BhD/
         RSItRX2iRQcx7O4ZeH7ft8hqm8XyyNcJhiPLtO/2lWXrkiJO5pOivCBDYg5woobju0HK
         z/MnDO+c8CKnx5GT6aJ8eFTcWyuiUfBSGtDJbhYjWzMrKQkzHG+CWSFA+NvlKa/1TaD5
         5bKIOMXSIypzAmrkvO2XSKIuklJwxxEPAJbveXsnGEBeZUFusglKjIycaD5/6mGrP/KU
         n3inyJOHW3+g4ucT6O3vAJDYyTHGC5OPVcYdxU0qT6JnmeCnVOARgakkE4k+DLG7/Ivw
         VD6g==
X-Forwarded-Encrypted: i=1; AKwUvBxPVpxunS77WC/jRTqrUWpJx54fFWOhZ17Rccyeyxdwks2VotIQLHFd5gnpxAEWKd4OZhZqQfIM@lists.infradead.org
X-Gm-Message-State: AFq9FYK/aNihtZA/MI6WS2++exsO5BW00WFU1hu+U08nnXAzpyeXBIY+
	qWtXJRRMeX9i+KSZJ/6VnDHxs7vgWQLULk+Ie5MEmMPzWwm5XLZfE8Lh
X-Gm-Gg: AYBFou07y+Dg/VFQTk2qxjym9q92Gtob/mvoAk0wqJD/qIJ2sOvK7DfDhUHSSO3ibXA
	kt51H36NAsYuxgoNUuChag/UsRGbnnB6mLZ3SNtTZTViQ9+CVbg8IMFzIAcrm//FzsejEoCBaBs
	UbvE2ZsCn8+mABGXXWEo3knwC7Dm35wfSXhul1eIM9QIIZb9Y8kTKYLpwjG8USo61FiNIuWNwnp
	hbGhUesYxiiz6UyleoFl+VQRqx0fbQ2HkosVktJjZlxfBYmOG+Q56WR827boTOFsKjbdGsmSNFG
	XGCvDGJEd0C/qKKrxcZtofeWQQbG46e+ay2hjmuXIFjjEu3zQMgq5SGL6QWMHNLvv1f0gS+ikBE
	u2GjyF1IZQM9QLhHs1bXGWsBUwkBAwmSf99g5tdUKb8os979vvxADEkmirWk+nIadHr0zMX9hc3
	tM0LJyevnbURVVZ6GHq44ifcqf0zOOJOQV2ayuJx4gHu26ozjJot0cHfvqFRxv4/lB1ICtstu5P
	bvdM7n03/aEvdTvmBnwtUBHODg/7c9aZ9G3KfO/UMX8mTwM0JDoOAigPkHybb7gqofBXu2KaON7
	tWmIhOyf89v/Lo/eiizwlOjmd7ShKOp2/9xcOGK+V3yYQVwm
X-Received: by 2002:a05:693c:88d0:10b0:339:7b3b:236d with SMTP id 5a478bee46e88-361a1f5575bmr8505325eec.15.1792354114364;
        Sun, 18 Oct 2026 13:08:34 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36083283478sm25048877eec.29.2026.10.18.13.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 13:08:33 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless v2] wifi: b43: keep the N-PHY TX power control from drifting while idle
Date: Sun, 18 Oct 2026 13:08:32 -0700
Message-ID: <20261018200832.48146-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_130836_278583_BCC23142 
X-CRM114-Status: GOOD (  29.31  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On N-PHY rev 3 and later, the hardware TX power control moves the base
gain index of each core according to the power it estimates for the
frames sent. CCK frames do not update the estimate, but the loop keeps
stepping on them with the last one. An access point with no traffic
only sends CCK beacons, and when the last estimate is below the target,
each beacon adds gain.

On an ASUS RT-N16 (N-PHY rev 5, external PAs), both cores sit at base
index 76-79 while OFDM frames go out, and walk down to index 0, maximum
gain, within 20 s (core 2) and 60 s (core 1) after traffic stops, with
the estimates frozen at 71 and 73 against a target of 74. The OFDM
frames sent after that overdrive the PAs, so the higher rates fail
until the loop has caught up: after 45 s of idle, only 2 of 8 pings
to an 802.11g station got through.

Remember the base indices while OFDM frames are being sent, and when
sending starts again after half a second without, load them back
through the base index register. The loaded value only takes while the
load bit is set as frames go out, so keep it set until OFDM frames have
been sent for a while. Until then, the base indices stay where they
were loaded instead of drifting. Forget the indices when the power
control is set up again or the channel changes. Only sample them once
OFDM frames have been sent without a break for 200 ms, so the loop has
settled first, and suspend the MAC around the register accesses.

With this, the base indices stay at 75-79 over idle periods, and all
pings after them get through. Throughput is unchanged.

Fixes: c7d643103508 ("b43: N-PHY: determine various PHY params")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: add stub to fix linking error.
 drivers/net/wireless/broadcom/b43/main.c  | 20 +++++
 drivers/net/wireless/broadcom/b43/phy_n.c | 94 +++++++++++++++++++++++
 drivers/net/wireless/broadcom/b43/phy_n.h | 18 +++++
 3 files changed, 132 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 3825b6ad9f4f..a205db22a07d 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -3589,11 +3589,27 @@ static int b43_rng_init(struct b43_wl *wl)
 	return err;
 }
 
+/* Whether an N-PHY device sends @skb with OFDM or HT modulation */
+static bool b43_tx_is_ofdm(struct b43_wldev *dev, struct sk_buff *skb)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	const struct ieee80211_rate *rate;
+
+	if (dev->phy.type != B43_PHYTYPE_N)
+		return false;
+	if (info->control.rates[0].flags & IEEE80211_TX_RC_MCS)
+		return true;
+	rate = ieee80211_get_tx_rate(dev->wl->hw, info);
+
+	return rate && b43_is_ofdm_rate(rate->hw_value);
+}
+
 static void b43_tx_work(struct work_struct *work)
 {
 	struct b43_wl *wl = container_of(work, struct b43_wl, tx_work);
 	struct b43_wldev *dev;
 	struct sk_buff *skb;
+	bool ofdm_seen = false;
 	int queue_num;
 	int err = 0;
 
@@ -3607,6 +3623,10 @@ static void b43_tx_work(struct work_struct *work)
 	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
 		while (skb_queue_len(&wl->tx_queue[queue_num])) {
 			skb = skb_dequeue(&wl->tx_queue[queue_num]);
+			if (!ofdm_seen && b43_tx_is_ofdm(dev, skb)) {
+				b43_nphy_txpctl_ofdm_tx(dev);
+				ofdm_seen = true;
+			}
 			if (b43_using_pio_transfers(dev))
 				err = b43_pio_tx(dev, skb);
 			else
diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 22359bd9db47..fa9d57c535a9 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -3592,6 +3592,24 @@ static void b43_nphy_iq_cal_gain_params(struct b43_wldev *dev, u16 core,
  * Tx and Rx
  **************************************************/
 
+/*
+ * Forget the remembered TX power control base indices. Also move the last
+ * OFDM transmission into the past, so the next one is not taken as part of
+ * ongoing traffic: jiffies starts at -300 s on 32-bit, so a zero timestamp
+ * would look recent for the first five minutes after boot.
+ */
+static void b43_nphy_txpctl_bidx_reset(struct b43_wldev *dev)
+{
+	struct b43_phy_n *nphy = dev->phy.n;
+
+	nphy->txpctl_bidx_valid = false;
+	nphy->txpctl_last_tx = jiffies - HZ;
+	if (nphy->txpctl_bidx_loaded) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX, 0);
+		nphy->txpctl_bidx_loaded = false;
+	}
+}
+
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/TxPwrCtrlEnable */
 static void b43_nphy_tx_power_ctrl(struct b43_wldev *dev, bool enable)
 {
@@ -3605,6 +3623,7 @@ static void b43_nphy_tx_power_ctrl(struct b43_wldev *dev, bool enable)
 		b43_nphy_stay_in_carrier_search(dev, 1);
 
 	nphy->txpwrctrl = enable;
+	b43_nphy_txpctl_bidx_reset(dev);
 	if (!enable) {
 		if (dev->phy.rev >= 3 &&
 		    (b43_phy_read(dev, B43_NPHY_TXPCTL_CMD) &
@@ -6326,6 +6345,80 @@ static void b43_nphy_channel_setup(struct b43_wldev *dev,
 		b43_nphy_spur_workaround(dev);
 }
 
+/*
+ * Called before OFDM or HT frames are queued for transmission.
+ *
+ * The hardware TX power control adjusts the base index of each core with
+ * the power it estimates for transmitted frames. CCK frames do not update
+ * the estimate, but the loop still steps on them with the last one. Once
+ * an AP has only beacons to send, that drives the base index all the way
+ * to maximum gain, within 20-60 s on an ASUS RT-N16, and the first OFDM
+ * frames after that compress the external PA: 16-QAM and 64-QAM fail
+ * until the loop has caught up again.
+ *
+ * Remember the base indices while OFDM frames are being sent, and load
+ * them back when sending starts again after a pause. The base indices
+ * only take the loaded values while the load bit is set as frames go
+ * out, so it stays set until frames have been sent for a while. Until
+ * then, the base indices stay where they were loaded. Only sample them
+ * once OFDM frames have been sent without a break for a while, so the
+ * loop has settled on them first.
+ *
+ * The MAC is suspended only around the register accesses, which happen
+ * at most every 20 ms while frames are sent.
+ */
+void b43_nphy_txpctl_ofdm_tx(struct b43_wldev *dev)
+{
+	struct b43_phy_n *nphy = dev->phy.n;
+	unsigned long now = jiffies;
+	bool load = false, unload = false, sample = false;
+	u16 c1, c2;
+
+	if (dev->phy.rev < 3 || !nphy->txpwrctrl)
+		return;
+
+	if (nphy->txpctl_bidx_valid &&
+	    time_after(now, nphy->txpctl_last_tx + HZ / 2))
+		load = true;
+	else if (nphy->txpctl_bidx_loaded)
+		unload = time_after(now, nphy->txpctl_last_sample + HZ / 50);
+	else if (time_after_eq(now, nphy->txpctl_last_tx + HZ / 20))
+		/* Traffic starts again, give the loop time to settle */
+		nphy->txpctl_last_sample = now;
+	else
+		sample = time_after(now, nphy->txpctl_last_sample + HZ / 5);
+
+	nphy->txpctl_last_tx = now;
+	if (!load && !unload && !sample)
+		return;
+
+	b43_mac_suspend(dev);
+	if (nphy->hang_avoid)
+		b43_nphy_stay_in_carrier_search(dev, 1);
+
+	if (load) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX,
+			      B43_NPHY_TXPCTL_BIDX_LOAD | nphy->txpctl_bidx);
+		nphy->txpctl_bidx_loaded = true;
+	} else if (unload) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX, nphy->txpctl_bidx);
+		nphy->txpctl_bidx_loaded = false;
+	} else {
+		c1 = b43_phy_read(dev, B43_NPHY_C1_TXPCTL_STAT);
+		c2 = b43_phy_read(dev, B43_NPHY_C2_TXPCTL_STAT);
+		nphy->txpctl_bidx = (c1 & B43_NPHY_TXPCTL_STAT_BIDX) >>
+				    B43_NPHY_TXPCTL_STAT_BIDX_SHIFT;
+		nphy->txpctl_bidx |= c2 & B43_NPHY_TXPCTL_STAT_BIDX;
+		nphy->txpctl_bidx_valid = true;
+	}
+
+	if (nphy->hang_avoid)
+		b43_nphy_stay_in_carrier_search(dev, 0);
+	b43_mac_enable(dev);
+
+	nphy->txpctl_last_sample = now;
+}
+
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/SetChanspec */
 static int b43_nphy_set_channel(struct b43_wldev *dev,
 				struct ieee80211_channel *channel,
@@ -6363,6 +6456,7 @@ static int b43_nphy_set_channel(struct b43_wldev *dev,
 	/* Channel is set later in common code, but we need to set it on our
 	   own to let this function's subcalls work properly. */
 	phy->channel = channel->hw_value;
+	b43_nphy_txpctl_bidx_reset(dev);
 
 #if 0
 	if (b43_channel_type_is_40mhz(phy->channel_type) !=
diff --git a/drivers/net/wireless/broadcom/b43/phy_n.h b/drivers/net/wireless/broadcom/b43/phy_n.h
index b96ded0ef539..febf552f467b 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.h
+++ b/drivers/net/wireless/broadcom/b43/phy_n.h
@@ -973,6 +973,16 @@ struct b43_phy_n {
 	u16 tx_pwr_last_recalc_freq;
 	int tx_pwr_last_recalc_limit;
 
+	/*
+	 * Base indices of the hardware TX power control while OFDM frames
+	 * were sent, to restore them when sending starts again after idle.
+	 */
+	bool txpctl_bidx_valid;
+	bool txpctl_bidx_loaded;
+	u16 txpctl_bidx;
+	unsigned long txpctl_last_tx;
+	unsigned long txpctl_last_sample;
+
 	u8 txrx_chain;
 	u16 tx_rx_cal_phy_saveregs[11];
 	u16 tx_rx_cal_radio_saveregs[22];
@@ -1005,4 +1015,12 @@ struct b43_phy_n {
 struct b43_phy_operations;
 extern const struct b43_phy_operations b43_phyops_n;
 
+#ifdef CONFIG_B43_PHY_N
+void b43_nphy_txpctl_ofdm_tx(struct b43_wldev *dev);
+#else
+static inline void b43_nphy_txpctl_ofdm_tx(struct b43_wldev *dev)
+{
+}
+#endif
+
 #endif /* B43_NPHY_H_ */
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
