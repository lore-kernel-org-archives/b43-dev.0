Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5761ACD5BAB
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/RiTLfpLs5UJQH5sTzo+egGWZAN9Vhluv+VMiR285o=; b=CxzW3XROEzFVu6
	bve0YigLDtEXn8Yr0/oIDK+1iRbkilZJXbOAvDhXbyLZRP//Fv0vd8q3NR7rE1izoYToTH2nTx+zH
	uyP8nz5f0QGtiwuCJal1hhZjXY+Z5s5fT0jC2RW+LofMLeBswk7JT7iKWVLMYar0JDaanYcYJKm7z
	CwxVK9Ya1FPET00m4rxo6gNmAV17X8g3W7AJSP+Tooin9nkHyn48d1cB8dxn/9iYhzQMwIVFbpIVL
	699EUsyxOb9aVoFEVGYqE6x+Fja4MBrvps+0XK3Me40JBBUli7Q51GpGIJDdGhxoXKuhkxWILiD2H
	ijWbTkyZDu5MeUhqP1Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGU6-0000000FgzY-3uzN;
	Sun, 24 May 2026 21:35:46 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGU4-0000000FgSx-3TFT
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:35:46 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGU4wsBoHwf0DRGU4wFAUo; Sun, 24 May 2026 23:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658544; bh=STmUpo43UaZjqQlIEne12bBwKZYpAXO6nyF1WrjjbAc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=GXCRO8N1Bqh5Rw6+K0Lk1cg1EuC2hzd+Noa/oZLg98pUm4QXDELipqwwDQWZHru57
	 rMQ/shAyUV52vEB9kMLmE9hWjSueg3NBKy30RG/G1uXgohIGFtFADEXWyK/7s9cAJl
	 dZYQn7mNyvxgzRo7F0EFcEREcVWjBXNFh7j2bFNEbxTf9eS+R8JnewfRatKMhmKrc8
	 kEt9YomX17nnoL803XpNB4f0cdVLZs8zjE9dI0K+OhEUq32GSGfajarHHB/PBlAit4
	 O8H6W5CCpe8ON6R8QASdpk1Nvhdaw3mvXmFQ3t9vbT3/FNnceR8XyJVBJSEMl/cwaP
	 rQj0zJ1PF6+RQ==
Date: Sun, 24 May 2026 23:35:43 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233543.2ff6b55f@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfJge7a7RX9yX7YjLmGqyYiWMCGv2zYwRXnyZvkJYtDiGbxabYNQ0tg+mOHxr4IUX+y2zAhQFez97H1paPAN9z+aur7GqVv2yxBoNcPCZ/29qkf+jPZrj
 2JuTzVjsus0udAbovq3mmBk+d9lvMoOQSHvieOMYXIxp1DkC7j65RSywZL+dkJU+HpQCvlxXhptTqaAyDjERcROIRy1lIDUx2Nn2GZvYBb8y0QHdmjUdLfCY
 qgpb6BXGq1XxuSK6PS2OK3XYAxcfXTQpHIkGCnrs0Lo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143545_031092_DE07BA06 
X-CRM114-Status: GOOD (  11.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org


Add the 2.4 GHz channel info table for N-PHY rev 8 paired with
radio 2057 rev 8 and wire it to the existing dispatcher in
r2057_get_chantabent_rev7().

The dispatcher's case 8 currently handles radio_rev == 5 only.
For radio_rev == 8 both output pointers stay NULL,
b43_nphy_set_channel() returns an error and channel switch to
the default channel fails.

The new b43_nphy_chantab_phy_rev8_radio_rev8[] is 14 entries
covering the standard 2.4 GHz channel set (2412..2472 in 5 MHz
steps, plus 2484 for channel 14).

Values extracted from an MMIO dump of the proprietary Broadcom wl
driver running on BCM6362 silicon (wl driver 6.30.102.7).

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/radio_2057.c | 106
+++++++++++++++++++++++++ 1 file changed, 106 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/radio_2057.c
b/drivers/net/wireless/broadcom/b43/radio_2057.c index
9f693d92b..e761f899b 100644 ---
a/drivers/net/wireless/broadcom/b43/radio_2057.c +++
b/drivers/net/wireless/broadcom/b43/radio_2057.c @@ -445,6 +445,109 @@
static const struct b43_nphy_chantabent_rev7_2g
b43_nphy_chantab_phy_rev17_radio }, };
 
+/* Extracted from MMIO dump of 6.30.102.7 */
+static const struct b43_nphy_chantabent_rev7_2g
b43_nphy_chantab_phy_rev8_radio_rev8[] = {
+	{
+		.freq			= 2412,
+		RADIOREGS7_2G(0x48, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x6c,
+			      0x09, 0x0f, 0x09, 0x07, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03c9, 0x03c5, 0x03c1, 0x043a, 0x043f,
0x0443),
+	},
+	{
+		.freq			= 2417,
+		RADIOREGS7_2G(0x4b, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x71,
+			      0x09, 0x0f, 0x09, 0x07, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cb, 0x03c7, 0x03c3, 0x0438, 0x043d,
0x0441),
+	},
+	{
+		.freq			= 2422,
+		RADIOREGS7_2G(0x4e, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x76,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cd, 0x03c9, 0x03c5, 0x0436, 0x043a,
0x043f),
+	},
+	{
+		.freq			= 2427,
+		RADIOREGS7_2G(0x52, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x7b,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cf, 0x03cb, 0x03c7, 0x0434, 0x0438,
0x043d),
+	},
+	{
+		.freq			= 2432,
+		RADIOREGS7_2G(0x55, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x80,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d1, 0x03cd, 0x03c9, 0x0431, 0x0436,
0x043a),
+	},
+	{
+		.freq			= 2437,
+		RADIOREGS7_2G(0x58, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x85,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d3, 0x03cf, 0x03cb, 0x042f, 0x0434,
0x0438),
+	},
+	{
+		.freq			= 2442,
+		RADIOREGS7_2G(0x5c, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x8a,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d5, 0x03d1, 0x03cd, 0x042d, 0x0431,
0x0436),
+	},
+	{
+		.freq			= 2447,
+		RADIOREGS7_2G(0x5f, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x8f,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d7, 0x03d3, 0x03cf, 0x042b, 0x042f,
0x0434),
+	},
+	{
+		.freq			= 2452,
+		RADIOREGS7_2G(0x62, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x94,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d9, 0x03d5, 0x03d1, 0x0429, 0x042d,
0x0431),
+	},
+	{
+		.freq			= 2457,
+		RADIOREGS7_2G(0x66, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x99,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03db, 0x03d7, 0x03d3, 0x0427, 0x042b,
0x042f),
+	},
+	{
+		.freq			= 2462,
+		RADIOREGS7_2G(0x69, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0x9e,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03dd, 0x03d9, 0x03d5, 0x0424, 0x0429,
0x042d),
+	},
+	{
+		.freq			= 2467,
+		RADIOREGS7_2G(0x6c, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0xa3,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03df, 0x03db, 0x03d7, 0x0422, 0x0427,
0x042b),
+	},
+	{
+		.freq			= 2472,
+		RADIOREGS7_2G(0x70, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0xa8,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73,
0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03e1, 0x03dd, 0x03d9, 0x0420, 0x0424,
0x0429),
+	},
+	{
+		.freq			= 2484,
+		RADIOREGS7_2G(0x78, 0x16, 0x30, 0x1b, 0x0a, 0x0a,
0x30, 0xb4,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73,
0xe0, 0x61,
+			      0x73, 0xe0),
+		PHYREGS(0x03e6, 0x03e2, 0x03de, 0x041b, 0x041f,
0x0424),
+	}
+};
+
+
 /* Extracted from MMIO dump of 6.30.223.141 */
 static const struct b43_nphy_chantabent_rev7
b43_nphy_chantab_phy_rev16_radio_rev9[] = { {
@@ -678,6 +781,9 @@ void r2057_get_chantabent_rev7(struct b43_wldev
*dev, u16 freq, if (phy->radio_rev == 5) {
 			e_r7_2g = b43_nphy_chantab_phy_rev8_radio_rev5;
 			len =
ARRAY_SIZE(b43_nphy_chantab_phy_rev8_radio_rev5);
+		} else if (phy->radio_rev == 8) {
+			e_r7_2g = b43_nphy_chantab_phy_rev8_radio_rev8;
+			len =
ARRAY_SIZE(b43_nphy_chantab_phy_rev8_radio_rev8); }
 		break;
 	case 16:

-- 
2.54.0

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
