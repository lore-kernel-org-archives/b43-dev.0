Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84956CCA46C
	for <b43-dev@archiver.kernel.org>; Sat, 17 Oct 2026 00:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W48bejabZ3yQYcCMIW2Ihh10/F0U+2DRvXDz3phI4k8=; b=ik3YKqzTk9AFoL
	3h6qGc2Dw+hj5pEtqxUcLQtrk0fjAA0w2D4vYpn/2MjeC7FlRaqhxYvrpmzXRgcmETbA0o1jRVI3q
	ugd2JxEHSG30w4CqXaqnN8S5DHNQPURtwohdr4kLbhiAC65BvBb5p1utD5Dz6nfrjeqcZy0CamuCN
	9iA7i9YK1fIGWqRsTZtVu5CQrMx0Hj2bf7YTG5ccTUyHsOhhbnavl5+VsbflXGTjkfACygyKy88gI
	zTcmi7nV0KXRj7ha+yM3SZ8G17eVOK3vrNUypozbMrTeqrxaQFhiWW9QdbHso3xHcw3vUuaC/mfiy
	8uNrt81AxkfXb+oFEO5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHsek-00000004HPk-0HZd;
	Sat, 17 Oct 2026 00:52:14 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHseX-00000004HP6-3TTg
	for b43-dev@lists.infradead.org;
	Sat, 17 Oct 2026 00:52:03 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3ac6794fe45so471488a91.0
        for <b43-dev@lists.infradead.org>; Fri, 16 Oct 2026 17:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792198319; x=1792803119; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pS9vsZjnoYZ5Z/rGHYsRUA9k6Kk3CgYA5qQssv3k9eI=;
        b=k3yC6oLPxQQXW0RDfU3U0nts2MleochKxXZqYk9CvNSU3YGzHz8LYT0jk6aIt9aF4y
         u2675TfeiuuvyHUa2VP0kYsURgDnlaY9EgWXYq0jjUdhD4dvBUKidCf28DlQzIJvZGWb
         IvCr/1oYe7JwUruvBS76Wld7b2GdD+z49k7MGIK8eh7wmb9T7pBHyIzS7SCRi3wuYfL6
         aMGtd0USj28cEUYEbf4heQUqwGbCjzjyIpOhkRLTd9IUjY85Da4s5Whq/lKnfW8Kxptq
         K1kVGR2P+QbAjcQyWo0c3ckEPW/DqnUr/NLr1yCAUN2SKbxb5sz4lG94Hy38wmsptwyG
         oA0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792198319; x=1792803119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pS9vsZjnoYZ5Z/rGHYsRUA9k6Kk3CgYA5qQssv3k9eI=;
        b=L/KX0aL8qSRUEGqcqKrZ0Ewr1jrBgItWaIek9iGVxmLRyBdnuIxEgztrtxYVktRzqE
         XFUIFOT92bgbcUc3VnHjsndRDXmCN/zIlQBUd+dmpT6NjwYxeAE3NvMXv+YY0DfSafpI
         QqIFGcD9xDDYQDUcDDnvbDKZwW9Qw8s9VnBKwPZDxzyWRWzpg1+ksqO2harKhWBfSlt7
         0gKwUXvzRs8aXi0CeaoNjqskQfs7yZWv6ybaaIkUzk/3YwrRvfFEj07OG1AY0jW+2Zq9
         2DRlVIAReyUDPsfN4i2TfmEiD4g+tsoLIFR32rCKU9sga9t10HFId7c2nx1urrdvwwC+
         2LDw==
X-Forwarded-Encrypted: i=1; AKwUvBy/8zrLCUFWe0pS3QsbkrRxiebYAKKejmhfAiedXloFxQiW/k8ZAzL8e3qbyNfA73zMNg0g9oIw@lists.infradead.org
X-Gm-Message-State: AFq9FYL3yKHbLKKEKDLk0qNhkoLWK8sKDwf/n0r74EwLwT+b3d5bggHw
	QD74XD4xWyYmXULCqPrWaKWZzEaZ6oCK2xgimFaaRG2tkqICZGsUnb3C
X-Gm-Gg: AYBFou0jRjeq5Nfgudqter5eWVv9e4uK3ODjQQ4csTT4IuHbA99/VhESO/3Tq3wYTD7
	Sh3b8/cIj+T3n/FTuKh2y4hir97662/CyBmhR4K0uGsQt4LXFIk9hvsYFLTFhFxl5Hgk8aoJhz4
	ixLnj0GdsJDEvewRzBh6tLKHB5t6VeK1nYl49PHwbBTYAVjz75Kufp3L3hq9yiTQZEHjNT0h2ge
	5egUsiTfnSnNLGCIXD4Dvlo4Eoj1ncrGZvgBu/4wLezTsXsFUuTch24RD0JV2nk9wf6Yd4giHpV
	A5t3w61RxXmwuCe/UCy/+tGrFypOPBw9rTzsD93YG11KgFjbuLAwNUVKlo20Cdgu2O6R+BSi6St
	DPwi7u9MhXNwZGRbWCpPtq2bVk5cf1xTlenRxc2ahH4Nv2WktXIEv9b3W22BOsJ00mIAb+ZyOSz
	GzwxXL0VKEosZJ15zw6hORz3I+xuEeXPWytgIm9FEqY9zc/2h7wFUgzsyL7EniXHAlEgdoGJGXp
	CpRW+J+eYtoSJ2kTdlKZYm5zqi1x739fPyVy1J3A8Uw6V5IHU++N6egIKxS4fRR06p9wC5YclzU
	X+mw13KiPh/rcibCn2jonbpDtPPS5UfwqDGld9tPHVxfFdWjLb9Ph9PraAk=
X-Received: by 2002:a17:90b:4acc:b0:39e:6d82:dca with SMTP id 98e67ed59e1d1-3acef0c8872mr1364594a91.30.1792198318796;
        Fri, 16 Oct 2026 17:51:58 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e35])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac947cf9a5sm11053970a91.15.2026.10.16.17.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 17:51:57 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: keep the N-PHY TX power control from drifting while idle
Date: Fri, 16 Oct 2026 17:51:56 -0700
Message-ID: <20261017005156.1260496-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_175201_918317_290CEDC1 
X-CRM114-Status: GOOD (  24.62  )
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
control is set up again or the channel changes.

With this, the base indices stay at 75-79 over idle periods, and all
pings after them get through. Throughput is unchanged.

Fixes: c7d643103508 ("b43: N-PHY: determine various PHY params")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c  | 20 +++++++
 drivers/net/wireless/broadcom/b43/phy_n.c | 64 +++++++++++++++++++++++
 drivers/net/wireless/broadcom/b43/phy_n.h | 12 +++++
 3 files changed, 96 insertions(+)

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
index 22359bd9db47..b5fca1d20bfb 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -3605,6 +3605,11 @@ static void b43_nphy_tx_power_ctrl(struct b43_wldev *dev, bool enable)
 		b43_nphy_stay_in_carrier_search(dev, 1);
 
 	nphy->txpwrctrl = enable;
+	nphy->txpctl_bidx_valid = false;
+	if (nphy->txpctl_bidx_loaded) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX, 0);
+		nphy->txpctl_bidx_loaded = false;
+	}
 	if (!enable) {
 		if (dev->phy.rev >= 3 &&
 		    (b43_phy_read(dev, B43_NPHY_TXPCTL_CMD) &
@@ -6326,6 +6331,60 @@ static void b43_nphy_channel_setup(struct b43_wldev *dev,
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
+ * then, the base indices stay where they were loaded.
+ */
+void b43_nphy_txpctl_ofdm_tx(struct b43_wldev *dev)
+{
+	struct b43_phy_n *nphy = dev->phy.n;
+	unsigned long now = jiffies;
+	u16 c1, c2;
+
+	if (dev->phy.rev < 3 || !nphy->txpwrctrl)
+		return;
+
+	if (nphy->txpctl_bidx_valid &&
+	    time_after(now, nphy->txpctl_last_tx + HZ / 2)) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX,
+			      B43_NPHY_TXPCTL_BIDX_LOAD | nphy->txpctl_bidx);
+		nphy->txpctl_bidx_loaded = true;
+		nphy->txpctl_last_sample = now;
+	} else if (nphy->txpctl_bidx_loaded) {
+		if (time_after(now, nphy->txpctl_last_sample + HZ / 50)) {
+			b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX,
+				      nphy->txpctl_bidx);
+			nphy->txpctl_bidx_loaded = false;
+			nphy->txpctl_last_sample = now;
+		}
+	} else if (time_before(now, nphy->txpctl_last_tx + HZ / 20) &&
+		   (!nphy->txpctl_bidx_valid ||
+		    time_after(now, nphy->txpctl_last_sample + HZ / 5))) {
+		c1 = b43_phy_read(dev, B43_NPHY_C1_TXPCTL_STAT);
+		c2 = b43_phy_read(dev, B43_NPHY_C2_TXPCTL_STAT);
+		nphy->txpctl_bidx = (c1 & B43_NPHY_TXPCTL_STAT_BIDX) >>
+				    B43_NPHY_TXPCTL_STAT_BIDX_SHIFT;
+		nphy->txpctl_bidx |= c2 & B43_NPHY_TXPCTL_STAT_BIDX;
+		nphy->txpctl_bidx_valid = true;
+		nphy->txpctl_last_sample = now;
+	}
+
+	nphy->txpctl_last_tx = now;
+}
+
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/SetChanspec */
 static int b43_nphy_set_channel(struct b43_wldev *dev,
 				struct ieee80211_channel *channel,
@@ -6363,6 +6422,11 @@ static int b43_nphy_set_channel(struct b43_wldev *dev,
 	/* Channel is set later in common code, but we need to set it on our
 	   own to let this function's subcalls work properly. */
 	phy->channel = channel->hw_value;
+	dev->phy.n->txpctl_bidx_valid = false;
+	if (dev->phy.n->txpctl_bidx_loaded) {
+		b43_phy_write(dev, B43_NPHY_TXPCTL_BIDX, 0);
+		dev->phy.n->txpctl_bidx_loaded = false;
+	}
 
 #if 0
 	if (b43_channel_type_is_40mhz(phy->channel_type) !=
diff --git a/drivers/net/wireless/broadcom/b43/phy_n.h b/drivers/net/wireless/broadcom/b43/phy_n.h
index b96ded0ef539..787ad3e9b5ac 100644
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
@@ -1005,4 +1015,6 @@ struct b43_phy_n {
 struct b43_phy_operations;
 extern const struct b43_phy_operations b43_phyops_n;
 
+void b43_nphy_txpctl_ofdm_tx(struct b43_wldev *dev);
+
 #endif /* B43_NPHY_H_ */
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
