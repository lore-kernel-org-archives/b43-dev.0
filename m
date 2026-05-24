Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8858BCD5BAB
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/ctnpi/BGE5gJLNNJrNhlEcrO2G4GB7lf7Q5Rg+f9s=; b=u0rxDhsVg93YCX
	bZGlfrcozvYmlXPqSMzxNKnz/xBJdX79L3XH6TUZEpYs7ZUw1PqoP/B9b5gfbwgvfciYXCCviW9hz
	nhAlwAvn4fCodZ7zLZLfmCcEU0byt053ujMJR8ka3d/F2LsVLWBqc7XjgYsFwcZHUH26ifF7SrQ3q
	QicqLqAisX5llHhUJnoznriFO+4nB9jNc6FGbmgp54a6YrMZLB2nbiMRhXm+yG9xTZnCvmbbveWko
	jd58O3YSsQm7asxLLlrxsIQp/wTSdr4j+9+qOb/hsktRUBv5Nbmx02jNQbDnFOM6bIV1XkHKV7qMJ
	11OAqt4iJyTUXkLuIUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGTX-0000000Fgql-3JWm;
	Sun, 24 May 2026 21:35:11 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGTV-0000000FgSx-2262
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:35:10 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGTUwsB8kwf0DRGTUwFACr; Sun, 24 May 2026 23:35:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658509; bh=wbM/JgD8I6itU6S+v2S2x/PXv3phPTudmplnz5ZPVJY=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=fF1B7Oyv6b7U/h+4QFPdUyT589sWMF7+VZzYLsDjiAO+qrXdJO8K3JCXl7SvaU/BC
	 gPZUI/hLDh0VC22TmzmNzizfQcpRA+NtBxWoVGztvQg3pNfQugo4KIqoFHDUpcR/E+
	 RG8e4TYkcZB/kJ0M+Qbsgv+UvZgxor64gAYLDOPt7ixPHHWd++XwIubolBxbJfzsMh
	 ZpDoXhxfpiuLvLS/U2KWfgbaz+7q9yLsagDMDp6AFAc9yIiwUhrBmaqoSCEWcO5mj8
	 yKGCYxY7rTbqzOxT6ihg2plSozAF8CE+sDb7GvoiaHsDuCqLIXXTTSq4VnLo490LGo
	 42n8MD5JGTcKg==
Date: Sun, 24 May 2026 23:35:08 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233508.03ebe015@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfCb8tLfP+v/0FHl21J6n+mFQEOKJIQZJXtDxvuhP6dSW7odXfZZYgfvX88Th9JF74CHxyLURlNJzjbnaEGoLZBeFTOYflEbdyTBdcXkjlCMF7Dnp/TXw
 CIHtwC/35Pg41DTtIoWMVYIuSri0+rEyV5x+apa/KrDgFwLeRURozdht4cPlYWXd5MqrJd390hvWEi8WrhMX+YvfQrLDV+VKEXhX+hESmFMv5o07nZYvuIF6
 U3/zjWZrZUD5z+8Cvr1JrkZZ/y8Y1jbmH7Aiy5UYcHk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143509_690205_5DECEA32 
X-CRM114-Status: GOOD (  11.30  )
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

The high byte of every entry differs from the rev 5 sibling (0x40
vs 0x30): different PAD-gain code prefix for the rev 8 front-end.
The low 24 bits coincide with rev 5 across the whole table - the
gain step amplitudes are the same, only the PAD-gain selector
prefix changes.

Values extracted from an MMIO dump of the proprietary Broadcom wl
driver running on BCM6362 silicon (wl driver 6.30.102.7).

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/tables_nphy.c | 39
+++++++++++++++++++++++++ 1 file changed, 39 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c
b/drivers/net/wireless/broadcom/b43/tables_nphy.c index
41a25d909..84e8d718d 100644 ---
a/drivers/net/wireless/broadcom/b43/tables_nphy.c +++
b/drivers/net/wireless/broadcom/b43/tables_nphy.c @@ -2715,6 +2715,43
@@ static const u32 b43_ntab_tx_gain_ipa_2057_rev5_2g[] = { 0x300f0715,
0x300f0715, 0x300f0715, 0x300f0715, };
 
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
@@ -3651,6 +3688,8 @@ static const u32
*b43_nphy_get_ipa_gain_table(struct b43_wldev *dev) case 8:
 			if (phy->radio_rev == 5)
 				return
b43_ntab_tx_gain_ipa_2057_rev5_2g;
+			if (phy->radio_rev == 8)
+				return
b43_ntab_tx_gain_ipa_2057_rev8_2g; break;
 		case 6:
 			if (dev->dev->chip_id == BCMA_CHIP_ID_BCM47162)

-- 
2.54.0

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
