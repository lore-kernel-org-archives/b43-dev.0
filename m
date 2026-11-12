Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6B0606A8AB
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gk2Y8whD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nVsGmGxg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EdtKRMOg9DDG4mDHyFHgsKD+gOdAEoh0L/AFDLmr2ts=; b=gk2Y8whD+HL1LZcr5ayTf7FUId
	PVen+z5ltG3YrohDbSehS8nF6cGlIaRCEudMokgU4PrvwQFwL44zBzjjjaT+cB75rRbbiaoJK+RgG
	fmc+wBepmt2HQMJcIHWL8bPBWkVhK5O1DNZUwZZENtRkNiDNIFfT1ap2WX0slJNFgXz8dOxOupwfv
	TBe48+kofZx/SIi96dQJzGgdIr6U1mpmA9ugglUcxyx4ykfopJZYv48ze+2PM42rO7YgZMe9VEwHA
	SalCpPYmpt/WlmDI7F1WAlCVojZAUtUQ8ka1mayccET7T1OrArcZv2xB7ddnn/wCzZRnoYTxohrxz
	Sse6xV6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2a-0000000AoYv-1eSE;
	Thu, 12 Nov 2026 17:56:52 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2U-0000000AoRX-2J3M
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:48 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-48e10a70540so18097f8f.1
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506204; x=1795111004; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HVf+U3hxUblRExsvvhERdHcHREEMt0I1/4RW7w8TQjA=;
        b=nVsGmGxgPzocc26LFeR9EEFrpdjamIpny42nxN+ABgY4sx/De2UewwaveP3H0f4S7t
         s/4KySmwGq45IDHWYFnzAAwPtqgODmXeXaDm9WMmPiU015reoRn4DFNOJ3WrfoJj74/J
         57aDmUX6FT9O2KEiW9nVn8Iq3CrHikaWT4WNcXoYDgzPoDdHnz3e8jslVNzvz6t1tYKq
         n//3upMFRs4VMV3US/RLoX5/auij4ezE7s0cTX5I3FEibLjrmjQY2RCDYs4YgAiYyyaG
         zi5jFLI5C65sc9D3V7ku0dViyXTGvrDS5kII7thOy56siQljC6WFCm1wXcNFkN/bjNBs
         aMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506204; x=1795111004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HVf+U3hxUblRExsvvhERdHcHREEMt0I1/4RW7w8TQjA=;
        b=0pk42HY239z74cyf4jmmGLmT2NNF4K6Jv92Cy5pXHY2kRlqQcL3fnf02GURZnZxVa+
         jaE/KDRt+DIY9eruCZOxUXyMZhAvN/NlxnCuxySOwA3zZhETK2dPzC3BUVCx1A/S/b3u
         /A4kfepgePyp0+mdFNljXTH7anoPIqHrqpWwAG1xsdb6oZbrXmLQTUSKYxuK7dCHFzkE
         imUJGScBZR+61VARa/t/Tmy4BmqtbP+vODkCF0PWGLZPs9uvlNXtvnr3MGrsorwDcrHW
         rSptCQd/E3eoZ2EHJg18vziElTHsxFPqS9rUt6QMlptzLcB636n7SHw5HMhsAKNJaGa2
         nxkQ==
X-Forwarded-Encrypted: i=1; AL+hErHGBKZa1OocJ+CSULVlHMOxT0Wv/P4lAn0Dw1aTCrG30T015lts/5FNOvNvIkf0kIZCiThJSBzB@lists.infradead.org
X-Gm-Message-State: APuU4Z+QSeYLcMD1YpGepRnIAXV2lDiLCJIpAvBAKeOTg/ieIiecue65
	7AuXPJY9Kb89YZlQoK+TtmBbuu9nDATWVPWt7SHH7GZ1uRwzzkuPbZ5n
X-Gm-Gg: AYBFou0NkmaKBSbV8VRn05+Afr0pea+U86Vu8oo0Ry+FcnOXkPOTzBU/T6Gbip0LURG
	t9LCOiy+qfHG7snmwoI+knKAQuO3IOSpubAln2RrwBYSiqzdlbQkoSXZFypnRU4kzRWhEvHEPcn
	R8gVIrGFmTqHVeiP4+LAlAkgynjgqSRDVYfSumKnbY8MdILnnnysEu0lwCiuYXcpaV78ETq7+/y
	1NVM5Cs7IsNOssSMsV+XzHtHiyc2xcBB1LBctnHlvpZKdzqHyQmMbMs2vKYdJ/AgTYrvN9yJ5f1
	UqqHuqLIkL98I1mW+2MeCSzG6gYz1x5MEpz61RH+qf6ztScVShv77LOtZFx5hZO2n2eBANS0wW6
	kkgu4Ub/UZSbvO253axEg0YL6gSAre5f3Z5b+M1ji8KjAX4gxTOSovEge2rkIYq1zGbud2yReuB
	JkySXuLnfCS/s+RhuvSQxodMp6UgUP9V3um0F+D6bgvBzTAOAtNxbJuslgwgqjoMX6CQPZ54tmR
	LSvDgR+hO0N47ZxLqH4dZHNJDJXTo53U4YAs2IvNYj7Ejyy1Yik0Vny6hH2IZ34BLShBqbhiqUW
	ZEjGRVWPvlReeWYUJu+OGGxY1HOh7MbYYFdAohthkmIDGcqbkqR2L8qfvWUTcR6DOslul34KTEO
	ZUBUaJbW/DgGc9+X3WYqP4l+WcMI1GE3jKiLSJUFBR3UZNFzSf8bsA1lAdDDAeoBhQ3uHAX/Lim
	Ao3Vuu9ouZeeJ+bf64PmTZioErW4/XE2ZlCFfDrEopIQ==
X-Received: by 2002:a5d:5f51:0:b0:495:5c83:51bc with SMTP id ffacd0b85a97d-49c6fc9e6efmr339741f8f.5.1794506204392;
        Thu, 12 Nov 2026 09:56:44 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5f1c193fsm547430f8f.13.2026.11.12.09.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:43 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 2/4] wifi: b43: TX descriptor and TX status for the AC microcode
Date: Thu, 12 Nov 2026 18:56:38 +0100
Message-ID: <20261112175640.40603-3-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175640.40603-1-gonsolo@gmail.com>
References: <20261112175640.40603-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095646_886224_BD6D0FE7 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: -1.1 (-)
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
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The AC microcode takes a 4 byte passthrough prefix and a 124 byte
descriptor with four 20 byte rate entries. Add the descriptor builder:
legacy CCK and OFDM rates, HT rates with the PLCP laid out as brcmsmac
does, VHT rate blocks (frame type 3, with the width and the subband of the
primary channel in the first two words and the VHT-SIG-A fields), and the
cache info that session frames carry (the microcode builds the A-MPDU
from them). The cache info must not carry a cipher: mac80211 has encrypted
the frame already.

The TX status comes as two 4 word records. The attempt count is the low
byte of word 2, not the sum of its bytes, and a record with more than one
MPDU carries a block ack bitmap for the consecutive cookies; the cookies
are advanced with the new b43_dma_cookie_advance().

Only microcode revision 832 has been tested.

Co-developed-by: Alessio Ferri <alessio.ferri@mythread.it>
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/dma.c  |  13 ++
 drivers/net/wireless/broadcom/b43/dma.h  |   1 +
 drivers/net/wireless/broadcom/b43/main.c |  76 ++++++++
 drivers/net/wireless/broadcom/b43/xmit.c | 214 +++++++++++++++++++++++
 drivers/net/wireless/broadcom/b43/xmit.h |  11 ++
 5 files changed, 315 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 5f968b0..404f75f 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1444,6 +1444,19 @@ out:
 	return err;
 }
 
+/* The cookie of the frame @n frames after @cookie on the same ring. */
+u16 b43_dma_cookie_advance(struct b43_wldev *dev, u16 cookie, unsigned int n)
+{
+	struct b43_dmaring *ring;
+	int slot;
+
+	ring = parse_cookie(dev, cookie, &slot);
+	if (!ring)
+		return cookie;
+	return generate_cookie(ring, (slot + n * TX_SLOTS_PER_FRAME) %
+					     ring->nr_slots);
+}
+
 void b43_dma_handle_txstatus(struct b43_wldev *dev,
 			     const struct b43_txstatus *status)
 {
diff --git a/drivers/net/wireless/broadcom/b43/dma.h b/drivers/net/wireless/broadcom/b43/dma.h
index 14de4cb..5c84b1f 100644
--- a/drivers/net/wireless/broadcom/b43/dma.h
+++ b/drivers/net/wireless/broadcom/b43/dma.h
@@ -298,6 +298,7 @@ void b43_dma_tx_resume(struct b43_wldev *dev);
 
 int b43_dma_tx(struct b43_wldev *dev,
 	       struct sk_buff *skb);
+u16 b43_dma_cookie_advance(struct b43_wldev *dev, u16 cookie, unsigned int n);
 void b43_dma_handle_txstatus(struct b43_wldev *dev,
 			     const struct b43_txstatus *status);
 
diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index da7e420..5830acb 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -1414,6 +1414,74 @@ static void handle_irq_transmit_status(struct b43_wldev *dev)
 			break;
 		v1 = b43_read32(dev, B43_MMIO_XMITSTAT_1);
 
+		if (b43_ucode_is_ac(dev)) {
+			/* rev 40+ ucode: two 4-word records per frame */
+			u32 v2 = b43_read32(dev, B43_MMIO_XMITSTAT_0 + 8);
+			u32 v3 = b43_read32(dev, B43_MMIO_XMITSTAT_0 + 12);
+			unsigned int n;
+
+			/*
+			 * second package: words 1 and 2 are the block ack
+			 * bitmap
+			 */
+			u32 w0 = b43_read32(dev, B43_MMIO_XMITSTAT_0);
+			u32 w1 = b43_read32(dev, B43_MMIO_XMITSTAT_1);
+			u32 w2 = b43_read32(dev, B43_MMIO_XMITSTAT_0 + 8);
+			u32 w3 = b43_read32(dev, B43_MMIO_XMITSTAT_0 + 12);
+			unsigned int mpdus = (v0 >> 8) & 0x7f, i;
+			u64 bitmap = ((u64)w2 << 32) | w1;
+
+			memset(&stat, 0, sizeof(stat));
+			stat.cookie = v0 >> 16;
+			stat.seq = v1 & 0xffff;
+			stat.phy_stat = (v1 >> 16) & 0xff;
+			stat.intermediate = !!(v0 & 0x0004);
+			stat.pm_indicated = !!(v0 & 0x0008);
+			stat.supp_reason = (v0 & 0x00f0) >> 4;
+			stat.acked = !!(v0 & 0x8000);
+			/*
+			 * : the attempt count is the LOW BYTE of word 2 only.
+			 * Bits 16-23 hold a constant 1 on every acknowledged
+			 * frame (0 on suppressed ones), not a second attempt
+			 * counter: summing it made every frame look like it
+			 * needed a retry, so minstrel saw ~50 % failures at
+			 * every rate and TX stayed at 1-6 Mbit/s (1.2 "retries"
+			 * per frame regardless of rate or TX power).
+			 */
+			n = v2 & 0xff;
+			stat.frame_count = min(n, 15u);
+			stat.fb_count = min((v2 >> 16) & 0xff, 15u);
+			b43dbg(dev->wl,
+			       "AC txstatus %08x %08x %08x %08x / %08x %08x %08x %08x\n",
+			       v0, v1, v2, v3, w0, w1, w2, w3);
+			if (mpdus > 1) {
+				/*
+				 * A-MPDU: one status for @mpdus frames with
+				 * consecutive cookies
+				 */
+				u16 cookie = stat.cookie;
+
+				/*
+				 * the attempt count covers the whole aggregate
+				 */
+				stat.frame_count =
+					min(DIV_ROUND_UP(n, mpdus), 15u);
+				stat.fb_count =
+					min(DIV_ROUND_UP((v2 >> 16) & 0xff,
+							 mpdus), 15u);
+				for (i = 0; i < mpdus; i++) {
+					stat.cookie = cookie;
+					stat.acked = !!(bitmap & (1ULL << i));
+					b43_handle_txstatus(dev, &stat);
+					cookie = b43_dma_cookie_advance(
+						dev, cookie, 1);
+				}
+				continue;
+			}
+			b43_handle_txstatus(dev, &stat);
+			continue;
+		}
+
 		stat.cookie = (v0 >> 16);
 		stat.seq = (v1 & 0x0000FFFF);
 		stat.phy_stat = ((v1 & 0x00FF0000) >> 16);
@@ -1444,6 +1512,14 @@ static void drain_txstatus_queue(struct b43_wldev *dev)
 		if (!(dummy & 0x00000001))
 			break;
 		dummy = b43_read32(dev, B43_MMIO_XMITSTAT_1);
+		if (b43_ucode_is_ac(dev)) {
+			int i;
+
+			b43_read32(dev, B43_MMIO_XMITSTAT_0 + 8);
+			b43_read32(dev, B43_MMIO_XMITSTAT_0 + 12);
+			for (i = 0; i < 4; i++)
+				b43_read32(dev, B43_MMIO_XMITSTAT_0 + 4 * i);
+		}
 	}
 }
 
diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index f0b0825..cf9e7a5 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -231,6 +231,216 @@ static u8 b43_calc_fallback_rate(u8 bitrate, int gmode)
 	return 0;
 }
 
+/*
+ * One VHT rate block (frame type 3), as the stock driver lays it out and
+ * Alessio Ferri's driver builds it: the width in word 0 bits 15:14, the
+ * subband of the primary within that width in word 1, MCS and NSS - 1 in
+ * word 2, VHT-SIG-A1/A2 in the PLCP bytes (group ID 63, both reserved bits
+ * set), FBW 0x0300 and the rate in 500 kbit/s.
+ */
+static void b43_txhdr_ac_vht_block(u8 *ri, const struct ieee80211_tx_rate *t,
+				   u16 chanspec)
+{
+	static const u8 rate_bw[] = {
+		RATE_INFO_BW_20, RATE_INFO_BW_40, RATE_INFO_BW_80,
+	};
+	u8 mcs = ieee80211_rate_get_vht_mcs(t);
+	u8 nss = ieee80211_rate_get_vht_nss(t);
+	unsigned int bw = 0;
+	struct rate_info rinfo = { .flags = RATE_INFO_FLAGS_VHT_MCS };
+	u16 sb = 0;
+	u32 a1, a2;
+
+	/* wider than 20 MHz only inside the 80 MHz channel */
+	if ((chanspec & 0x3800) == 0x2000) {
+		if (t->flags & IEEE80211_TX_RC_80_MHZ_WIDTH)
+			bw = 2;
+		else if (t->flags & IEEE80211_TX_RC_40_MHZ_WIDTH)
+			bw = 1;
+		sb = ((chanspec >> 8) & 0x7) >> bw;
+	}
+	rinfo.mcs = mcs;
+	rinfo.nss = nss;
+	rinfo.bw = rate_bw[bw];
+
+	put_unaligned_le16(3 | 0x0004 |
+			   ((nss > 1 ? 3 : 1) << 6) |
+			   (bw << 14), ri + 0x00);
+	put_unaligned_le16(sb, ri + 0x02);
+	put_unaligned_le16((mcs & 0xf) | ((nss - 1) << 4), ri + 0x04);
+	a1 = bw | BIT(2) | (63 << 4) | ((nss - 1) << 10) | BIT(23);
+	a2 = (mcs << 4) | BIT(9);
+	ri[0x06] = a1;
+	ri[0x07] = a1 >> 8;
+	ri[0x08] = a1 >> 16;
+	ri[0x09] = a2;
+	ri[0x0a] = a2 >> 8;
+	ri[0x0b] = a2 >> 16;
+	put_unaligned_le16(0x0300, ri + 0x0c);
+	put_unaligned_le16(cfg80211_calculate_bitrate(&rinfo) / 5, ri + 0x0e);
+}
+
+static int b43_generate_txhdr_ac(struct b43_wldev *dev, u8 *h,
+				 struct sk_buff *skb,
+				 struct ieee80211_tx_info *info, u16 cookie)
+{
+	static const u8 cck[] = { B43_CCK_RATE_1MB, B43_CCK_RATE_2MB,
+				  B43_CCK_RATE_5MB, B43_CCK_RATE_11MB };
+	static const u8 ofdm[] = { B43_OFDM_RATE_6MB, B43_OFDM_RATE_9MB,
+				   B43_OFDM_RATE_12MB, B43_OFDM_RATE_18MB,
+				   B43_OFDM_RATE_24MB, B43_OFDM_RATE_36MB,
+				   B43_OFDM_RATE_48MB, B43_OFDM_RATE_54MB };
+	const struct ieee80211_hdr *wlhdr = (const void *)skb->data;
+	struct ieee80211_rate *txrate =
+		ieee80211_get_tx_rate(dev->wl->hw, info);
+	u8 rate = txrate ? txrate->hw_value : B43_CCK_RATE_1MB;
+	bool is_ofdm = b43_is_ofdm_rate(rate);
+	unsigned int len = skb->len + FCS_LEN;
+	u8 *ri = h + B43_TXH_AC_RATE(0);
+	u16 mac_lo = 0, phy0, idx = 0, chanspec, subband;
+	int ht_mcs = -1;
+	/* Only HT rates go out as session frames: a legacy probe frame with the
+	 * aggregate header fails at every attempt.
+	 */
+	bool vht = info->control.rates[0].flags & IEEE80211_TX_RC_VHT_MCS;
+	bool agg = (info->flags & IEEE80211_TX_CTL_AMPDU) &&
+		   (info->control.rates[0].flags &
+		    (IEEE80211_TX_RC_MCS | IEEE80211_TX_RC_VHT_MCS));
+	const u8 *tbl = is_ofdm ? ofdm : cck;
+	unsigned int n = is_ofdm ? ARRAY_SIZE(ofdm) : ARRAY_SIZE(cck);
+
+	/* Hardware crypto needs the AC key fields; load with nohwcrypt=1. */
+	if (info->control.hw_key)
+		return -EOPNOTSUPP;
+
+	memset(h, 0, B43_TXH_AC_LEN);
+	h[0] = 0x02;	/* passthrough prefix, as wl sends it */
+	h[2] = 0x02;
+	h += B43_TXH_AC_PREFIX;
+	ri = h + B43_TXH_AC_RATE(0);
+	while (idx < n && tbl[idx] != rate)
+		idx++;
+	if (idx == n)
+		idx = 0;
+
+	if (!is_multicast_ether_addr(wlhdr->addr1) &&
+	    !(info->flags & IEEE80211_TX_CTL_NO_ACK))
+		mac_lo |= 0x0080;	/* expect immediate ACK */
+	if (!(le16_to_cpu(wlhdr->seq_ctrl) & IEEE80211_SCTL_FRAG))
+		mac_lo |= 0x4000;	/* start of MSDU */
+	if (ieee80211_is_beacon(wlhdr->frame_control))
+		mac_lo |= 0x0200;	/* ignore PMQ */
+
+	chanspec = b43_ac_chanspec(dev, dev->phy.channel);
+	/* A 20 MHz frame inside an 80 MHz channel names its subband (word 1) */
+	subband = (chanspec & 0x3800) == 0x2000 ? (chanspec >> 8) & 0x7 : 0;
+
+	if (agg) {
+		/* MPDU of a block ack session, as the stock driver posts it
+		 * (rxtx-1s-ht20-40-80.zip): MAC control 0x45c0, no fixed rate,
+		 * the sequence number, and the cache info at +0x64: no cipher
+		 * (we encrypt in software; the stock 50 04 makes the microcode
+		 * encrypt again), MPDUs per aggregate at the primary and the
+		 * fallback rate, duration 5414 us, window 63, max length 0x14.
+		 * Without the cache info the AP deauthenticates us.
+		 */
+		static const u8 cache[8] = { 0x00, 0x00, 0x04, 0x04,
+					     0x26, 0x15, 0x3f, 0x14 };
+
+		mac_lo = 0x45c0;
+		memcpy(h + 0x64, cache, sizeof(cache));
+	}
+	put_unaligned_le16(mac_lo, h + 0x02);
+	put_unaligned_le16(agg ? 0 : 0x0002, h + 0x04);	/* fixed rate */
+	put_unaligned_le16(chanspec, h + 0x06);
+	h[0x08] = ieee80211_hdrlen(wlhdr->frame_control);
+	put_unaligned_le16(len, h + 0x0a);
+	put_unaligned_le16(cookie, h + 0x0c);
+	if (agg)
+		put_unaligned_le16(le16_to_cpu(wlhdr->seq_ctrl), h + 0x0e);
+
+	/* Rate entry 0: frame type, always-set bit 2, TX core 0 mask. */
+	phy0 = (is_ofdm ? 1 : 0) | 0x0004 | (1 << 6);
+	if (!is_ofdm && rate != B43_CCK_RATE_1MB &&
+	    (info->control.rates[0].flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE))
+		phy0 |= 0x0010;
+	if (info->control.rates[0].flags & IEEE80211_TX_RC_MCS) {
+		ht_mcs = info->control.rates[0].idx;
+	} else if (vht && !agg) {
+		/*
+		 * A VHT frame always goes out as an A-MPDU; outside a session
+		 * send the HT20 rate of the same stream count instead.
+		 */
+		const struct ieee80211_tx_rate *r = &info->control.rates[0];
+
+		ht_mcs = min_t(int, ieee80211_rate_get_vht_mcs(r), 7) +
+			 8 * (ieee80211_rate_get_vht_nss(r) - 1);
+	}
+
+	if (vht && agg) {
+		b43_txhdr_ac_vht_block(ri, &info->control.rates[0], chanspec);
+	} else if (ht_mcs >= 0 && ht_mcs <= 15) {
+		/*
+		 * HT20: frame type 2, PLCP as brcmsmac lays it out, rate
+		 * index = MCS
+		 */
+		static const u8 ht20_500k[8] = { 13, 26,  39,  52,
+						 78, 104, 117, 130 };
+		u8 mcs = ht_mcs;
+		u8 *plcp = ri + 0x06;
+
+		phy0 = 2 | 0x0004 | ((mcs > 7 ? 3 : 1) << 6);
+		put_unaligned_le16(phy0, ri + 0x00);
+		put_unaligned_le16(subband, ri + 0x02);
+		put_unaligned_le16(mcs, ri + 0x04);
+		plcp[0] = mcs;
+		plcp[1] = len & 0xff;
+		plcp[2] = len >> 8;
+		/* smoothing, not sounding, reserved (brcmsmac) */
+		plcp[3] = 0x07;
+		plcp[4] = 0;
+		plcp[5] = 0;
+		put_unaligned_le16(ht20_500k[mcs & 7] * (mcs > 7 ? 2 : 1),
+				   ri + 0x0e);
+	} else {
+		put_unaligned_le16(phy0, ri + 0x00);
+		put_unaligned_le16(subband, ri + 0x02);
+		put_unaligned_le16(idx, ri + 0x04);
+		b43_generate_plcp_hdr((struct b43_plcp_hdr4 *)(ri + 0x06),
+				      len, rate);
+		put_unaligned_le16(rate, ri + 0x0e);	/* 500 kbit/s units */
+	}
+	if (vht && agg && info->control.rates[1].idx >= 0 &&
+	    (info->control.rates[1].flags & IEEE80211_TX_RC_VHT_MCS)) {
+		put_unaligned_le16(0, ri + 0x10);
+		ri += 0x14;
+		b43_txhdr_ac_vht_block(ri, &info->control.rates[1], chanspec);
+	} else if (agg && !vht && info->control.rates[1].idx >= 0 &&
+	    info->control.rates[1].idx <= 15 &&
+	    (info->control.rates[1].flags & IEEE80211_TX_RC_MCS)) {
+		/* Second rate block: the fallback rate of the session frame */
+		static const u8 ht20_500k[8] = { 13, 26,  39,  52,
+						 78, 104, 117, 130 };
+		u8 mcs = info->control.rates[1].idx;
+
+		put_unaligned_le16(0, ri + 0x10);
+		ri += 0x14;
+		put_unaligned_le16(2 | 0x0004 | ((mcs > 7 ? 3 : 1) << 6),
+				   ri + 0x00);
+		put_unaligned_le16(subband, ri + 0x02);
+		put_unaligned_le16(mcs, ri + 0x04);
+		ri[0x06] = mcs;
+		ri[0x07] = len & 0xff;
+		ri[0x08] = len >> 8;
+		ri[0x09] = 0x07;
+		put_unaligned_le16(ht20_500k[mcs & 7] * (mcs > 7 ? 2 : 1),
+				   ri + 0x0e);
+	}
+	put_unaligned_le16(0x0020, ri + 0x10);	/* last rate entry */
+
+	return 0;
+}
+
 /* Generate a TX data header. */
 int b43_generate_txhdr(struct b43_wldev *dev,
 		       u8 *_txhdr,
@@ -259,6 +469,10 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 	struct ieee80211_rate *txrate;
 	struct ieee80211_tx_rate *rates;
 
+	if (b43_ucode_is_ac(dev))
+		return b43_generate_txhdr_ac(dev, _txhdr, skb_frag, info,
+					     cookie);
+
 	memset(txhdr, 0, sizeof(*txhdr));
 
 	txrate = ieee80211_get_tx_rate(dev->wl->hw, info);
diff --git a/drivers/net/wireless/broadcom/b43/xmit.h b/drivers/net/wireless/broadcom/b43/xmit.h
index 6524a75..d403a28 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.h
+++ b/drivers/net/wireless/broadcom/b43/xmit.h
@@ -188,9 +188,19 @@ struct b43_tx_legacy_rate_phy_ctl_entry {
 #define  B43_TXH_PHY1_MODUL_QAM256	0x2000 /* QAM256 */
 
 
+/*
+ * rev 40+ (AC) TX buffer: 4-byte TX offload passthrough prefix, then the
+ * 124-byte descriptor (packet info + 4 rate entries + cache).
+ */
+#define B43_TXH_AC_PREFIX		4
+#define B43_TXH_AC_LEN			(B43_TXH_AC_PREFIX + 124)
+#define B43_TXH_AC_RATE(i)		(0x14 + (i) * 0x14)
+
 static inline
 size_t b43_txhdr_size(struct b43_wldev *dev)
 {
+	if (b43_ucode_is_ac(dev))
+		return B43_TXH_AC_LEN;
 	switch (dev->fw.hdr_format) {
 	case B43_FW_HDR_598:
 		return 112 + sizeof(struct b43_plcp_hdr6);
@@ -214,6 +224,7 @@ struct b43_txstatus {
 	u16 seq;		/* Sequence number */
 	u8 phy_stat;		/* PHY TX status */
 	u8 frame_count;		/* Frame transmit count */
+	u8 fb_count;		/* AC: attempts at the fallback rate */
 	u8 rts_count;		/* RTS transmit count */
 	u8 supp_reason;		/* Suppression reason */
 	/* flags */

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
