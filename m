Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBEBDCD4F3C
	for <b43-dev@archiver.kernel.org>; Mon, 18 May 2026 01:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRGNPAEeb28xt6YzA0RYxz7cN9AZPr+yP294myt1U6Q=; b=qGwwG0fPhLVxed
	gVy31f4PRnj0glXUtvqsJFVtAHt/uPH4QhWW1NLxec5D7HXxe4It/gpQqfUL6kP3CjQdRDT0kE6Or
	LKSYYQ0T5oBOvUuJZnrKmAhmTLRo0Yxtp04jVcmUTfFilKB1aPzfthNqK66a8z6S49yf7cHs/gBxB
	fE+JWfx4f1Jxx0oXzjAsvCVOusyVdaRDZGwEa1hcfErGlF8Y8/A5V4kawZ/3WPx0GJzCCYfzW2GKJ
	5MDEgS8PQ4KjVYYUbsrfiNeDAdVrvZT3nsZUNFi04ICJQQK4WmHM0oYpTxlLR6s1HD2k7U2dAv+mT
	VODPag/mrtSCNqIs9t2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnCB-0000000DsMV-1Y0L;
	Mon, 18 May 2026 01:55:03 +0000
Received: from smtpdh20-1.aruba.it ([62.149.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnC8-0000000Ds75-2NNB
	for b43-dev@lists.infradead.org;
	Mon, 18 May 2026 01:55:01 +0000
Received: from [192.168.1.83] ([79.20.159.46])
	by Aruba SMTP with ESMTPSA
	id OnC7wqtkaEZ9tOnC7wfrBg; Mon, 18 May 2026 03:55:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779069300; bh=5gwCkCWIBz50Rn5n49EQqgUTxuK9Jjy1Zr54t/an8fM=;
	h=Date:MIME-Version:Subject:From:To:Content-Type;
	b=QoK0UFx9wJBHKuzxTUgsWprSb5m8MSzlQDJDXT3Vb8e7q6r2mhPBI2kNSqJqPDUaw
	 MjnhKziAe+YikNnayFfCClJINbU/VL/TvIgTrvSxTXlTrAJ4LH8Ki+KSxMUVMrwxna
	 KqZ9gMi+rUXLM1JTFgOBKR7gxHG+z0Pg0yyd+PWYXOwCUJFcBwjJ8NKkikiyuiS6ua
	 ZXpXQ7emxKoLPKlas3zLSsCBZl7EsLNKK9RW9lxTPbe4GzNbdAbEkXQ3n2R1J882pJ
	 iuCqWMZIhRnCVzJonI2av8Y7LN+bdnlqcKZMO8BkiQdjWsXsaOaawAJgLtKuHuG5rG
	 Go9k92aPURUgg==
Message-ID: <b6865fd7-e4fd-4d99-870e-5c7ff103663b@mythread.it>
Date: Mon, 18 May 2026 03:54:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH 6/6] b43: add RF power offset for N-PHY r8 + radio 2057 r8
Content-Language: it
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, kvalo@kernel.org,
 linux-kernel@vger.kernel.org
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
In-Reply-To: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
X-CMAE-Envelope: MS4xfEV+FgEZjDr7wElVwNDrVsoho3D+ICj7D1FAxO1boKBXEYtpuzP1fti743QcggKEnr7SWguIQaAmTCUIs2XYTNEOJDOsmAoL1RQDWU0Ze1/6051S10Xl
 UoakDMDOdbnwe8kuEsHiye7r1yUnQrRZzqtcpOpsLqLFZwST7cvPfh6Qo+3roPtHicAu0Ds32hIjxNj1LWgC2Zyk3FTsf/1Rxbof3fbGXSzW45n5OCiRWSuT
 djoQruKfmINP5dw80xvSWuprSFlsEiOFTD3IQ4yI3bFYDyc1uUHkQHxRxWfMxxDTRNv0gbafSxvYFpp7tYr8/g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_185500_782326_D06BA813 
X-CRM114-Status: GOOD (  12.86  )
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

Add the 2.4 GHz RF power offset table for N-PHY rev 8 paired with
radio 2057 rev 8 and wire it to the existing dispatcher.

b43_ntab_get_rf_pwr_offset_table() currently dispatches on phy->rev
== 17 (radio_rev 14) and phy->rev == 16 (radio_rev 9) for 2.4 GHz.
phy->rev == 8 falls through and the function logs:

    b43-phyX ERROR: No 2GHz RF power table available for this device

Add a phy->rev == 8 / radio_rev == 8 case returning the new table.

The values are sourced from the proprietary Broadcom wl driver's
nphy_papd_padgain_dlt_2g_2057rev5 array. Reusing the rev 5 values
is structurally appropriate: the IPA TX gain table added by the
preceding patch in this series shares the low 24 bits of every
entry with rev 5 - same gain step amplitudes, only the PAD-gain
selector byte differs. b43's pad_gain extraction in
b43_nphy_tx_pwr_ctl_init() reads bits 19..23 of the gain entry,
which sit in the shared low-24-bit range; the same gain index
therefore maps to the same physical PAD gain code on both
revisions and warrants the same per-index dB offset.

Note that b43_nphy_tx_gain_table_upload() currently has a "TODO:
Enable this once we have gains configured" early-return for
phy->rev >= 7. With that early-return in place, this table is
fetched (silencing the b43err that would otherwise abort PHY
init) but its values are not yet written to MMIO. Resolving the
TODO is a separate investigation outside the scope of this
series; the values supplied here are documented now so that, once
the upload path is enabled, the correct rev 8 offsets are
already in tree.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 .../net/wireless/broadcom/b43/tables_nphy.c   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c b/drivers/net/wireless/broadcom/b43/tables_nphy.c
index 84e8d718d..ecd660b9c 100644
--- a/drivers/net/wireless/broadcom/b43/tables_nphy.c
+++ b/drivers/net/wireless/broadcom/b43/tables_nphy.c
@@ -2923,6 +2923,21 @@ static const s16 b43_ntab_rf_pwr_offset_2057_rev9_5g[] = {
 	0,
 };
 
+/* Sourced from the rev 5 sibling: the rev 8 IPA TX gain table
+ * shares the low 24 bits of every entry with rev 5 (only the
+ * PAD-gain selector byte differs), so the same gain index maps to
+ * the same physical PAD gain code on both revisions.
+ */
+static const s16 b43_ntab_rf_pwr_offset_2057_rev8_2g[] = {
+	-109, -109, -82, -68, -58,
+	-50,  -44, -39, -35, -31,
+	-28,  -26, -23, -21, -19,
+	-17,  -16, -14, -13, -11,
+	-10,   -9,  -8,  -7,  -5,
+	 -5,   -4,  -3,  -2,  -1,
+	 -1,    0,
+};
+
 /* Extracted from MMIO dump of 6.30.223.248
  * Entries: 0, 26, 28, 29, 30, 31 were guessed
  */
@@ -3782,6 +3797,10 @@ const s16 *b43_ntab_get_rf_pwr_offset_table(struct b43_wldev *dev)
 			if (phy->radio_rev == 9)
 				return b43_ntab_rf_pwr_offset_2057_rev9_2g;
 			break;
+		case 8:
+			if (phy->radio_rev == 8)
+				return b43_ntab_rf_pwr_offset_2057_rev8_2g;
+			break;
 		}
 
 		b43err(dev->wl,
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
