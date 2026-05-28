Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA717CD6E4A
	for <b43-dev@archiver.kernel.org>; Thu, 28 May 2026 17:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLoDGd8MhxDQMGr5Ja9mg0HbJK+ZMgudADAfKNpulyo=; b=Cjegoxe05NhUFH
	emy2Yrl1XPzvu/0UqSISKm9SBSu4pWGlLrxGKJ5ohn0vMhbqq+csT261zKSJs+Ic/j8YsGA9bkydx
	88ntAluoGwfOVgP56Ckwt/gXYqyeo5U64lhpYtHc84NbgkeTMSC5IsCcHDC7P+rW3qwlhZaOxUomT
	3BbUfxn/+lPIfwwg95nHquAH0Tmtd3tsyemAM5lQs0+uj14OfHund7BA3od3wYU5+/CDvARxnARiD
	bgevx0x3mpltpMxoVArM3CTGEaLngeqbrzAVNZVj3FwEe/eVbodo2HhQPFlCw/IdLZwVJLpTRD5OR
	tdPLik8vDV8BAk9CROmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaE-0000000666c-0p7s;
	Thu, 28 May 2026 17:31:50 +0000
Received: from smtpweb146.aruba.it ([62.149.158.146])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaA-00000006645-1BOB
	for b43-dev@lists.infradead.org;
	Thu, 28 May 2026 17:31:49 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Sea5wczvrrbJKSea6w6A3J; Thu, 28 May 2026 19:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779989502; bh=SYIv7H7SpupxdJet3IQpOb3GAjuN7nX15ZBOx75fnxU=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=JjfcVLnv8Z9gfg+QYPbUQjBZthMfNSpIwH00Mgq/gLV3IUWNiOVC6erSiHyabCswF
	 HCPSI8+YsNtzmr1j079ODdWLTrL2vmYR+4t8mB+L9maQ45wtdKiSvV+DpJ25n2MGrt
	 3uuW6kDy+Nw+VAdhc8en1EkEnbIe3HgRQleXnb03iUP4LY8XDBy23KIojKzO1+0OeK
	 eMYj3Z3BbcV1tTcsuewJDFPAvDtpQjpRQ/09TNVfNaYMA9Xj0/s993omWdTWnxqDWt
	 2z6fRv/uJK3jPuYghmaqM63T+H6kkgAlC1npifv6NrnnNhb/eass3hPmUJQGqqiwSs
	 20gZwMipH1EZA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Thu, 28 May 2026 19:31:36 +0200
Subject: [PATCH v4 2/7] b43: add d11 core revision 0x16 to id table
MIME-Version: 1.0
Message-Id: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-2-464566194d47@gmail.com>
References: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
In-Reply-To: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfOUW+OMsbislXLVfjghoLiIMSllfjXG3jKhyT1qtr1TPotfGmGoeb8vIdxFRzON3ha+X1I01ALnINSxjunIRNJpkd+hb2Tso3vfQ6c4Al8AAeBDPURzQ
 29rmtnLnULRa/0VO3EcRCGmWXrooQhLCSqu40xytABMkKlcKB3hRVoC95GKPgsnpJAd3K9lN6GO5nNKsx17R2Mutn7NSdr9S/uiqb1CtsCb/hg8E+yllqt/u
 ISNj8R6MRy9W4IQM8xcXYODVPcwBRGWI658r2/xDq9z4g/xbS34L7GLyOev25WmdqYS+z22dTV35Abi8K3uXSBOpyhKw+cyRTuLnPPUyqtk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_103146_826011_1C726E60 
X-CRM114-Status: UNSURE (   8.60  )
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

Add d11 core revision 0x16 (= 22) to the b43 bcma device id table.

The b43 bcma id table covers d11 revisions 0x11, 0x15, 0x17, 0x18,
0x1C, 0x1D, 0x1E, 0x28 and 0x2A. Revision 0x16 belongs to the same
N-PHY family as revisions 0x17 and 0x18 (radio 2057) and needs no
new PHY or radio code beyond the radio_rev 8 dispatcher entries
added later in this series - only the device id entry is missing.
Without it bcma scan enumerates the 802.11 core but no driver binds.

The revision is used by the Broadcom BCM6362 single-die integrated
2.4 GHz wireless block found in xDSL SoCs.

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 37c5d9928..85ea8fdd9 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -117,6 +117,7 @@ MODULE_PARM_DESC(allhwsupport, "Enable support for all hardware (even it if over
 static const struct bcma_device_id b43_bcma_tbl[] = {
 	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x11, BCMA_ANY_CLASS),
 	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x15, BCMA_ANY_CLASS),
+	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x16, BCMA_ANY_CLASS),
 	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x17, BCMA_ANY_CLASS),
 	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x18, BCMA_ANY_CLASS),
 	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x1C, BCMA_ANY_CLASS),

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
