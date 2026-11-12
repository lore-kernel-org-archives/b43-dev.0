Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95BE606A8AA
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B580F3sO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=SLKMLppA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2Qwk1QU+of7biwPiV7sf9bzt+Moxv4+RbdIz+NfUIIM=; b=B580F3sOJ7iSR/qLjz8Dz6b75l
	y6CtgWApowptPZ7cDwkgpr4DCnySaplOsQB8EAsB+5//KoD/rfOp/95eJkZ8ygS76AiWIUla46dwQ
	Db3YtUZ8DeRv8Ebdk3NL5OhPUe/bsz/9pMfiIMV8RMH4B7TuHeOfulGe3JG4Ytpm5lygnkCCLvl4h
	5s6xqHJ/YiknNqYZd5XyGyc+YbM2Ra6ocC/6OGVsEx/oqwwEfIa6V9M2mcCsCPc6FHRCcmV+4wEXC
	qf1sCbQsHVTV0HU3orBlSQYpP8+Q5ozOl+8GJFXsQSJ6tMmJwFXoIdri8n/5sleIy30FEC21XCD6H
	x9Mc0wnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2b-0000000AoaF-1EsP;
	Thu, 12 Nov 2026 17:56:53 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2W-0000000AoTy-2h9T
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:51 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-48dee593f18so24448f8f.3
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506207; x=1795111007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3wIm4YG5YTs5SCnZuWti0ur7cF4MpcSiaNujKUCPewA=;
        b=SLKMLppAJYrU/LuOTp4EWf0g1Wm4R73U/MepF3icB0E2eTdM0n+AyI8pcFp8XeARnT
         atOvkIhRjH6rHlA3TU+lMnA39geb+Os4l7z+xwULAlhyI8DKdzmKHec5KFeyuG6tjr2N
         7rqPhnqvnXVbAfWihFFBRENv7eL4wPp50IO9zv45PNc4OL9MwLWLjt2g26hbul3XrPv8
         l7pbnXqz4xRXvYDvYAmikoYtiGkjXiqWEHGzxejJfGGfO7a6CnCsNLTpoa3gW89wfgTd
         qRFWn4Ptm67/Kz0DmWqYJSfuptQuoRJ9JoYc8tvQJV9hDxfAPCe0rYrcypBn+JWcE1VP
         Oi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506207; x=1795111007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=3wIm4YG5YTs5SCnZuWti0ur7cF4MpcSiaNujKUCPewA=;
        b=G9Qog8j34Pilso+xLeV7/zKgJVqH5zH9KOuTwD4NRIR4OIaViVrCcWzYaCp8uMC9B8
         PyNHHnkvNvyLoNpt31ZgecLSqInLfO6PrsjUxMWcMa9ysrpTyDJelZW3yT/2q+pDr9WY
         S/OuswWwqWrpfVjgKXelaF9DZySq48gudhHbowgW5Zb/3r3Asd7/IGz9a7nkDaXQeaJf
         sARJyNqP8yH3zqd0N0Ciptejmpvem6ONy6iQRsX56bGz+byO+CNqWc7w+2KAvonBsBOk
         5bJFwKMKiBx+pWPFYGHIOqjHGhRnA+mEPmxoR9hwEijP7VHRipdYPd83Novj/Spy/qXv
         Eb6w==
X-Forwarded-Encrypted: i=1; AL+hErEzJgAEobFNoyGRU/NKl4V/3e24Jd0pllpy5Ij01i5fDPYjYLWE3vz/KUaBIE00Wd4GaMviie06@lists.infradead.org
X-Gm-Message-State: APuU4Z/LzZDWLVXjBKN9X0gSF87HMkkUU90xTSrL+z5q0PK6rSLYy8kH
	gGDR9Tmh9EqZbUsMTuMfZk34OX7NGwhhz1YehrIHwp8Ao2ktV/BxObzx
X-Gm-Gg: AYBFou2uqS9dfw2zyWF2cPc1XJWeqS0DOrdokhcg0eD4kfTykgUf3bL5udqRb5LNXA2
	LlQYCyXCVinKFUc1NAhKXg7DXOOHu09dF4iMhbao5E7RLqAoqiwr8QFRgPtCTnF0p5MHZap9x1e
	FUzxl6k2NzS6pFdkrcROknWM+cfMGdcaVK3THt3oIwi/5XsVdsSpthJ1ZyQdkfnvrv0A+lanb71
	ddPwwUfxAlCXhcNUEllvNcCNvN9KSg8Q81Tx9W9XL98z08MlWwjocEbH2ohsLczTiz5QGd1NNux
	ayY7INTBtZXTTi4LV/Yt6uBUPXk9/Oj7vZRoiA2hZ8QJQlfbEf6L+ohfLgVA6qKVJNY6eJKyXI8
	YyPF6lg/sJoNMHmA0TBSU5pYjSrI+iG/d58PKZHAvdPNRDCH1nvQ+TOMufz+C7e96W9+uk+vLPg
	TqjJh4siK49zZraexeDnlLSyoQ30esECHOXhtR5Ax83o8j9ZkPSrBsDGuNsA46pqzRIC10iFHyu
	QtLlyc+PxkuPkXKZjVKIDpnWguZoDt0kvCSuLvl4z30xo8wTAHX8P/g6+4chSBO8EbwYSAurB1i
	tazbZ4A7wyzCVLwKSiA9IBDL0RZZOlZkpv5y9Kvmy2ALx2mHlm/Kp/OKfCOvd89nusti+dFbMd9
	rqBjvdewG31EI6NJNVpOfmojF0erzY20eYRA0aiUQS8UtVxUgGZpfasNsw+TaNAyFHFZAvcOhsf
	U0Lfl3Tu6NdBB73A8DSIQxloDG7nNWxApioRQiBwRNWw==
X-Received: by 2002:a05:6000:24ca:b0:492:7fa6:efd4 with SMTP id ffacd0b85a97d-49c6fd933e3mr428161f8f.9.1794506206544;
        Thu, 12 Nov 2026 09:56:46 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5f1c193fsm547430f8f.13.2026.11.12.09.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:46 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 4/4] wifi: b43: A-MPDU for the AC microcode
Date: Thu, 12 Nov 2026 18:56:40 +0100
Message-ID: <20261112175640.40603-5-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175640.40603-1-gonsolo@gmail.com>
References: <20261112175640.40603-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095648_876232_10F4B41F 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: jpeisach@ubuntu.com, julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The microcode builds the aggregates and sends the block acks. Accept block
ack sessions on both sides (ampdu_action) and set
IEEE80211_HW_AMPDU_AGGREGATION on the AC cores.

Frames of a session that the microcode gave up on are put back on the
ring, up to four times, with the retry bit set; the block ack window lets
them follow later frames. The cache info limits an aggregate to four MPDUs,
longer ones lose their later MPDUs.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/dma.c  | 48 ++++++++++++++++++++++++
 drivers/net/wireless/broadcom/b43/main.c | 37 ++++++++++++++++++
 drivers/net/wireless/broadcom/b43/xmit.c | 22 ++++++++++-
 drivers/net/wireless/broadcom/b43/xmit.h |  2 +
 4 files changed, 108 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 404f75f..ef05327 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -34,6 +34,9 @@
  * into separate slots. */
 #define TX_SLOTS_PER_FRAME	2
 
+/* Times an unacknowledged A-MPDU session frame is put back on the ring */
+#define B43_AC_AMPDU_REQUEUE	4
+
 static u32 b43_dma_address(struct b43_dma *dma, dma_addr_t dmaaddr,
 			   enum b43_addrtype addrtype)
 {
@@ -1378,6 +1381,7 @@ int b43_dma_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 
 	hdr = (struct ieee80211_hdr *)skb->data;
+	b43_get_priv_tx_info(info)->requeues = 0;
 	if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
 		/* The multicast ring will be sent after the DTIM */
 		ring = dev->dma.tx_ring_mcast;
@@ -1466,6 +1470,7 @@ void b43_dma_handle_txstatus(struct b43_wldev *dev,
 	static const struct b43_txstatus fake; /* filled with 0 */
 	const struct b43_txstatus *txstat;
 	int slot, firstused;
+	struct sk_buff *requeue = NULL;
 	bool frame_succeed;
 	int skip;
 	static u8 err_out1;
@@ -1568,6 +1573,29 @@ void b43_dma_handle_txstatus(struct b43_wldev *dev,
 			else
 				txstat = status;
 
+			/* A session frame the microcode gave up on goes back
+			 * on the ring, as the stock driver requeues it; the
+			 * block ack window lets it follow later frames.
+			 */
+			if (!skip && !txstat->acked &&
+			    (info->flags & IEEE80211_TX_CTL_AMPDU) &&
+			    !(info->flags & IEEE80211_TX_CTL_NO_ACK)) {
+				struct b43_private_tx_info *pi =
+					b43_get_priv_tx_info(info);
+
+				if (pi->requeues < B43_AC_AMPDU_REQUEUE) {
+					struct ieee80211_hdr *hdr =
+						(void *)meta->skb->data;
+
+					pi->requeues++;
+					hdr->frame_control |= cpu_to_le16(
+						IEEE80211_FCTL_RETRY);
+					requeue = meta->skb;
+					meta->skb = B43_DMA_PTR_POISON;
+					ring->used_slots--;
+					break;
+				}
+			}
 			frame_succeed = b43_fill_txstatus_report(dev, info,
 								 txstat);
 #ifdef CONFIG_B43_DEBUG
@@ -1606,6 +1634,26 @@ void b43_dma_handle_txstatus(struct b43_wldev *dev,
 		if (skip > 0)
 			--skip;
 	}
+	if (requeue) {
+		if (dma_tx_fragment(ring, requeue)) {
+			struct ieee80211_tx_info *info =
+				IEEE80211_SKB_CB(requeue);
+
+			b43_fill_txstatus_report(dev, info, status);
+			ieee80211_tx_status_skb(dev->wl->hw, requeue);
+		} else if (free_slots(ring) < TX_SLOTS_PER_FRAME) {
+			/* The requeued frame took the slots this status freed:
+			 * the ring is still full, keep the queue stopped.
+			 */
+			if (!ring->stopped) {
+				b43_stop_queue(dev, ring->queue_prio);
+				dev->wl->tx_queue_stopped[ring->queue_prio] =
+					true;
+				ring->stopped = true;
+			}
+			return;
+		}
+	}
 	if (ring->stopped) {
 		B43_WARN_ON(free_slots(ring) < TX_SLOTS_PER_FRAME);
 		ring->stopped = false;
diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 5830acb..6b80b5e 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5479,6 +5479,39 @@ static int b43_op_get_survey(struct ieee80211_hw *hw, int idx,
 	return 0;
 }
 
+static int b43_op_ampdu_action(struct ieee80211_hw *hw,
+			       struct ieee80211_vif *vif,
+			       struct ieee80211_ampdu_params *params)
+{
+	struct b43_wl *wl = hw_to_b43_wl(hw);
+
+	/* Only the AC-PHY path builds session frames */
+	if (!wl->current_dev || !b43_ucode_is_ac(wl->current_dev))
+		return -EOPNOTSUPP;
+
+	switch (params->action) {
+	case IEEE80211_AMPDU_TX_START:
+		return IEEE80211_AMPDU_TX_START_IMMEDIATE;
+	case IEEE80211_AMPDU_TX_STOP_CONT:
+	case IEEE80211_AMPDU_TX_STOP_FLUSH:
+	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
+		ieee80211_stop_tx_ba_cb_irqsafe(vif, params->sta->addr,
+						params->tid);
+		return 0;
+	case IEEE80211_AMPDU_TX_OPERATIONAL:
+		return 0;
+	case IEEE80211_AMPDU_RX_START:
+	case IEEE80211_AMPDU_RX_STOP:
+		/*
+		 * The microcode deaggregates and sends the block acks, mac80211
+		 * reorders.
+		 */
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct ieee80211_ops b43_hw_ops = {
 	.add_chanctx = ieee80211_emulate_add_chanctx,
 	.remove_chanctx = ieee80211_emulate_remove_chanctx,
@@ -5501,6 +5534,7 @@ static const struct ieee80211_ops b43_hw_ops = {
 	.stop			= b43_op_stop,
 	.set_tim		= b43_op_beacon_set_tim,
 	.sta_notify		= b43_op_sta_notify,
+	.ampdu_action		= b43_op_ampdu_action,
 	.sw_scan_start		= b43_op_sw_scan_start_notifier,
 	.sw_scan_complete	= b43_op_sw_scan_complete_notifier,
 	.get_survey		= b43_op_get_survey,
@@ -5590,6 +5624,9 @@ static int b43_setup_bands(struct b43_wldev *dev,
 			hw->wiphy->bands[NL80211_BAND_5GHZ] = &b43_band_5GHz_aphy;
 	}
 
+	if (b43_is_ac_core(dev))
+		ieee80211_hw_set(hw, AMPDU_AGGREGATION);
+
 	dev->phy.supports_2ghz = have_2ghz_phy;
 	dev->phy.supports_5ghz = have_5ghz_phy;
 
diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index dee6cc6..163e713 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -1160,7 +1160,27 @@ bool b43_fill_txstatus_report(struct b43_wldev *dev,
 			frame_success = false;
 		}
 	}
-	if (status->frame_count == 0) {
+	if (report->flags & IEEE80211_TX_CTL_AMPDU) {
+		/*
+		 * minstrel_ht ignores session frames without this; one report
+		 * per MPDU
+		 */
+		report->flags |= IEEE80211_TX_STAT_AMPDU;
+		report->status.ampdu_len = 1;
+		report->status.ampdu_ack_len = status->acked ? 1 : 0;
+	}
+	if ((report->flags & IEEE80211_TX_CTL_AMPDU) &&
+	    (report->status.rates[0].flags &
+	     (IEEE80211_TX_RC_MCS | IEEE80211_TX_RC_VHT_MCS))) {
+		/* Sent with two rate blocks: attempts at each */
+		report->status.rates[0].count = status->frame_count;
+		if (status->fb_count && report->status.rates[1].idx >= 0 &&
+		    (report->status.rates[1].flags &
+		     (IEEE80211_TX_RC_MCS | IEEE80211_TX_RC_VHT_MCS)))
+			report->status.rates[1].count = status->fb_count;
+		else
+			report->status.rates[1].idx = -1;
+	} else if (status->frame_count == 0) {
 		/* The frame was not transmitted at all. */
 		report->status.rates[0].count = 0;
 	} else if (status->rts_count > dev->wl->hw->conf.short_frame_max_tx_count) {
diff --git a/drivers/net/wireless/broadcom/b43/xmit.h b/drivers/net/wireless/broadcom/b43/xmit.h
index d403a28..b6723be 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.h
+++ b/drivers/net/wireless/broadcom/b43/xmit.h
@@ -412,9 +412,11 @@ static inline u8 b43_kidx_to_raw(struct b43_wldev *dev, u8 firmware_kidx)
  * The structure is placed in (struct ieee80211_tx_info *)->rate_driver_data
  *
  * @bouncebuffer: DMA Bouncebuffer (if used)
+ * @requeues: times the frame was put back on the ring (AC-PHY A-MPDU)
  */
 struct b43_private_tx_info {
 	void *bouncebuffer;
+	u8 requeues;
 };
 
 static inline struct b43_private_tx_info *

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
