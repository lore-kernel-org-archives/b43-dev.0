Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D6606A321
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jeA47qo/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=b0fYkYI6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+ixUq79C1WVma1HovaxORf7/whuhSuOZheczuLaP15c=; b=jeA47qo/R+igKlYKqp4GecGq2L
	9X8+YoTqlwAjRo0eUu+dkl1SXKKHuZJjZJ4QdrKlqXl7s76HZdOus8txLWJdJKCRZ7wytCdmyg2NL
	wYL/n7A72DVLD4Y/UnYPzJ9BJzv552HUkGQMBbqD2F7KrKA1IDieAdjRijm2Oe5WOwboCz3VtKPi6
	WKvIKxmzpaxsOdOGupmX2r0qwpsxbDfKb7KnR6vpkjh3lTcZI+a/CacOj3n5ZnJerujlBiOadX/XJ
	cxEqEm7zKCdU+LdKobpcTiLMxP9gen5q/cCuUC1QpLKoTq5rp4A+6o9deqVw8wDGiQG2LlvSeEGZs
	rRmjTUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEk-000000033Jv-2h2U;
	Mon, 26 Oct 2026 18:15:58 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEf-000000033HK-2DLl
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:55 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-48b042c0759so1872082f8f.2
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038551; x=1793643351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NsuTrr6wIfPAB8pWsn28L5K8P03qXg+Oz5Zpu1MppRI=;
        b=b0fYkYI6FGNVmlCTNHlammlc9cOU53Adi2aTQuiQYWEmbz48zkMrN296YfJL1QY1ZS
         17bEsOh3IAvQPJbCQ+rLraO0iY5hZvfd9sWhcu8yqgS6Il4EkulP8vh5+Ve/2vMp1kvo
         5bS8lzY4GF7NNj7zgq8c8uFxSi8YOz2nsUgxvCbdhVgZ6pqHqX/m3f9Qwogi2qcuqM1t
         WBLPVf+fs7+vHp9sGvyz3BU6iDcqxkW+vHMdG9SYSyt0DWAVF7herXe9lKERwUqrytSs
         nKN64y2cl5GA5aX9tiZ7wxBnVzWAEIUY0uxGVU1nw31Pm0A+S54Ho4IfftYeXjMI1Vb8
         JGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038551; x=1793643351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NsuTrr6wIfPAB8pWsn28L5K8P03qXg+Oz5Zpu1MppRI=;
        b=vdOJ+nTA6Ioj6N5FYNeMXsoZnM1VkbL2QkAXwUV1JuFE6B0lzhtj/u+YxexRYrdSvJ
         UpKNOx0609NDrduwv7672EDDiEBiasM3xYDp0/ggK/iGqIaX5mCvXBJFjgxYxrIocoSh
         hyc66E/JjPQprKcoHFuJK20fOB4hWjKM+Oot4lJ47S8/nOUGxFOzKNzahueE60uAfq3Y
         EOQ/i5aOWyaAnKMj2YFms12D94ErLQA/+uDap7RZP/j4vKPhn459vfsfm63yIIB5DVCQ
         6YfY9JsxQXUNkkaCr+4s7+UELXa+WY5GM/XNkpV8dJ4P2tRTvHQHil/GDIpzchXvRu2w
         FfUA==
X-Forwarded-Encrypted: i=1; AKwUvByLrs0m5cdLOmGRsQd+feSGNHwR3RDT1Y1Dsju9qOCpsvmL8UPGdZ9VyHdTOXkG7UZwDZjP3f0W@lists.infradead.org
X-Gm-Message-State: AFq9FYLL2olJMm99UqajTHIAmS65Q2n5R4pSVOXfm2HoZIrF8vkk6Y8t
	Ne0eWZpw/DV5fC1lxQ/V6uuOm6YTXilzHQM+dHikOrqdT2Euc87erXcB
X-Gm-Gg: AYBFou0+Yw3iiVCX6wTWPNF1/iQFQYtY024z6rFffUV/saS02/Ltc14jg76mBBZdLwa
	ChE98d5YjqNY5oSXKur7V9YdFXFDszKhpIslLvPc1X85kcqpISGSSjh2OlbTuIjUzxz/J/TMpw2
	+F1zmcREIwdnDeDk9auKzGzqJ5sEeHXaM39G1riRp5wNNoQlR3V+E+basQVkEZuBcv/7CIpYyOJ
	FVQ96xz1/Gx/ZwHXzrvQb0hqx29k5ilN4nFmLtIEPT82x78zlzMuUgPL8Cz4ye9upiIhuV+70E/
	Q/vdVDJ5gSEU6ECI6EWZNqKHLfzzeEXyZnk8SIDDazswusTKyiSL5TAM7nrfHQy5xBOfF+jVtFB
	TvTz/Z2PM1pc8dr77r1VjIZSrt8Q/TR92psbyHWTqnNrhCfC0unAf5PfnvzpK7Vu//qDA68QGYB
	oBL5mlWkefHwV+rK/A07GDp4YOFEckEzqj4MTr8TEP6ASLA7TEBD+zm4LLQqW6NIxS8Ot1kpAoP
	QndMb7ayQPgTkdODA0xcPDGXpOXAbXPSCknga1FaHqkXYgebxgbFAbI8dCoOosvfWbC1nrEHMrw
	GMaT
X-Received: by 2002:a5d:59c4:0:b0:48e:d7c:4bc8 with SMTP id ffacd0b85a97d-48e3eb46851mr13346093f8f.7.1793038551308;
        Mon, 26 Oct 2026 11:15:51 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:50 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 2/5] b43: N-PHY: fix TX IQ/LO calibration
Date: Mon, 26 Oct 2026 19:15:40 +0100
Message-ID: <20261026181543.77763-3-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111553_618437_4E26B6EE 
X-CRM114-Status: GOOD (  23.17  )
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

Several bugs kept the TX IQ/LO calibration from working, and on rev7+
it left TX dead afterwards:

- The busy poll on IQLOCAL_CMD was inverted: bits 15:14 are set while a
  step runs, so it stopped waiting as soon as the step started.
- The final copy was reversed: it wrote the stale buffer over the best
  coefficients (table 15 at 96) and read the active ones (at 80), so the
  result was never applied.
- TxCalPhyCleanup lacked the rev7+ part of brcmsmac's
  wlc_phy_txcal_phycleanup_nphy(): the 0x80 and 0x8 (PA power-up) RF
  overrides set up for the cal were left in place.
- There was no counterpart to b43_nphy_tx_cal_radio_setup_rev7(), so the
  TSSI/IQ-cal path stayed switched in. Add one, following
  wlc_phy_txcal_radio_cleanup_nphy().
- The TRSW override for the second core used 8, which does not fit the
  2-bit field on rev7+; use 2 as wl does.

With these, on a BCM43228 (N-PHY rev 16, radio 2057 rev 9) the per-step
coefficients match the proprietary wl driver's.

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 89 +++++++++++++++++++++--
 1 file changed, 84 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 66565c14e..cabf61870 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4775,6 +4775,37 @@ static void b43_nphy_tx_cal_radio_setup_rev7(struct b43_wldev *dev)
 	}
 }
 
+/*
+ * Undo b43_nphy_tx_cal_radio_setup_rev7(), as brcmsmac's
+ * wlc_phy_txcal_radio_cleanup_nphy() does. Without it the TSSI/IQ cal
+ * path stays switched in after a TX IQ/LO cal.
+ */
+static void b43_nphy_tx_cal_radio_cleanup(struct b43_wldev *dev)
+{
+	struct b43_phy *phy = &dev->phy;
+	u16 *save = dev->phy.n->tx_rx_cal_radio_saveregs;
+	int core, off;
+	u16 r;
+
+	if (phy->rev < 7 || phy->rev >= 19)
+		return;
+
+	for (core = 0; core < 2; core++) {
+		r = core ? 0x20 : 0;
+		off = core * 11;
+
+		b43_radio_write(dev, r + R2057_TX0_TX_SSI_MASTER, save[off + 0]);
+		b43_radio_write(dev, r + R2057_TX0_IQCAL_VCM_HG, save[off + 1]);
+		b43_radio_write(dev, r + R2057_TX0_IQCAL_IDAC, save[off + 2]);
+		b43_radio_write(dev, r + R2057_TX0_TSSI_VCM, save[off + 3]);
+		b43_radio_write(dev, r + R2057_TX0_TX_SSI_MUX, save[off + 5]);
+		if (phy->radio_rev != 5)
+			b43_radio_write(dev, r + R2057_TX0_TSSIA, save[off + 6]);
+		b43_radio_write(dev, r + R2057_TX0_TSSIG, save[off + 7]);
+		b43_radio_write(dev, r + R2057_TX0_TSSI_MISC1, save[off + 8]);
+	}
+}
+
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/TxCalRadioSetup */
 static void b43_nphy_tx_cal_radio_setup(struct b43_wldev *dev)
 {
@@ -5033,7 +5064,9 @@ static struct nphy_txgains b43_nphy_get_tx_gains(struct b43_wldev *dev)
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/TxCalPhyCleanup */
 static void b43_nphy_tx_cal_phy_cleanup(struct b43_wldev *dev)
 {
-	u16 *regs = dev->phy.n->tx_rx_cal_phy_saveregs;
+	struct b43_phy *phy = &dev->phy;
+	struct b43_phy_n *nphy = dev->phy.n;
+	u16 *regs = nphy->tx_rx_cal_phy_saveregs;
 
 	if (dev->phy.rev >= 3) {
 		b43_phy_write(dev, B43_NPHY_AFECTL_C1, regs[0]);
@@ -5047,7 +5080,42 @@ static void b43_nphy_tx_cal_phy_cleanup(struct b43_wldev *dev)
 		b43_phy_write(dev, B43_NPHY_RFCTL_INTC2, regs[8]);
 		b43_phy_write(dev, B43_NPHY_PAPD_EN0, regs[9]);
 		b43_phy_write(dev, B43_NPHY_PAPD_EN1, regs[10]);
+
+		/*
+		 * Drop the overrides b43_nphy_tx_cal_phy_setup() set on rev7+
+		 * (as brcmsmac's wlc_phy_txcal_phycleanup_nphy()). Leaving
+		 * the 0x8 (PA power-up) override in place kills TX.
+		 */
+		if (phy->rev >= 19)
+			b43_nphy_rf_ctl_override_rev19(dev, 0x80, 0, 0, true,
+						       1);
+		else if (phy->rev >= 7)
+			b43_nphy_rf_ctl_override_rev7(dev, 0x80, 0, 0, true, 1);
+
 		b43_nphy_reset_cca(dev);
+
+		if (nphy->use_int_tx_iq_lo_cal) {
+			if (phy->rev >= 19) {
+				b43_nphy_rf_ctl_override_rev19(dev, 0x8, 0, 0x3,
+							       true, 0);
+			} else if (phy->rev >= 8) {
+				b43_nphy_rf_ctl_override_rev7(dev, 0x8, 0, 0x3,
+							      true, 0);
+			} else if (phy->rev == 7) {
+				bool ghz2 = b43_current_band(dev->wl) ==
+					    NL80211_BAND_2GHZ;
+
+				b43_radio_maskset(dev, ghz2 ?
+						  R2057_PAD2G_TUNE_PUS_CORE0 :
+						  R2057_IPA5G_CASCOFFV_PU_CORE0,
+						  ~1, 1);
+				b43_radio_maskset(dev, ghz2 ?
+						  R2057_PAD2G_TUNE_PUS_CORE1 :
+						  R2057_IPA5G_CASCOFFV_PU_CORE1,
+						  ~1, 1);
+				b43_radio_mask(dev, R2057_OVR_REG0, ~(1 << 4));
+			}
+		}
 	} else {
 		b43_phy_maskset(dev, B43_NPHY_AFECTL_C1, 0x0FFF, regs[0]);
 		b43_phy_maskset(dev, B43_NPHY_AFECTL_C2, 0x0FFF, regs[1]);
@@ -5102,7 +5170,12 @@ static void b43_nphy_tx_cal_phy_setup(struct b43_wldev *dev)
 			b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_PA,
 						      0, 3);
 		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 2, 1);
-		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 8, 2);
+		/*
+		 * On rev7+ the TRSW field is 2 bits wide, so the legacy value
+		 * 8 for the second core ends up as 0; wl uses 2 there.
+		 */
+		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW,
+					      phy->rev >= 7 ? 2 : 8, 2);
 
 		regs[9] = b43_phy_read(dev, B43_NPHY_PAPD_EN0);
 		regs[10] = b43_phy_read(dev, B43_NPHY_PAPD_EN1);
@@ -5478,12 +5551,16 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 			}
 
 			b43_phy_write(dev, B43_NPHY_IQLOCAL_CMD, cmd);
+			/* bits 15:14 stay set while the cal step runs */
 			for (i = 0; i < 2000; i++) {
 				tmp = b43_phy_read(dev, B43_NPHY_IQLOCAL_CMD);
-				if (tmp & 0xC000)
+				if (!(tmp & 0xC000))
 					break;
 				udelay(10);
 			}
+			if (i == 2000)
+				b43err(dev->wl, "TX IQ/LO cal step 0x%04x timed out\n",
+				       cmd);
 
 			b43_ntab_read_bulk(dev, B43_NTAB16(15, 96), length,
 						buffer);
@@ -5500,8 +5577,9 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 		last = (dev->phy.rev < 3) ? 6 : 7;
 
 		if (!mphase || nphy->mphase_cal_phase_id == last) {
-			b43_ntab_write_bulk(dev, B43_NTAB16(15, 96), 4, buffer);
-			b43_ntab_read_bulk(dev, B43_NTAB16(15, 80), 4, buffer);
+			/* apply the result: best coeffs (96) -> active (80) */
+			b43_ntab_read_bulk(dev, B43_NTAB16(15, 96), 4, buffer);
+			b43_ntab_write_bulk(dev, B43_NTAB16(15, 80), 4, buffer);
 			if (dev->phy.rev < 3) {
 				buffer[0] = 0;
 				buffer[1] = 0;
@@ -5540,6 +5618,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 
 	b43_nphy_tx_cal_phy_cleanup(dev);
 	b43_ntab_write_bulk(dev, B43_NTAB16(7, 0x110), 2, save);
+	b43_nphy_tx_cal_radio_cleanup(dev);
 
 	if (dev->phy.rev < 2 && (!mphase || nphy->mphase_cal_phase_id == last))
 		b43_nphy_tx_iq_workaround(dev);
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
