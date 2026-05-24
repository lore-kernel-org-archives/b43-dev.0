Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5EE8CD5BB1
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBPfVTNZKHGtLN6ssih+t/xO9YuXmKVZwAaEREuKzYs=; b=iVeyHIEAvSeCE1
	JPF3iU9DRDToOjL80wcBcti6u96sqpXPcZEeca8vFJOwdABukrTHFW9JeRKEqNkVsPIApYBEYLEe5
	HH/SjGaicV2Yf2geskecGa4C+C6NBWLdXaftMw2acUGAZzw1edY8UZzdJfJt01/8M+zNOWvKcImhA
	LexMM02Z44TFjH5bhcBSrsMXg84x14ONEir3xvvxa6WEcF4ydKogRSROL/59JH9TGGtztjoL9Lm+c
	rmGNdRznLQq2VkF/e0f3QF6QhR+Qnzoa5p+2xKmy9A23y7sTWg8fVtWNbIW1QxpCwyuh6wmGhY/Z+
	S91O2nDSY/2lFvYW1Okg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGUa-0000000Fh7H-0FhZ;
	Sun, 24 May 2026 21:36:16 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGUX-0000000FgSx-2M8p
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:36:14 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGUWwsCGRwf0DRGUWwFAdO; Sun, 24 May 2026 23:36:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658573; bh=puWOPnW6DK1aPT9XGMhxSGX/gTDMx9Trn+CpctvI92E=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=QdwciU4vat++y2AfMWdBUACI4D8MAByTZf6Ygj0PE+D3PQ7PcpuKMUK/K6VUINkKk
	 uwpKW2ioTIRAQY336r5lb1H3MjHaOwdt84csCxuJ/sGzC+rn6dO+9gx4jGyC4JkvMG
	 OHmC59dXCZXAAwvJIkfaFzQ1DqZqooEnr1zzmICMQSxL41Uv9RhmNJ2rZbyli0aZj7
	 0idr0gMHc4Oe9vYjucAGiq/dY38KLtkB6D0ZhxH7TXseaLLMP7gpxBieh9Jw+We5Vy
	 6wKFBrAunYIP4PszV2KXgb+Vf0vBiyu6MboCYb8FA6PNKkEcdZoiOqZNwONColQC1d
	 D2Skp0QvzkvNg==
Date: Sun, 24 May 2026 23:36:12 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233612.4d0e87f7@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfByFKf31Q/ssCwsoRl0p3b86fXEnF0LFLMJgn0SkmstqLPT4/It6qbghhQ73Y/cBbgNcgldg6zCWU/fGgrVYQZJl99rHBM6MaVP4DFCLiN49X6ktHoD0
 NXzHi6lsH/qcf/Npuc2+oeu9EEu+CdoXmnL3TWH9EbcO2iLxxQ/dD9xFXewv/670c/QmLXPtUHQ/05/5gdl5LneOW8JRZt61QIev9G+wHO8ecxqbeJQftc5z
 OqM44gc7+KWUReP0ZD8YV+0Vernv8nJbns2H/1LuLlQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143613_769375_24D57740 
X-CRM114-Status: GOOD (  12.40  )
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
TODO is a future, separate task.

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/tables_nphy.c | 19
+++++++++++++++++++ 1 file changed, 19 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c
b/drivers/net/wireless/broadcom/b43/tables_nphy.c index
84e8d718d..ecd660b9c 100644 ---
a/drivers/net/wireless/broadcom/b43/tables_nphy.c +++
b/drivers/net/wireless/broadcom/b43/tables_nphy.c @@ -2923,6 +2923,21
@@ static const s16 b43_ntab_rf_pwr_offset_2057_rev9_5g[] = { 0,
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
@@ -3782,6 +3797,10 @@ const s16
*b43_ntab_get_rf_pwr_offset_table(struct b43_wldev *dev) if
(phy->radio_rev == 9) return b43_ntab_rf_pwr_offset_2057_rev9_2g;
 			break;
+		case 8:
+			if (phy->radio_rev == 8)
+				return
b43_ntab_rf_pwr_offset_2057_rev8_2g;
+			break;
 		}
 
 		b43err(dev->wl,

-- 
2.54.0

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
