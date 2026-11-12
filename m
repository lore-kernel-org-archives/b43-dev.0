Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C52C606A883
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r2dtl+z7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cXKgZBP5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BJu11ggxqNyXq+QHNEuG75qazs9TYBJqPgLEHvWlULw=; b=r2dtl+z7xEvcXT0M4oVV/JAAH5
	nPVHhdpv4XNhkwdZGZY5fsDpWzv/HgwkFu3omGHfIR1TQs8fYrGGVC8Be/HUa5fok+dYPl2V6gbh2
	Pt5LxrPYId5hgfXMsd8tsvTscXMxHyRmJSzExfsMD5YoiRWDy8DBhBB8lkkyCEml3I3d9Wgh4EsUI
	bL6JapZJoESZX35NVEGw3gYC+lFZF3pabmzZiK9ju634RTZ6v9ggvGanx2cRwBOxWz72VyIzC2gqa
	yheW/dL+6CTvzanM+aj+PIrqhk0CTPUBFQLYHqVBcx/LWjnDh0A65o/1wEs1Bw6PecwfNkI9abRLU
	0gv2xRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2M-0000000AoNH-0Bwe;
	Thu, 12 Nov 2026 17:56:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2F-0000000AoJg-1sfI
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:33 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4918c2d727fso22685f8f.3
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506189; x=1795110989; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rxPPAbo/wpfsLoPb8T1Wkn8fcPbXO27dt+TundwHSb0=;
        b=cXKgZBP5pj0r6yBpixFFAAg90mDXhXUFL2SuztrwrNOn8CqtxkyLAIFFqNPuDzkLf7
         iPHJz3gc1IVZvcRYBVSkIz7THdJyknG5/bHjC2kvY7M4a8BB6QEalCAz2Sr7MrFJKI6q
         RdbFdRSV3bQ3hMjOr7Xmh841ClL3VsM0Kz/fJbsYQ9GUVcokgFfpLnU57ZqUsFRmG++B
         V/4Cwim3jyMnuRZ+dcFH1JF3f6iKGuoTgphdlg6I2habQe5ReDKyAPNl2ReN4vmK/obi
         pZT1f3SqIYF5PqHkUEhbqGAPHDRa69nPL6YtccSgduFzL5pXesXDKuE0RWTq/F7p4hK8
         j/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506189; x=1795110989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rxPPAbo/wpfsLoPb8T1Wkn8fcPbXO27dt+TundwHSb0=;
        b=M7md/bfOp35HGZTmx40/rGzdR0GS3cwl2xIfucZhBqKZNlRBuQK8SoFWMan9r98K+1
         RInnUjT0Y6K9T7xIHX4CdfwUtcpoJozInoiS7JOxsHJQufJuqEJGpgu8dsj+jj+V+FVc
         uQP9HbvKpvzp2Em9AQ9VU0jSinRbPdTmmcpizsvEL/zj+PWfSnUsYmBvHz5XQrwLCS+c
         9pvPTZEb3tXOTFy0//lcKLk5RY/6+i539rt6IGAHeCOk4QuGn4cH7G9JfMYAMLzPcPzw
         WT62UvONfGistR2Am1RNpfwwc3TIrHOd+jxdhyS20Is0vLcHnLdVG2Y1oqyLdZk9XTmh
         gT3Q==
X-Forwarded-Encrypted: i=1; AL+hErGzSb3TMDfdo2N1iegMct6twLQveN52dh4CsmLKNc8mnYQrsRzkD6xH9O2gWcSh+I1Iv2ps/R/2@lists.infradead.org
X-Gm-Message-State: APuU4Z8DdSIzEClKpLWky1U3DKk6c8PNQRiB9KQMwAbJyu7qjpOtks2R
	qiTmJJ5Hlxgzm7haMKCvdl6CMW0uwDt9jzJxgw/57IcTNqgCNefkbKeD
X-Gm-Gg: AYBFou1MGBzMFv/zh8o/gzQdsqrq9dzkvSFG5pn5HvWggae+dxL9AsoZT/eBmbFlC+P
	CW5fNVe7VNazAPtwzZ2AlYtPZNrkVgWQYmMqkvBLTJ8i6PyeM9UyBUxS13PIjvoumxbDeP0byK5
	POWacO+qfNgrRJwVYODhpZ+rUkPZKa4NyjX8O9etnXIitNPgHCZUb0VLF9o8EtVbew9H6LZD+TO
	4o3+qpNdoM+qn1S2BWXKVsxnXfX4ghDrqOCj5VP+Uw1/OWFT6ruZnhHMVMI2iYV8PiRlh/JbLTx
	DRy3XVvyXOSJu2PvrJ6s6hh6zIeDDdBwphZR87nINddh2QUd7oP1KVAa3wVOzQaHdhkE2GZzM8Z
	DOtJcRC5jQG6LzD3pS7mlNJBTvCG9oTP2mLnyLXCFgHzx5hg/PvyOcbksAj0X7akJnxE7Lp59B5
	iTBD2DgNJvujPBQ1lbtEbz5GcDLgyKjPjwSM/Luw0nRQ8OWV8nbkV+AindngbvWXtPlAoQ4XHeq
	MSIoNZCkmxhgVM4rc6N3topJKyb/CNUkdyZfEZN0XX7nXZzgH9DdZWoIkWp6KCrnQa/JEx+eyB1
	4EN3YpNADTFlulxBek7yY2pKVvNnhX3Xr2Jq4TPW9IMqKujYK7YrZ5mdjIs0AmoiOtD7ncvpFoT
	eEE00Grcqcv7KQaFCvp8RK21k86AHCNbyDmN7J6LnKOt2xb3VuIKh2z4YCEHU5VpZRxrVGCZTKC
	Qk9XCusx2K+PTBUa3vUN+4qJ40GPnNyKB7h4AlVHNCf69yUKSShyGSpcj09hlXk0A=
X-Received: by 2002:a5d:5f09:0:b0:48e:6f76:de9d with SMTP id ffacd0b85a97d-49c72ba71fdmr253358f8f.46.1794506189143;
        Thu, 12 Nov 2026 09:56:29 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d66esm438408f8f.57.2026.11.12.09.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:28 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 2/3] wifi: b43: MAC core setup for core revisions 40 and 42
Date: Thu, 12 Nov 2026 18:56:23 +0100
Message-ID: <20261112175624.40547-3-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175624.40547-1-gonsolo@gmail.com>
References: <20261112175624.40547-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095631_583176_04EF090E 
X-CRM114-Status: GOOD (  24.23  )
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

The core revisions 40 and 42 of the BCM4352 and BCM4360 need these
differences from the older cores:

 - PHY reset: the reset is asserted with the clock forced and released
   with the clock free, in the order the vendor driver uses.
 - GPIOs: the pins are host driven with GPIO1 and GPIO2 high. This is the
   pattern of the MacBookAir6,1 (front end control); other boards may
   need other values.
 - The template and TX FIFOs are carved out of the MAC memory and the TX
   queue table is set up, because the microcode does not size them.
 - MACCTL is written without SHM_ENABLED, which the vendor driver never
   sets on this core.
 - The RX interrupt lazy timeout (register 0x100) is set so that an
   interrupt is raised after every frame.

The microcode (revision 784 and above, b43_ucode_is_ac()) has no key
table pointer at the legacy KTP word, it reads 0, so b43_security_init()
must not clear the "key table": that zeroed SHM 0x000-0x3a0 (rate maps,
ACK/CTS PHY control, microcode state) on every core init.
b43_op_set_key() returns -EOPNOTSUPP, mac80211 does the crypto in
software.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/b43.h  |   8 ++
 drivers/net/wireless/broadcom/b43/main.c | 101 ++++++++++++++++++++++-
 2 files changed, 108 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
index 80b299b..92227ff 100644
--- a/drivers/net/wireless/broadcom/b43/b43.h
+++ b/drivers/net/wireless/broadcom/b43/b43.h
@@ -1030,6 +1030,14 @@ static inline void b43_device_disable(struct b43_wldev *wldev,
 	wldev->dev->device_disable(wldev->dev, core_specific_flags);
 }
 
+/* Microcode of the AC cores (revisions 784, 832 and 928). Valid once the
+ * microcode is loaded; only revision 832 has been tested.
+ */
+static inline bool b43_ucode_is_ac(struct b43_wldev *dev)
+{
+	return dev->fw.rev >= 784;
+}
+
 static inline u16 b43_read16(struct b43_wldev *dev, u16 offset)
 {
 	return dev->dev->read16(dev->dev, offset);
diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index e2e8ca0..205d429 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -1235,6 +1235,24 @@ static void b43_bcma_phy_reset(struct b43_wldev *dev)
 {
 	u32 flags;
 
+	if (b43_is_ac_core(dev)) {
+		flags = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
+		flags |= B43_BCMA_IOCTL_PHY_RESET |
+			 B43_BCMA_IOCTL_PHY_BW_20MHZ | BCMA_IOCTL_FGC |
+			 B43_BCMA_IOCTL_PHY_CLKEN;
+		bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+		udelay(2);
+		bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+		flags &= ~(B43_BCMA_IOCTL_PHY_RESET | BCMA_IOCTL_FGC |
+			   B43_BCMA_IOCTL_PHY_CLKEN);
+		bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+		udelay(1);
+		flags |= B43_BCMA_IOCTL_PHY_CLKEN;
+		bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+		udelay(1);
+		return;
+	}
+
 	/* Put PHY into reset */
 	flags = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
 	flags |= B43_BCMA_IOCTL_PHY_RESET;
@@ -2914,6 +2932,18 @@ static int b43_gpio_init(struct b43_wldev *dev)
 	switch (dev->dev->bus_type) {
 #ifdef CONFIG_B43_BCMA
 	case B43_BUS_BCMA:
+		if (b43_is_ac_core(dev)) {
+			struct bcma_drv_cc *cc = &dev->dev->bdev->bus->drv_cc;
+
+			/*
+			 * the vendor driver keeps the pins host-driven with
+			 * GPIO1+2 high (front-end control on MacBookAir6,1).
+			 */
+			bcma_chipco_gpio_control(cc, mask | 0xa7, 0);
+			bcma_chipco_gpio_out(cc, 0xa7, 0x06);
+			bcma_chipco_gpio_outen(cc, 0xa7, 0xa7);
+			break;
+		}
 		bcma_chipco_gpio_control(&dev->dev->bdev->bus->drv_cc, mask, set);
 		break;
 #endif
@@ -3245,6 +3275,53 @@ static void b43_chip_exit(struct b43_wldev *dev)
 /* Initialize the chip
  * https://bcm-specs.sipsolutions.net/ChipInit
  */
+/*
+ * rev 40+ MAC: carve template/TX FIFOs out of MAC memory and set up the TX
+ * queue table (as the vendor driver does it).
+ */
+
+static void b43_ac_fifo_init(struct b43_wldev *dev)
+{
+	static const u8 fifos[] = { 7, 0, 1, 2, 3, 4, 5 };
+	u16 total = (b43_read32(dev, 0x15c) >> 1) & 0xffc;
+	const u16 tpl = 0x2a, fifo_sz = 0x20, blk = 0xb;
+	unsigned int i;
+	int t;
+
+	b43_write16(dev, 0x542, total);
+	b43_write16(dev, 0x540, 5);
+	for (t = 0; t < 20 && (b43_read16(dev, 0x540) & 1); t++)
+		udelay(10);
+	for (i = 0; i < ARRAY_SIZE(fifos); i++) {
+		if (fifos[i] == 7) {
+			b43_write16(dev, 0x54a, tpl);
+			b43_write16(dev, 0x54c, tpl);
+			b43_write16(dev, 0x520, tpl);
+			b43_write16(dev, 0x54e, ((tpl - 4) << 8) | tpl);
+		} else {
+			b43_write16(dev, 0x54a, total - tpl);
+			b43_write16(dev, 0x54c, fifo_sz);
+			b43_write16(dev, 0x520, blk);
+			b43_write16(dev, 0x54e,
+				    ((blk * 2 - 4) << 8) | (blk * 2));
+		}
+		b43_write16(dev, 0x550, 0x740c);
+		b43_write16(dev, 0x548, fifos[i] | 0x10);
+	}
+	for (i = 0; i < 0x2a; i++) {
+		u16 end = min_t(u16, i + 2, 0x29);
+
+		b43_write16(dev, 0x534, i);
+		b43_write16(dev, 0x536, end);
+		b43_write16(dev, 0x532, end + 1 - i);
+		b43_write16(dev, 0x530, (i << 4) | 0x8007);
+		for (t = 0; t < 20 && b43_read16(dev, 0x530); t++)
+			udelay(10);
+	}
+	b43dbg(dev->wl, "AC FIFO init: total %#x, 0x540=%04x 0x530=%04x\n",
+	       total, b43_read16(dev, 0x540), b43_read16(dev, 0x530));
+}
+
 static int b43_chip_init(struct b43_wldev *dev)
 {
 	struct b43_phy *phy = &dev->phy;
@@ -3253,7 +3330,10 @@ static int b43_chip_init(struct b43_wldev *dev)
 	u16 value16;
 
 	/* Initialize the MAC control */
-	macctl = B43_MACCTL_IHR_ENABLED | B43_MACCTL_SHM_ENABLED;
+	macctl = B43_MACCTL_IHR_ENABLED;
+	/* The vendor driver never sets SHM_ENABLED on AC-PHY cores. */
+	if (!b43_is_ac_core(dev))
+		macctl |= B43_MACCTL_SHM_ENABLED;
 	if (dev->phy.gmode)
 		macctl |= B43_MACCTL_GMODE;
 	macctl |= B43_MACCTL_INFRA;
@@ -3275,6 +3355,9 @@ static int b43_chip_init(struct b43_wldev *dev)
 	if (err)
 		goto err_gpio_clean;
 
+	if (b43_is_ac_core(dev))
+		b43_ac_fifo_init(dev);
+
 	/* Turn the Analog on and initialize the PHY. */
 	phy->ops->switch_analog(dev, 1);
 	err = b43_phy_init(dev);
@@ -3325,6 +3408,10 @@ static int b43_chip_init(struct b43_wldev *dev)
 	b43_write32(dev, B43_MMIO_DMA3_IRQ_MASK, 0x0001DC00);
 	b43_write32(dev, B43_MMIO_DMA4_IRQ_MASK, 0x0000DC00);
 	b43_write32(dev, B43_MMIO_DMA5_IRQ_MASK, 0x0000DC00);
+	if (b43_is_ac_core(dev)) {
+		/* intrcvlazy0: raise the RX interrupt after every frame. */
+		b43_write32(dev, 0x100, 1 << 24);
+	}
 
 	b43_mac_phy_clock_set(dev, true);
 
@@ -3529,6 +3616,15 @@ error:
 
 static void b43_security_init(struct b43_wldev *dev)
 {
+	/*
+	 * rev 40+ (AC) ucode has no key table pointer at the legacy KTP word:
+	 * it reads 0 there, so clearing the "key table" zeroed SHM 0x000-0x3a0
+	 * (rate maps, ACK/CTS PHY control, ucode state) on every core init. AC
+	 * has no hardware crypto support yet, so leave the key memory alone.
+	 */
+	if (b43_ucode_is_ac(dev))
+		return;
+
 	dev->ktp = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_KTP);
 	/* KTP is a word address, but we address SHM bytewise.
 	 * So multiply by two.
@@ -4178,6 +4274,9 @@ static int b43_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 
 	if (modparam_nohwcrypt)
 		return -ENOSPC; /* User disabled HW-crypto */
+	if (b43_ucode_is_ac(wl->current_dev))
+		/* no AC key table yet, see b43_security_init */
+		return -EOPNOTSUPP;
 
 	if ((vif->type == NL80211_IFTYPE_ADHOC ||
 	     vif->type == NL80211_IFTYPE_MESH_POINT) &&

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
