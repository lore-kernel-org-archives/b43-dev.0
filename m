Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71D2606A886
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rDHy+ovi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ds6D1nem
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OwCpANhVkhOsKee1DYZHxstRSdyqk7BQ5thyAXQE+kQ=; b=rDHy+oviZud7gCb0qS332u+gGy
	IPh9d3qZHuj9cQS2/kuo0dfVkDhlMEEauwwaH7sJzc7fixGBWMtOBwfz74AIyJAkkNlIVW4LFAuIr
	coIHsQIIW0j+2oW85ooYscCaEygcIvpuk8C7K5zWwzjGBx8yG4Nshj+oLeEyaO7fA7E0BORvMwG/D
	H3eXD3NA96ZHX2cDY9nI7LteTOeyLrIoaCOYl20Y7vo8yTyRYLJQYWjXcls2StE3OIKm5gUHzxWJK
	gOzWXM7DqauGAyBE+Gn1BrwfZK4lSgTneGwDEa8RLEQMgAQKAXlMpa/GQaM2HWrTopG7TasURCfPo
	1W8SXKgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2M-0000000AoNj-1YeL;
	Thu, 12 Nov 2026 17:56:38 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2G-0000000AoKB-1Zym
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:33 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-490c3ae81d3so19423f8f.2
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506190; x=1795110990; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aNHuPwr/5ZmuTbGsKeXNQRFSuudppjRTFk2DZCwSS8E=;
        b=ds6D1nemONRFOgQSd91zZAhm0dkmIrKWzP3+OsmPaG35ydrsvVbxr7yDbfU1ySKRvy
         yT5ul+leC9B7uexxORXBnEOl7E4b8uxqMUhiN/VeJTIPKmvk2L2a2UWK0kRIUmTzzGTy
         HMfcuvGRSqW6xYdADvEaOT+CY++t7aK6qHGbcoODMLej0vCQOpmvL4P60Q/CI9GO2uAK
         GfGcyQg/wmHjzfq7WpVeEcuNQfryaDiI9MHdxqOeT3EvZKbpxPsx8wrMX+XQk38URKnt
         9yITdv7ABhjXBgm9Ol3OBi4dbUyxQNJFG0vJ+brtL3knkEl3WUVCs8dF6OR3i3i1NlRs
         g6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506190; x=1795110990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aNHuPwr/5ZmuTbGsKeXNQRFSuudppjRTFk2DZCwSS8E=;
        b=BlQwzdzAZXCH4Pc/a9BkZMR0XoDnx8ZcDMZISK8JlfNhNP5CpH/SkV0PP7tyQ7eD52
         HsRxv3c6yWNQm0NWIDQ7WQS/RroqHVBuxYMfnci1YbfE3KeUhcy5yDmFYdg5gdTtujCQ
         aUlMOyxrbQOZ7rXGWspjc+Kyt/Hn/J7AEmf2Brec8lkR1Cl8mPRochWSi9NWukD1OQdv
         Y8eFrF4GVFSSlXFCyHXSGq7VXR28lqVreAE3bBuvhODfftmRNVZ3w4OrQDznu2JIxmPS
         S/5LG0Gd7+SNX3sXASYRzOhruxM/X8HTsgYI3ZubV5yu93asC36ipVSFIP3+hgOhJk4q
         UjJA==
X-Forwarded-Encrypted: i=1; AL+hErFpU3nQ7QYIC+ed7YE3/e3aKyB/JdYxeTVpCY12+VRaYRi2TOYqlae1cNyviZsuEisb0mYZKnUn@lists.infradead.org
X-Gm-Message-State: APuU4Z+VxEGlDEN/RW5NG/K5Qn1/QaZGzreDuyVF6J8ffI1TlH2KVhk5
	C/3V64QrfXSiVv8oFreGRZ8dQm8TnOARjJ0nd4jjkTR/rWlp2PCmSIq/
X-Gm-Gg: AYBFou04jV2YOpwugpybEnxhnRJVHIS0JB/qPXzx9e5LVH6HmDWsL6l9H2nobuNI0JQ
	EDJsuGIii+D9q4pmBAKbY629p5tQpPzVMTe1cG1U+BA1E23kof6Nk0xtFODDIFTRb3u3xEYk/gh
	R7PjzAaTz1O6MIHrKaNJeYb7cP9qoQBCCzXRipg1jRfva/c4rZ28tTwn196cHr+fLdi42pN1Ghz
	xXCTBiDtIMrKf8ILGibyDTwBaqDlQYW6Hv1gCDiS7r6TUJlTasBK1a1DCRCltRoTofdhFwoayCI
	IC4FfArT/FON1mwO/a/KjAE3t58UmaJ0upqQNw61ysUYHpD4OnX7xHo+yuoHxOe0+4hHJelCNBN
	HDECP9rCrvIz0B29rFxVMcVWDu6pc7uFZxz8jl137VzLu08SBmIuDRT8386/QdMWGZxxd9vdE8O
	UWIQSnh4way/bZ15kHGVZ511FFiTJU9dX8UQTi+8fQWYTiaXULSz3c49Jn86bQNLExb2+zmxXTa
	jaMAUXzyCXmev5bkELuLo+b/nulf3nINwWBsF2zwlKKvX+VMaberRKSfAFTvyxrBzL1Dy8suH1T
	Jv5hjER2KXJrEbcFXWFi4IDD6Dp050EW1BJMNoa/1FsS+J5f/BYSbcH5oOgJHQG2xZumsD7+K4Z
	kU0vbF8/Dh09IIsCBv8DQuHpw64SdONB4Ov3Z2FPBJSClp3OMf9GJRRgTe4YRqswD7RuCdstDRW
	9mWSl4PoEO8vO4qyC7J4CPM+jmMSEqjMIFEbqQVnQOpA==
X-Received: by 2002:a5d:5f91:0:b0:48e:6357:c76d with SMTP id ffacd0b85a97d-49c714a2dbfmr280426f8f.21.1794506190259;
        Thu, 12 Nov 2026 09:56:30 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d66esm438408f8f.57.2026.11.12.09.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:29 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 3/3] wifi: b43: address match table, templates and beacons for the AC microcode
Date: Thu, 12 Nov 2026 18:56:24 +0100
Message-ID: <20261112175624.40547-4-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175624.40547-1-gonsolo@gmail.com>
References: <20261112175624.40547-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095632_465601_5D80B0BF 
X-CRM114-Status: GOOD (  19.26  )
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

The microcode of revisions 784 and above lays out several things
differently:

 - the address match table is in the RCMTA object memory, 8 bytes per
   entry (MAC[0..3], then MAC[4..5] and the attributes); the vendor driver
   uses entry 63 for its own address and 62 for the BSSID,
 - the templates in template RAM: 0x30 holds BSSID, MAC, BSSID, 0x48 the
   MAC, plus the default null frame at 0x2c and a header at 0,
 - the ACK/CTS PHY control word and the antenna selection use the AC
   PhyTxControlWord_0 format,
 - the two beacon template slots are at 0x200 and 0x480, and the beacon's
   PHY TX control words are at SHM 0xcc, 0xce and 0xd0 instead of the
   legacy BEACPHYCTL word.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 141 ++++++++++++++++++++---
 1 file changed, 126 insertions(+), 15 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 205d429..da7e420 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -662,6 +662,26 @@ void b43_macfilter_set(struct b43_wldev *dev, u16 offset, const u8 *mac)
 	if (!mac)
 		mac = zero_addr;
 
+	if (b43_ucode_is_ac(dev)) {
+		/*
+		 * rev 40+ ucode: address match table (AMT) in RCMTA object
+		 * memory, 8 bytes per entry: MAC[0..3], MAC[4..5] | attr << 16.
+		 * the vendor driver uses entry 63 for its own MAC and 62 for
+		 * the BSSID.
+		 */
+		bool self = offset == B43_MACFILTER_SELF;
+		u16 idx = self ? 0x3f : 0x3e;
+		u16 attr = is_zero_ether_addr(mac) ? 0 :
+						     (self ? 0x8008 : 0x8006);
+
+		b43_shm_write32(dev, B43_SHM_RCMTA, idx * 2,
+				mac[0] | (mac[1] << 8) | (mac[2] << 16) |
+				((u32)mac[3] << 24));
+		b43_shm_write32(dev, B43_SHM_RCMTA, idx * 2 + 1,
+				mac[4] | (mac[5] << 8) | ((u32)attr << 16));
+		return;
+	}
+
 	offset |= 0x0020;
 	b43_write16(dev, B43_MMIO_MACFILTER_CONTROL, offset);
 
@@ -689,6 +709,39 @@ static void b43_write_mac_bssid_templates(struct b43_wldev *dev)
 
 	b43_macfilter_set(dev, B43_MACFILTER_BSSID, bssid);
 
+	if (b43_ucode_is_ac(dev)) {
+		/*
+		 * rev 40+ ucode (as wl): template RAM 0x30 = BSSID, MAC, BSSID;
+		 * 0x48 = MAC. Also the vendor driver's default null-frame
+		 * template at 0x2c and the header at 0x0.
+		 */
+		static const u32 hdr0[] = {
+			0x00000094, 0x75749000, 0x00007776,
+			0x00000000, 0xffff0005, 0x0000ffff
+		};
+		static const u32 null2c[] = {
+			0x00e0040a, 0x0048beef, 0xff000005, 0xff02ff01,
+			0x01181000, 0x10000302, 0xf3f2f118, 0x0000ccbb
+		};
+		u8 blk[20] = { 0 };
+		u8 m[8] = { 0 };
+
+		for (i = 0; i < ARRAY_SIZE(hdr0); i++)
+			b43_ram_write(dev, 0x00 + i * 4, hdr0[i]);
+		for (i = 0; i < ARRAY_SIZE(null2c); i++)
+			b43_ram_write(dev, 0x2c + i * 4, null2c[i]);
+		memcpy(blk, bssid, ETH_ALEN);
+		memcpy(blk + 6, mac, ETH_ALEN);
+		memcpy(blk + 12, bssid, ETH_ALEN);
+		for (i = 0; i < sizeof(blk); i += 4)
+			b43_ram_write(dev, 0x30 + i,
+				      get_unaligned_le32(blk + i));
+		memcpy(m, mac, ETH_ALEN);
+		b43_ram_write(dev, 0x48, get_unaligned_le32(m));
+		b43_ram_write(dev, 0x4c, get_unaligned_le32(m + 4));
+		return;
+	}
+
 	memcpy(mac_bssid, mac, ETH_ALEN);
 	memcpy(mac_bssid + ETH_ALEN, bssid, ETH_ALEN);
 
@@ -1657,19 +1710,56 @@ static void b43_write_beacon_template(struct b43_wldev *dev,
 				  len, ram_offset, shm_size_offset, rate);
 
 	/* Write the PHY TX control parameters. */
-	antenna = B43_ANTENNA_DEFAULT;
-	antenna = b43_antenna_to_phyctl(antenna);
-	ctl = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_BEACPHYCTL);
-	/* We can't send beacons with short preamble. Would get PHY errors. */
-	ctl &= ~B43_TXH_PHY_SHORTPRMBL;
-	ctl &= ~B43_TXH_PHY_ANT;
-	ctl &= ~B43_TXH_PHY_ENC;
-	ctl |= antenna;
-	if (b43_is_cck_rate(rate))
-		ctl |= B43_TXH_PHY_ENC_CCK;
-	else
-		ctl |= B43_TXH_PHY_ENC_OFDM;
-	b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_BEACPHYCTL, ctl);
+	if (b43_ucode_is_ac(dev)) {
+		/*
+		 * rev 40+ ucode (wlc_beacon_phytxctl, core_rev > 0x27): the
+		 * beacon slot's PhyTxControlWord_0/1/2 live at SHM 0xcc/ce/d0,
+		 * not the legacy BEACPHYCTL word (0x54, unused here). Compute
+		 * them the same way as a normal AC TX descriptor rate entry
+		 * (b43_generate_txhdr_ac): CCK/OFDM bit, core mask, PLCP rate
+		 * index; no sub-band (this is 20 MHz single-channel only).
+		 */
+		static const u8 cck[] = { B43_CCK_RATE_1MB, B43_CCK_RATE_2MB,
+					  B43_CCK_RATE_5MB, B43_CCK_RATE_11MB };
+		static const u8 ofdm[] = {
+			B43_OFDM_RATE_6MB,  B43_OFDM_RATE_9MB,
+			B43_OFDM_RATE_12MB, B43_OFDM_RATE_18MB,
+			B43_OFDM_RATE_24MB, B43_OFDM_RATE_36MB,
+			B43_OFDM_RATE_48MB, B43_OFDM_RATE_54MB
+		};
+		bool is_ofdm = b43_is_ofdm_rate(rate);
+		const u8 *tbl = is_ofdm ? ofdm : cck;
+		unsigned int n = is_ofdm ? ARRAY_SIZE(ofdm) : ARRAY_SIZE(cck);
+		unsigned int idx = 0;
+		u16 phy0 = (is_ofdm ? 1 : 0) | 0x0004 | (1 << 6);
+
+		while (idx < n && tbl[idx] != rate)
+			idx++;
+		if (idx == n)
+			idx = 0;
+		b43_shm_write16(dev, B43_SHM_SHARED, 0xcc, phy0);
+		b43_shm_write16(dev, B43_SHM_SHARED, 0xce, 0);
+		b43_shm_write16(dev, B43_SHM_SHARED, 0xd0, idx);
+	} else {
+		antenna = B43_ANTENNA_DEFAULT;
+		antenna = b43_antenna_to_phyctl(antenna);
+		ctl = b43_shm_read16(dev, B43_SHM_SHARED,
+				     B43_SHM_SH_BEACPHYCTL);
+		/*
+		 * We can't send beacons with short preamble. Would get PHY
+		 * errors.
+		 */
+		ctl &= ~B43_TXH_PHY_SHORTPRMBL;
+		ctl &= ~B43_TXH_PHY_ANT;
+		ctl &= ~B43_TXH_PHY_ENC;
+		ctl |= antenna;
+		if (b43_is_cck_rate(rate))
+			ctl |= B43_TXH_PHY_ENC_CCK;
+		else
+			ctl |= B43_TXH_PHY_ENC_OFDM;
+		b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_BEACPHYCTL,
+				ctl);
+	}
 
 	/* Find the position of the TIM and the DTIM_period value
 	 * and write them to SHM. */
@@ -1726,20 +1816,28 @@ static void b43_write_beacon_template(struct b43_wldev *dev,
 static void b43_upload_beacon0(struct b43_wldev *dev)
 {
 	struct b43_wl *wl = dev->wl;
+	/*
+	 * rev 40+ ucode keeps the two beacon template slots at RAM 0x200 and
+	 * 0x480 (wlc_bmac_write_hw_bcntemplates, core_rev > 0x27), not the
+	 * legacy 0x68/0x468. Length (SHM 0x18/0x1a) and the valid bits (MMIO
+	 * MACCMD, unchanged) are the same on both.
+	 */
+	u16 base = b43_ucode_is_ac(dev) ? 0x200 : B43_SHM_SH_BT_BASE0;
 
 	if (wl->beacon0_uploaded)
 		return;
-	b43_write_beacon_template(dev, B43_SHM_SH_BT_BASE0, B43_SHM_SH_BTL0);
+	b43_write_beacon_template(dev, base, B43_SHM_SH_BTL0);
 	wl->beacon0_uploaded = true;
 }
 
 static void b43_upload_beacon1(struct b43_wldev *dev)
 {
 	struct b43_wl *wl = dev->wl;
+	u16 base = b43_ucode_is_ac(dev) ? 0x480 : B43_SHM_SH_BT_BASE1;
 
 	if (wl->beacon1_uploaded)
 		return;
-	b43_write_beacon_template(dev, B43_SHM_SH_BT_BASE1, B43_SHM_SH_BTL1);
+	b43_write_beacon_template(dev, base, B43_SHM_SH_BTL1);
 	wl->beacon1_uploaded = true;
 }
 
@@ -3237,6 +3335,17 @@ static void b43_set_phytxctl_defaults(struct b43_wldev *dev)
 {
 	u16 ctl = 0;
 
+	if (b43_ucode_is_ac(dev)) {
+		/*
+		 * rev 40+ ucode: AC PhyTxControlWord_0 format (CCK, core 0), as
+		 * the vendor driver sets it. 0x54/0x188 mean something else
+		 * here.
+		 */
+		b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_ACKCTSPHYCTL,
+				0x0040);
+		return;
+	}
+
 	ctl |= B43_TXH_PHY_ENC_CCK;
 	ctl |= B43_TXH_PHY_ANT01AUTO;
 	ctl |= B43_TXH_PHY_TXPWR;
@@ -3252,6 +3361,8 @@ static void b43_mgmtframe_txantenna(struct b43_wldev *dev, int antenna)
 	u16 ant;
 	u16 tmp;
 
+	if (b43_ucode_is_ac(dev))
+		return;
 	ant = b43_antenna_to_phyctl(antenna);
 
 	/* For ACK/CTS */

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
