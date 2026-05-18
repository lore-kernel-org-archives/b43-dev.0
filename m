Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB3BCD4F3D
	for <b43-dev@archiver.kernel.org>; Mon, 18 May 2026 01:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaxY4b2BytdSFEJolTwvUW9/qhwNSryKsgGBriC7sCA=; b=b+a/N8cpkMaYEB
	U9HQXSdPo3X33VnZ4yNXj9Y2XxuIueLRab+D+++mMOh5LpleGC/sXpY8n52cc/T/p8x4pqX2HQiGN
	GqVi+bL2mmaaszslVFzI2b0JL4Ns6QkxI8ZzUHq0EJJPpnQHw+nUq9/3UPls70XwVccfiAOE1hhEz
	4m+YQSXLTqkMfr+pSvR1QBpPfnL560g7W4iOJ+caUWxsqfw2UBgE0VQZlewgZLOVuFilXF80smjqQ
	dOwO/A/yCOCq/J3tXTZqlQIXiljr3JmfMQLCe6h8R1ZOXvhy/mI+6IrwKbFhV31KDg1VaOY6kK9he
	HnNiCT+0NifbR7oBQitA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnBY-0000000DsEX-0gkg;
	Mon, 18 May 2026 01:54:24 +0000
Received: from smtpdh20-1.aruba.it ([62.149.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnBV-0000000Ds75-08LL
	for b43-dev@lists.infradead.org;
	Mon, 18 May 2026 01:54:22 +0000
Received: from [192.168.1.83] ([79.20.159.46])
	by Aruba SMTP with ESMTPSA
	id OnBUwqtX3EZ9tOnBUwfr8L; Mon, 18 May 2026 03:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779069260; bh=hz7MrT7mnFSUTsm2B+ndFKrzdRHLoKRmLnkAUnEZNKI=;
	h=Date:MIME-Version:Subject:From:To:Content-Type;
	b=hgfrmLWJfeq/1e0q5sH8l6jYHr0al9qgWAGX+Np6ZeoQ/zZz7ZDUI9TKvFcFjURu6
	 zfVALkVx9zN6MeFIHX+mYkyREq35CX7LxzQ0yR+5dLtbibbAq6tQYdfJTK7WpO6w71
	 Q/Cv1mVaQdWkJE155738nMT5g5hstT6dy1YLf8MzmbJLavdQ8IoWx1Aje58wAN2nyE
	 n4WZh0DiqxrNvnEypdnn9wMpFSBZ+ELVbMT8Jsq1XsbzV4S8/hGxT5/Twfqe5I+kzu
	 ItsKchJGl9mo7QX0C+b5jDhK7Kjqvix0utGM8cyx3mbYc07MWC7zjv7+IwXArrU3Zg
	 nZGmJLb+nblLQ==
Message-ID: <c38ef41c-0358-413f-bf7b-c01f994111b0@mythread.it>
Date: Mon, 18 May 2026 03:54:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH 5/6] b43: add channel info table for N-PHY r8 + radio 2057 r8
Content-Language: it
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, kvalo@kernel.org,
 linux-kernel@vger.kernel.org
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
In-Reply-To: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
X-CMAE-Envelope: MS4xfMCgR4Gon6FZwgrDF8ToEOuNGr5G3q0NfMcJLls6O8z5zig+VDn8IWhLmoUIMR1nYVA3mLbDnJbDA0+lwj4VStL96HInPH9HA2AqQXChiRLM0G/0f5VM
 2Djnnk4CYNAUyx/g+u+1ZnIMy1OOLd89os5KUFD0M+pyXz7jd7c0GrsCcLyCdcKtshYmN8w3OvQRf+dXdtM3SSLYcztCDNQwzdkQqsf/WqWJqvtd7qNfuhF5
 LQ2eu09PyB6fU9EzbnpMWdKgOUGBO+M/11VBgTMlDFqlVsAq4hBcY/pU8lgK8Sfq69A1+pNwp1BAXeDkqQmOFA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_185421_243309_A58E1888 
X-CRM114-Status: GOOD (  11.77  )
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
steps, plus 2484 for channel 14). Each entry uses the
b43_nphy_chantabent_rev7_2g struct layout already defined in this
file: 18 RADIOREGS7_2G fields followed by 6 PHYREGS (SFO config).

Values extracted from an MMIO dump of the proprietary Broadcom wl
driver running on BCM6362 silicon (wl driver 6.30.102.7). Field
ordering and encoding cross-validated by re-deriving the in-tree
b43_nphy_chantab_phy_rev8_radio_rev5 table from the same source
through the same extraction - the result matches the existing
in-tree table byte-for-byte.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 .../net/wireless/broadcom/b43/radio_2057.c    | 106 ++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/radio_2057.c b/drivers/net/wireless/broadcom/b43/radio_2057.c
index 9f693d92b..e761f899b 100644
--- a/drivers/net/wireless/broadcom/b43/radio_2057.c
+++ b/drivers/net/wireless/broadcom/b43/radio_2057.c
@@ -445,6 +445,109 @@ static const struct b43_nphy_chantabent_rev7_2g b43_nphy_chantab_phy_rev17_radio
 	},
 };
 
+/* Extracted from MMIO dump of 6.30.102.7 */
+static const struct b43_nphy_chantabent_rev7_2g b43_nphy_chantab_phy_rev8_radio_rev8[] = {
+	{
+		.freq			= 2412,
+		RADIOREGS7_2G(0x48, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x6c,
+			      0x09, 0x0f, 0x09, 0x07, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03c9, 0x03c5, 0x03c1, 0x043a, 0x043f, 0x0443),
+	},
+	{
+		.freq			= 2417,
+		RADIOREGS7_2G(0x4b, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x71,
+			      0x09, 0x0f, 0x09, 0x07, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cb, 0x03c7, 0x03c3, 0x0438, 0x043d, 0x0441),
+	},
+	{
+		.freq			= 2422,
+		RADIOREGS7_2G(0x4e, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x76,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cd, 0x03c9, 0x03c5, 0x0436, 0x043a, 0x043f),
+	},
+	{
+		.freq			= 2427,
+		RADIOREGS7_2G(0x52, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x7b,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03cf, 0x03cb, 0x03c7, 0x0434, 0x0438, 0x043d),
+	},
+	{
+		.freq			= 2432,
+		RADIOREGS7_2G(0x55, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x80,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d1, 0x03cd, 0x03c9, 0x0431, 0x0436, 0x043a),
+	},
+	{
+		.freq			= 2437,
+		RADIOREGS7_2G(0x58, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x85,
+			      0x09, 0x0f, 0x09, 0x06, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d3, 0x03cf, 0x03cb, 0x042f, 0x0434, 0x0438),
+	},
+	{
+		.freq			= 2442,
+		RADIOREGS7_2G(0x5c, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x8a,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d5, 0x03d1, 0x03cd, 0x042d, 0x0431, 0x0436),
+	},
+	{
+		.freq			= 2447,
+		RADIOREGS7_2G(0x5f, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x8f,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d7, 0x03d3, 0x03cf, 0x042b, 0x042f, 0x0434),
+	},
+	{
+		.freq			= 2452,
+		RADIOREGS7_2G(0x62, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x94,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03d9, 0x03d5, 0x03d1, 0x0429, 0x042d, 0x0431),
+	},
+	{
+		.freq			= 2457,
+		RADIOREGS7_2G(0x66, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x99,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03db, 0x03d7, 0x03d3, 0x0427, 0x042b, 0x042f),
+	},
+	{
+		.freq			= 2462,
+		RADIOREGS7_2G(0x69, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0x9e,
+			      0x09, 0x0f, 0x08, 0x05, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03dd, 0x03d9, 0x03d5, 0x0424, 0x0429, 0x042d),
+	},
+	{
+		.freq			= 2467,
+		RADIOREGS7_2G(0x6c, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0xa3,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03df, 0x03db, 0x03d7, 0x0422, 0x0427, 0x042b),
+	},
+	{
+		.freq			= 2472,
+		RADIOREGS7_2G(0x70, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0xa8,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73, 0xf0, 0x61,
+			      0x73, 0xf0),
+		PHYREGS(0x03e1, 0x03dd, 0x03d9, 0x0420, 0x0424, 0x0429),
+	},
+	{
+		.freq			= 2484,
+		RADIOREGS7_2G(0x78, 0x16, 0x30, 0x1b, 0x0a, 0x0a, 0x30, 0xb4,
+			      0x09, 0x0f, 0x07, 0x04, 0x61, 0x73, 0xe0, 0x61,
+			      0x73, 0xe0),
+		PHYREGS(0x03e6, 0x03e2, 0x03de, 0x041b, 0x041f, 0x0424),
+	}
+};
+
+
 /* Extracted from MMIO dump of 6.30.223.141 */
 static const struct b43_nphy_chantabent_rev7 b43_nphy_chantab_phy_rev16_radio_rev9[] = {
 	{
@@ -678,6 +781,9 @@ void r2057_get_chantabent_rev7(struct b43_wldev *dev, u16 freq,
 		if (phy->radio_rev == 5) {
 			e_r7_2g = b43_nphy_chantab_phy_rev8_radio_rev5;
 			len = ARRAY_SIZE(b43_nphy_chantab_phy_rev8_radio_rev5);
+		} else if (phy->radio_rev == 8) {
+			e_r7_2g = b43_nphy_chantab_phy_rev8_radio_rev8;
+			len = ARRAY_SIZE(b43_nphy_chantab_phy_rev8_radio_rev8);
 		}
 		break;
 	case 16:
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
