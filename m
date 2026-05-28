Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3C4CD6E4C
	for <b43-dev@archiver.kernel.org>; Thu, 28 May 2026 17:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNkBbXkaEiBtKM2uRzbOrO5EPYl6q29red/yxeeT7PQ=; b=mJ2Q9RQBqBYTwp
	rECLi+5UeHevm3KPLadolc6tV/M9EKqIu3Mmd+ctNdhgdQpDtvyo9ZmieSUIEHLdvIg5ueO4JQiY/
	4qhjt76zDJmJembfSsp6Mci+0U9lA1tOooZfLQFyM7qhD5trZPvpYhFCNtF3lcgRN9NxahC1QTQsY
	nhNrNvW9TvktGlpF5uQcGLhSbMYW/ER1Mqb4gtE40USkjiIc3x3ZcrDw4m3urei7Ek9mPo2bFHnDj
	oAWyaUXNmGux5Ra3eo6PqdRrwFv9GfcDZng+F0uGILmc+HcCW1aDpaEpy6HIi1E8yMTTjOD7jbPct
	hV/OVl03thdO/hOpAPUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaF-0000000667K-1gsS;
	Thu, 28 May 2026 17:31:51 +0000
Received: from smtpweb146.aruba.it ([62.149.158.146])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaA-00000006644-1Bb5
	for b43-dev@lists.infradead.org;
	Thu, 28 May 2026 17:31:50 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Sea5wczvrrbJKSea6w6A3V; Thu, 28 May 2026 19:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779989502; bh=e/hYjV7INXbX4jjE81sUHqotTmvH3P4OPUaxzlGVb8o=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=a6c6RbapPSkZq7gmJHA6f0SSxsNDZB0zqmSm1UQVdjVANRWpXlq6KaTRTEpPDCgx4
	 bmzw/f4sLHQuwkYhN3So075klFUGEKbKvDXQaaXhjOlCj8iBXWi1gbQDeUOlZiqAGo
	 GWwnZqVvJd1zo4il2fVIqlfLzMAlOSgtq5G/DRNw56f8AZxqa3PWFKqWYeVEJ8jnEh
	 WlupS8p1v9AsDJ2ZIcMbmTsQ70pYxN1p+Bj56ROtwfyFCvPAr6rGMOUUQZAZBH23qT
	 b//j/YIsdMB1l29GHpxH9GGdz2deQmAdJ2fYcHjfR/u4v+oVO73unuxlGRHWDWVizI
	 G2W/D/URbQ7CQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Thu, 28 May 2026 19:31:37 +0200
Subject: [PATCH v4 3/7] b43: route d11 corerev 22 to 24-bit indirect radio
 access
MIME-Version: 1.0
Message-Id: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-3-464566194d47@gmail.com>
References: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
In-Reply-To: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfOUW+OMsbislXLVfjghoLiIMSllfjXG3jKhyT1qtr1TPotfGmGoeb8vIdxFRzON3ha+X1I01ALnINSxjunIRNJpkd+hb2Tso3vfQ6c4Al8AAeBDPURzQ
 29rmtnLnULRa/0VO3EcRCGmWXrooQhLCSqu40xytABMkKlcKB3hRVoC95GKPgsnpJAd3K9lN6GO5nNKsx17R2Mutn7NSdr9S/uiqb1CtsCb/hg8E+yllqt/u
 ISNj8R6MRy9W4IQM8xcXYODVPcwBRGWI658r2/xDq9z4g/xbS34L7GLyOev25WmdqYS+z22dTV35Abi8K3uXSBOpyhKw+cyRTuLnPPUyqtk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_103146_856806_0B5BCB98 
X-CRM114-Status: UNSURE (   9.85  )
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

Rev 22 backports the older 802.11 core but pairs it with a radio
in the 2057 family, which requires the 24-bit indirect path. With
the current dispatch, corerev 22 falls into the legacy 4-wire branch,
reads garbage for radio_id, and bails out with -EOPNOTSUPP at the
"FOUND UNSUPPORTED RADIO" branch below.

brcmsmac handles the same silicon family with the equivalent
dispatch in drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/
phy_cmn.c read_radio_reg() and write_radio_reg():

    if ((D11REV_GE(pi->sh->corerev, 24)) ||
        (D11REV_IS(pi->sh->corerev, 22)
         && (pi->pubpi.phy_type != PHY_TYPE_SSN))) {
            /* radioregaddr / radioregdata (indirect) */
    } else {
            /* phy4waddr / phy4wdatalo (legacy)      */
    }

b43 does not support SSN/SSLPN PHYs - they are rejected earlier in
b43_phy_versioning() at the "unsupported PHY type" switch - so just
adding the check corerev == 22 will do.

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 85ea8fdd9..783af26cb 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4563,7 +4563,11 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 		radio_id = b43_read16(dev, B43_MMIO_RADIO24_DATA);
 
 		radio_ver = 0; /* Is there version somewhere? */
-	} else if (core_rev >= 24) {
+	} else if (core_rev >= 24 || core_rev == 22) {
+		/*
+		 * D11 corerev 22 pairs an older 802.11 core with a 2057
+		 * radio that requires the 24-bit indirect access path.
+		 */
 		u16 radio24[3];
 
 		for (tmp = 0; tmp < 3; tmp++) {

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
