Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C023DCD4F3C
	for <b43-dev@archiver.kernel.org>; Mon, 18 May 2026 01:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1hU3eXeI4dq3MUCHacSQNABuaWxGEjzb/41HxxLD8Q=; b=KMV36RsnaRgse6
	fAvZZsYMjF6bry+1L14h5m4lNoGnloAmwZGhVXU7nUvs5J8ckN87N03v1pguy6pN+BN5zbbMpKW/V
	aoch4m6LO8fBqB8d1LnmanXJHFmRcHuiQPrhdgLm3hcM/7D1R5RN7NcepABCq81CpETokMrjHd2VV
	DdW4Y3rhoI9BBsVHXt1NLMvtst8y0u2zf2tAoo82OO6j9bwYVPiHRdD863ooowevakyg8xVeilyyo
	aOgR6VsgSDXzxYF3J9qerJ4XApxtvj5E/I3lJP+I5OqzzpviXavZL0dDtX4xtv3qesq+MkevVNCK1
	YR2cDoipPmVAwQqX3XmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnAt-0000000Ds7j-0ALN;
	Mon, 18 May 2026 01:53:43 +0000
Received: from smtpdh20-1.aruba.it ([62.149.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnAq-0000000Ds75-3tUR
	for b43-dev@lists.infradead.org;
	Mon, 18 May 2026 01:53:42 +0000
Received: from [192.168.1.83] ([79.20.159.46])
	by Aruba SMTP with ESMTPSA
	id OnApwqtIQEZ9tOnApwfr4s; Mon, 18 May 2026 03:53:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779069219; bh=f92PXsrNJbn1Pcjwgfmmj1GECyc39UkvGMf/+SXNDBk=;
	h=Date:MIME-Version:Subject:From:To:Content-Type;
	b=Gblx13SAtEb9W8xwj8087xG2a/j+sSCNX8wC8QwXK2X77ILnJAXauLmcbwwSnPT0E
	 nQRzrSk1hFix9COeb24LiUW8rp0ApV6PjNzSe2rcfRnM4PhyeF2ZiGA9EdMF6ZDMyz
	 HH/VlgvueCypCCoIRNwwmvMYAIuuOPZYedQjm/yGrxwCvcM99/YrgMV7Mo8hmgS2kr
	 8M6bG8J/43zVQ3VJUd2lXJ+fs1LJXp9ePF+oHt4qJ8XyAIxrBx8GdGnsOkXQj2aU10
	 BFguf4ksdOmOrcba4o2UYI/AAZMYzS4CjgU2r3O/V+xPKZjY3DMCb071aoanASF61O
	 fJhg7bc95ni+Q==
Message-ID: <4581a48e-a6e4-46b1-853f-16db445d6890@mythread.it>
Date: Mon, 18 May 2026 03:53:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH 4/6] b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
Content-Language: it
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, kvalo@kernel.org,
 linux-kernel@vger.kernel.org
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
In-Reply-To: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
X-CMAE-Envelope: MS4xfAVt9958lNEGYmKhM3kGOm8jhgNbPjckyGJqChUkpjOijmN/r4gSxm686Gvv9Cs7gEXjeIOKzMAtVztZx4xXW06sW1u0FUVs/aYxIDSdnxMX7WdDcz6x
 W75fppm2wB1U2S7MNVGwfvYXWZEdqw1yuIs5+iRx0riBg1+OGWzOien0NzesK6utJvAcWSsNz6bSiIUw2ulETZ9Iwqh91PwA5nP99mLitbkyLcmYYaDFPKHa
 UwqniGIYyjMXytW2prRaqwW9KhCixmAGwcalWYy+6uE+/cNbcHNPaPzAHva9KnFHDHXzBIWrPuVaZgJxcMTGuw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_185341_141036_CB40EDBC 
X-CRM114-Status: GOOD (  11.70  )
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

Add the 2.4 GHz IPA TX gain table for N-PHY rev 8 paired with radio
2057 rev 8 and wire it to the existing dispatcher.

b43_nphy_get_ipa_gain_table() in tables_nphy.c currently handles
case 8 only for radio_rev == 5; radio_rev == 8 falls through and
the function logs:

    b43-phyX ERROR: No 2GHz IPA gain table available for this device
    b43-phyX ERROR: PHY init: Channel switch to default failed

leaving b43_phy_init() to return an error and core_init to abort
before the MAC is enabled.

The new b43_ntab_tx_gain_ipa_2057_rev8_2g[] is 128 u32 entries,
matching the layout of the existing b43_ntab_tx_gain_ipa_2057_
rev5_2g and b43_ntab_tx_gain_ipa_2057_rev9_2g siblings in this
file. Each entry packs five gain fields decoded by
wlc_phy_get_tx_gain_nphy in the proprietary driver, the same
encoding b43 uses for the other 2057 IPA tables.

The high byte of every entry differs from the rev 5 sibling (0x40
vs 0x30): different PAD-gain code prefix for the rev 8 front-end.
The low 24 bits coincide with rev 5 across the whole table - the
gain step amplitudes are the same, only the PAD-gain selector
prefix changes.

Values extracted from an MMIO dump of the proprietary Broadcom wl
driver running on BCM6362 silicon (wl driver 6.30.102.7).
Encoding cross-validated by re-deriving the in-tree rev 5 table
from the same source using the same extraction method - the
result matches b43_ntab_tx_gain_ipa_2057_rev5_2g byte-for-byte.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 .../net/wireless/broadcom/b43/tables_nphy.c   | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c b/drivers/net/wireless/broadcom/b43/tables_nphy.c
index 41a25d909..84e8d718d 100644
--- a/drivers/net/wireless/broadcom/b43/tables_nphy.c
+++ b/drivers/net/wireless/broadcom/b43/tables_nphy.c
@@ -2715,6 +2715,43 @@ static const u32 b43_ntab_tx_gain_ipa_2057_rev5_2g[] = {
 	0x300f0715, 0x300f0715, 0x300f0715, 0x300f0715,
 };
 
+/* Extracted from MMIO dump of 6.30.102.7 */
+static const u32 b43_ntab_tx_gain_ipa_2057_rev8_2g[] = {
+	0x40ff0031, 0x40e70031, 0x40e7002e, 0x40cf002e,
+	0x40bf002e, 0x40af002e, 0x409f002f, 0x407f0033,
+	0x407f0031, 0x407f002e, 0x4077002e, 0x406f002e,
+	0x4067002e, 0x405f002f, 0x40570030, 0x4057002d,
+	0x404f002e, 0x40470031, 0x4047002e, 0x4047002c,
+	0x40470029, 0x403f002c, 0x403f0029, 0x4037002d,
+	0x4037002a, 0x40370028, 0x402f002c, 0x402f002a,
+	0x402f0028, 0x402f0026, 0x4027002c, 0x40270029,
+	0x40270027, 0x40270025, 0x40270023, 0x401f002c,
+	0x401f002a, 0x401f0028, 0x401f0025, 0x401f0024,
+	0x401f0022, 0x401f001f, 0x4017002d, 0x4017002b,
+	0x40170028, 0x40170026, 0x40170024, 0x40170022,
+	0x40170020, 0x4017001e, 0x4017001d, 0x4017001b,
+	0x4017001a, 0x40170018, 0x40170017, 0x40170015,
+	0x400f002c, 0x400f0029, 0x400f0027, 0x400f0024,
+	0x400f0022, 0x400f0021, 0x400f001f, 0x400f001d,
+	0x400f001b, 0x400f001a, 0x400f0018, 0x400f0017,
+	0x400f0016, 0x400f0015, 0x400f0115, 0x400f0215,
+	0x400f0315, 0x400f0415, 0x400f0515, 0x400f0615,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+	0x400f0715, 0x400f0715, 0x400f0715, 0x400f0715,
+};
+
+
 /* Extracted from MMIO dump of 6.30.223.141 */
 static const u32 b43_ntab_tx_gain_ipa_2057_rev9_2g[] = {
 	0x60ff0031, 0x60e7002c, 0x60cf002a, 0x60c70029,
@@ -3651,6 +3688,8 @@ static const u32 *b43_nphy_get_ipa_gain_table(struct b43_wldev *dev)
 		case 8:
 			if (phy->radio_rev == 5)
 				return b43_ntab_tx_gain_ipa_2057_rev5_2g;
+			if (phy->radio_rev == 8)
+				return b43_ntab_tx_gain_ipa_2057_rev8_2g;
 			break;
 		case 6:
 			if (dev->dev->chip_id == BCMA_CHIP_ID_BCM47162)
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
