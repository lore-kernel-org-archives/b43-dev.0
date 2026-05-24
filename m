Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC566CD5BCE
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7l69Eib/iniGMPasMPmrxjZXblsIJ1VZEBbvU6LAjnA=; b=raVW89VRsPBs/k
	6SyE2oXzQQU/GVoCQO1lxg3dmU+7RraeDVdQmF8ENwgoiF9gbovkW2+EEa3jpzna7CtXxmLF69MnW
	tQYL8cRaz6H7Zk31K/MsMTp6uvVik3Um1DUJutb6Kwhvlv1mcYoiaCRPmHVp700jT3iXQASSQSE3K
	EUtvqcQz8AJI7pX5iPomMw1R6Cbzc0Ij7xOmikhmdvDfoWj/ay2iY/c1FSgJy3uvao3czTb9w3yYy
	7Bn9ZX6oj4dobUH3fWvG6AULVwAdvIpQPNQnsvicDNUVf/79/xk2OkAVs5D+7Ra/hVy6p6t8YQoFT
	MECVCSIMpmDCoDe8/wnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGoC-0000000Filg-1eLj;
	Sun, 24 May 2026 21:56:32 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGo8-0000000FiiR-0LoC
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:56:30 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGo5wsRmcwf0DRGo6wFEWp; Sun, 24 May 2026 23:56:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779659786; bh=7U2VRrCjLV3YsP3PE4UZxyswXXGxQcG+dcQvS3dsOgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=SXlaOtn04CdzBea/JCHPQq0IPKs3bITjiTwNOIE5FfrcYkAf3ElIdwnij0hEq2jWn
	 dSav6jWoXnZ8OIGVxTmBPH08UjSfHqxN0tJ2S1bapq7mm3uGt+M3B4I7dHBVejtvnd
	 VLM74gXeNowG4DuYEQOmZLq4xYtGrmjQkHXog8YwZrZJoAm9yeJlnHaMZdn7uKGScT
	 5iIrYlDrk5xt/xTJ3RK9857btipJV3ldCdQ+Lh9Fm7LXrDxH0jpkCrXcL3zHlcyx3T
	 +l7KhMfrTrRx70G+Tr6I52AuPYZp0Dp/9H+in1gh8NWPS6DEgVn0hjHyi7OSoW0Lph
	 wvvf9p8HyHwVA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sun, 24 May 2026 23:56:23 +0200
Subject: [PATCH v3 6/7] b43: add channel info table for N-PHY r8 + radio
 2057 r8
MIME-Version: 1.0
Message-Id: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-6-cdad2c8526c6@gmail.com>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
In-Reply-To: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfA68BqaCkARgcDeF0kZ2UFl6SNlLG18wR+LQBV8qIB0LCxYN2/+rkKbov4N3NO6Mo6TWpaUKQz03uo0SF2PaeQYV16MzNF3ra8jTW86kg0CPBytWRzkp
 d8c2s4TVdBqBsWRw5aLGzkJ3ZMRxJn3QM6dOF/m1Z5un74VmOQoq5Fy0PtdOwp2ANnPjutzDk0UQCpQ9R73Z457QW7EuxL0C9LiMnROBOBTI0NLDNzutxWX7
 ejqX4QxUgegJG5GxuGyf2tfV2PUtuuNnd/IKPSECMhigZ/KnIfgFE/CruilI8wRTeJ4JjtNNb0IrIpHMupqlknExVmWS8fMZ9EPIYzusd3E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_145628_314324_FACB9B5C 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
 drivers/net/wireless/broadcom/b43/radio_2057.c | 106 +++++++++++++++++++++++++
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
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
