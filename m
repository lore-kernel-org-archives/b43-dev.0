Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666B606A336
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W+sFpbjc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=u7eMQ6pS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8MisbU8HD5686rhol2gxEVSoA2/gghZ6hprizp9Fd7c=; b=W+sFpbjc4xjOskVMZpBTc1mFvj
	7LRO8Eyeb/SSyI8O36vH5sogE21od15GgSf4u1wwZh8+Clwy/Sa7xJOR5xj3ywo1qcsoWm/OSx2ZZ
	gl7oq1BOzTxYG1upNb7E8RK2GJRkT+ee7R8bjH2y1c2/gzehAAw/vGKwmMDz60W1OCU0JDu/QRzFu
	pDqeACuMdF3PP5Y6bE9z5izCuPFsBVRY3qKyZkp+kDxcRvUTmxkWWPrnHyF6LRdi1YQ5xlKG3Z1B9
	xdlqsFdVY1QgDw2IixMfDhepDMRXDF/zbTiWGRqLnyFRq4KcmfhccWKsYd5RsP/tpjIB7nlVYvo4k
	MsqiDTvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHf-0000000DfWN-3WeE;
	Fri, 06 Nov 2026 21:15:39 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHd-0000000DfUV-3N0w
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:39 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4ac95761c85so7974225e9.2
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999736; x=1794604536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+4ehktDMYHwu9bJdzFTo4QfdTRsY0mtmI49Ie+yd+jU=;
        b=u7eMQ6pS+NCaOfEFZ36Lkb7p3dd+rPfsIJ+8CzIZtMyTu7ZCNNk+opVEuxbwgeGuex
         iyBFFukvDCr3t7JFhGAaeVHEtL5NdtDnkIBeilRQ0Agu24OQ7pNro6onozWPwFNT7U+h
         eokq4EkMazznFWSvyKzOkLEAhbidPvyVwGg3kJoLXjgfX9VcFRz6/4ZZ/TirRcGg3gN4
         8Ezr6OtAb0H1aMMDnM/CkPxiCOkcukQwJ98v+ymNLt4/KJfH177z9/o4nzSyYyVqYaA2
         JcKlcmexaBf2UGuO9dh6C6HSSHXkDXCLEbsvn3MRHO9mI7G0rkm1MyQihYMOB+cUi2qN
         6mYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999736; x=1794604536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+4ehktDMYHwu9bJdzFTo4QfdTRsY0mtmI49Ie+yd+jU=;
        b=azfk51/cADp0rwPB5jUuIT2cbQcb2uh7vVgxI+4QRjjxEu1ZCdCLXpHTzAO681/tXr
         w6aSM4d5lpc5r09zsU8cwwrWavEW8lzcMpoOFgmiJKzNtanKQAvaY3bu5cx2BugTVBSz
         iK5uQ0vr4sKnZjgNfbdtT+mPC/t9nIE61NYJ8qJ+mUHWhlM4WQSg12AhhifpQsF5Cj6G
         ufCm0RK5WKMTS7CX6ZkK57BSz0lyFr5vWpyfpsgkrXcvBvhWjGTD+khVZib/aDLk4sSb
         YrL295TFpEW5fLod+xtNfTHpkNALmlprqbqdPId7fLMIKVd8bwjznZwItAgYehzSAU3G
         Xxqg==
X-Forwarded-Encrypted: i=1; AKwUvBx91HVTsa4obBVwFxLyek1QoBjOOjc2W5JhaUfKMAowR86cIiQFWBrWKHFf+jP5bvZarTuGDJsm@lists.infradead.org
X-Gm-Message-State: APuU4Z9A9/Ovuuukt8QIqTnCGfdotUZaf/44XEc+np/rAZTvL1WAJj6B
	eLrFT8Ll4qYuRMNNDGPyC7j+vSruAXt4Ncd/bZsgAdKgsEOl7gMEW4O+
X-Gm-Gg: AYBFou1JGssDwPCeHiTadC2QC4Af9myWUtHIp+s6aOjZ/Dr7zW8TZm51y8ILtKJJU7t
	AOvMYcs8Ad3Z5Icw8ajODSZJl3YdtIbmgIfDX1iPIzOmMa1lIJC7mRPD7fV5N8Vi+yXktj2KpEO
	0Ywc9uzIcpVGa19xjj8TnUpU/Z6ZA71G2iLq9TLIPIrQxg8ww3HBZ1DjlteNpxRfm8HzPCkWaOW
	zlnza+v0wYZqQvSboYr7vECrA3Ut0OKgOW2ocX6qfGg+HDvLIECbzqiKwop8touiI3CXM+virnp
	ZqsMfXFkBzs+9s1K0O+7PBOv55FlVFlL5i1nTKJlBv/Uk2BNGEuw7hAgReZAVlgXfh5M88Qb0Wn
	w8AJko60hL6IXCqVmNiSstn8neAzq608FwEn+aI4IayT2YBd1fZzKQ0Q00Ik2GNBYQ2h8EIi7lH
	Awg+ZpKLyeO7cJLoAjVwVEbrcolb6/QyEA7AjXlo/dUOxsuXH0+BYLoOHShxZDjgnCG1UxvKDPi
	W3WpEtXBhSJFcAahDe1UYrtCrjNfKwDP8WC1g+6mPQh8da3HwtbPQBkC9Hj9rTbkQY9rzN0dm3e
	/0kfGfalF/1+7hCGUBT9kvyS7kWYbc2M5jA7CPLa/HSPXpG/HmI=
X-Received: by 2002:a05:600c:1552:b0:4ac:b0b2:fa12 with SMTP id 5b1f17b1804b1-4b6db4a9a1fmr62927835e9.1.1793999735689;
        Fri, 06 Nov 2026 13:15:35 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:35 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 2/5] b43: N-PHY: fix TX IQ/LO calibration
Date: Fri,  6 Nov 2026 22:15:13 +0100
Message-ID: <20261106211516.273791-3-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_131537_883336_2C3B99A2 
X-CRM114-Status: GOOD (  21.03  )
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
Cc: johannes@sipsolutions.net, Luca Casati <luk00casati@gmail.com>, arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
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

With these, on a BCM43228 (N-PHY rev 16, radio 2057 rev 9) the final
coefficients are close to the proprietary wl driver's, though not
equal.

mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch2-iqlo-poll.txt
            https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch2-trsw.txt
            https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch2-coefficients.txt

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 73 +++++++++++++++++++++--
 1 file changed, 68 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index c4e6c1ac0..6b0140f05 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4775,6 +4775,32 @@ static void b43_nphy_tx_cal_radio_setup_rev7(struct b43_wldev *dev)
 	}
 }
 
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
@@ -5033,7 +5059,9 @@ static struct nphy_txgains b43_nphy_get_tx_gains(struct b43_wldev *dev)
 /* https://bcm-v4.sipsolutions.net/802.11/PHY/N/TxCalPhyCleanup */
 static void b43_nphy_tx_cal_phy_cleanup(struct b43_wldev *dev)
 {
-	u16 *regs = dev->phy.n->tx_rx_cal_phy_saveregs;
+	struct b43_phy *phy = &dev->phy;
+	struct b43_phy_n *nphy = dev->phy.n;
+	u16 *regs = nphy->tx_rx_cal_phy_saveregs;
 
 	if (dev->phy.rev >= 3) {
 		b43_phy_write(dev, B43_NPHY_AFECTL_C1, regs[0]);
@@ -5047,7 +5075,37 @@ static void b43_nphy_tx_cal_phy_cleanup(struct b43_wldev *dev)
 		b43_phy_write(dev, B43_NPHY_RFCTL_INTC2, regs[8]);
 		b43_phy_write(dev, B43_NPHY_PAPD_EN0, regs[9]);
 		b43_phy_write(dev, B43_NPHY_PAPD_EN1, regs[10]);
+
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
@@ -5102,7 +5160,8 @@ static void b43_nphy_tx_cal_phy_setup(struct b43_wldev *dev)
 			b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_PA,
 						      0, 3);
 		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 2, 1);
-		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 8, 2);
+		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW,
+					      phy->rev >= 7 ? 2 : 8, 2);
 
 		regs[9] = b43_phy_read(dev, B43_NPHY_PAPD_EN0);
 		regs[10] = b43_phy_read(dev, B43_NPHY_PAPD_EN1);
@@ -5480,10 +5539,13 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 			b43_phy_write(dev, B43_NPHY_IQLOCAL_CMD, cmd);
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
@@ -5500,8 +5562,8 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 		last = (dev->phy.rev < 3) ? 6 : 7;
 
 		if (!mphase || nphy->mphase_cal_phase_id == last) {
-			b43_ntab_write_bulk(dev, B43_NTAB16(15, 96), 4, buffer);
-			b43_ntab_read_bulk(dev, B43_NTAB16(15, 80), 4, buffer);
+			b43_ntab_read_bulk(dev, B43_NTAB16(15, 96), 4, buffer);
+			b43_ntab_write_bulk(dev, B43_NTAB16(15, 80), 4, buffer);
 			if (dev->phy.rev < 3) {
 				buffer[0] = 0;
 				buffer[1] = 0;
@@ -5540,6 +5602,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 
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
