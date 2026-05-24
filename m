Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A85B0CD5BAB
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI+9TtqSTXgd+Hn1+GOfNuJCgsyqbVFomjdaGyUfpfs=; b=oKZoCROthCI5xi
	HbbnqP1mSCrqOYku3guycTNk+O/jlFY3FfGwgXThL6bKr2YcETG7Hv1BWrnmulbaCSJeQ+xsaI9eQ
	7PejhnjCKYSvtIqxotDRmkU2a6ffzhHLmBeOLvRLJkhcfA4pLUPTUTXlqkBJBkWP75ZOcfMZPmLvr
	Jphaczt2hucu/KTpPME7zQHjUG5h562ytzsthdU33e7Cmrum4aeDzYFJIASFtYeYgSyAeIqz5re+0
	ligDEOdluPCjobGvlmqesWzgo1Yt05vzcUl0vhF2FlbqHYlu61d66U9odsZKwBRMmwBhNWHxQ9uE2
	thJAG7PkY1XjoILRqwvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGSm-0000000Fgak-1YVd;
	Sun, 24 May 2026 21:34:24 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGSk-0000000FgSx-0EFz
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:34:23 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGSjwsAAMwf0DRGSjwF9mP; Sun, 24 May 2026 23:34:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658461; bh=RG0KZyQtlU1j74lUouM9Mvo7qOrsOrUFD/m4zDgFqlo=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=TIXm0K6+Ud7Otyd9JGISay2DBVJgm6ley7d4uhYVzCpCytA3L46Jej0geZrCk+/lp
	 rBDSZhjSri8v0AASNCBm36YLaB6EpvjoDaxpL7P6/3nH4lA67a4UgGIhBzyJNBKL78
	 Qg+4ysAFSMH/EOVC9rGcGGeulQ0sj7xsyxHUoy1T8n2xWqwN5QDK/n9FfafimHCFwh
	 zToqCzT6YrAW+wiTxl5vjLGFbFjkH502SqLzQqofp9LrMXnHjXKpGGKZQsDrp0C3dy
	 gXVZo8IakMfHY/7zmorTwhMdd/gu+EGI8zy7pEa+tU53tFOGUiOevTgQcZFnIN1EGf
	 bPYSqmqVBhLQg==
Date: Sun, 24 May 2026 23:34:21 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233421.3586440f@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfAjxe4MLZWq4FGrKWsG+dGrIeOwazvdChQn9UJRf7ZGS4bgHXonLXNFPaNn6bgLxjJ9Z24GTtcGakcSxL8puiaJipt3bU9HD5HpEN480QcTmN83t357/
 D7u560BfcSDpAkYrZRTXtvZp/LO791ZO8IxdwwO6mthh83pMToPOdMbWH/HrtyIxIqc2ze9ty94NFKebR5QxveIGfsR2DSx12351lH3OTo/u755B0yGrowGQ
 x/ocO8df1icjVYkCrgjsYxlgHrfCNDL5DYW0D9b1nWE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143422_263334_AC25ECEC 
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

diff --git a/drivers/net/wireless/broadcom/b43/main.c
b/drivers/net/wireless/broadcom/b43/main.c index 85ea8fdd9..783af26cb
100644 --- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4563,7 +4563,11 @@ static int b43_phy_versioning(struct b43_wldev
*dev) radio_id = b43_read16(dev, B43_MMIO_RADIO24_DATA);
 
 		radio_ver = 0; /* Is there version somewhere? */
-	} else if (core_rev >= 24) {
+	} else if (core_rev >= 24 || core_rev == 22) {
+		/*
+		 * D11 corerev 22 pairs an older 802.11 core with a
2057
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
