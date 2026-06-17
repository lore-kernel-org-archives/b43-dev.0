Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60E4CD98ED
	for <b43-dev@archiver.kernel.org>; Wed, 17 Jun 2026 21:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHD/Yfz1BJqMLi4ovkQF8aIe49T10hpyR+tKfo6TswY=; b=L0aVQwLucd5d/h
	uZ5HEjvCPpo9JQq3/2BNOsunsbJF+91GCnF1xz3YLTFl4bD91WmFxprUPkNMuPrfW+DgHVcs2WCii
	xEp92+DjrwHuDdaq39348bAbEDAniEXzSR8GQ+pWTBeb8Vmm8rTEijVlt2RXRFwfqKrFWFAeRTmT7
	sg0ZF8KimdufhKNK+xMpQTUKSPde/LDErdCTLe0XcqNs5N9nWRs1vOZTiqkCoMCmLHoC5d7+Aq39V
	6tyrUsuiP02PepXfqmE6JeAKR/TuGNFJw6ZJOGcUX69JkD0a/jymWzmOhHwmQgYc9aPvFIHo+TnKE
	EQxJKbCk9nrXOWtjFATA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2Q-00000000MOk-2aTu;
	Wed, 17 Jun 2026 21:43:10 +0000
Received: from smtpcmd14162.aruba.it ([62.149.156.162])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2E-00000000MMT-38mT
	for b43-dev@lists.infradead.org;
	Wed, 17 Jun 2026 21:43:01 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Zy28wJnjp4OeoZy28w4699; Wed, 17 Jun 2026 23:42:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1781732572; bh=wbPr2nXaCc8pvhEHTa71CECEb28g9TLw8qb1ftmdqDk=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=D6kXGsZlSYC05UaNjXwV8d23mIMMuKslM7yA0k0Hh7OaIosmov8nkaKBexdSqGi0P
	 yVJO0T4y9FEvwwupSe+hcgcdIGXhkYqouW7YhmaRR2Vmm8Tpb37drPzebVx8EYLY3N
	 Eb/3CteJubEYdgGMZLpq+84Kjkgv+ghTExkV4d6f8kZYkX8vXbKtuUHMsYHyNm8x2O
	 0mVPuftiPMqAIVMS+BNilZU1z56AP9QV4nGMyDp0eP7j5X0DMgqQAUxhH3KezK6qEN
	 hNoEoMpS0deGyrciE4vhJHU4BddCH6tobZaB5+1lik1SWpKgWjNmtb2XzDKAJDanrF
	 ygaA6rd62VzDA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Wed, 17 Jun 2026 23:42:08 +0200
Subject: [PATCH 1/4] bcma: host_pci: add BCM4352 device ID 0x43b3
MIME-Version: 1.0
Message-Id: <20260617-b43-add-4352-wip-v1-1-c81323496720@gmail.com>
References: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
In-Reply-To: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, 
 b43-dev@lists.infradead.org, Alessio Ferri <alessio.ferri@mythread.it>, 
 Alessio Ferri <alessio.ferri.3012@gmail.com>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfLXwwPZf+zvRvaxi04KLBEA+7NwsGZPt9cEHom9ia9PgTlNGuLphhMD0DYzzhzekT46IGqoJ5Ci+Kv0ZjxbyfCH3JefsPZwnhqNHbOgW39uO49hQBP5p
 Splrew9fv0Oh69c1jydST3GMK31ZUjC2UNWnoBedbHQHGbshruON6Pz7A298As4uFC4oG9gmHfKSkUFr2W+nN1X4HXptdwrPjekUYgEDcY6s8vUJt6eqj0Fv
 NkbAHhct2USse8BkK/cgGQoJ+B8SKA7b8l4bZrIvCqox+9UWYLSs2vcQlRgCxJ6rHt3v1JXYEPfKlyHmPkRDv/93Wu1CrnlNm0XJ5MFzVYv2fi8zEwrBkUPR
 w39iFSpaFaIwlk86rmDfMUFWpRSJQHuJ7f6yX/k1jmw6tW/Ke63EXNVeykJ/I3AUlt4Rk1n3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_144259_265839_F98A01E5 
X-CRM114-Status: UNSURE (   8.29  )
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

From: Alessio Ferri <alessio.ferri.3012@gmail.com>

The BCM4352 is an AC PHY. It is missing from bcma_pci_bridge_tbl[],
so bcma-pci-bridge does not bind. Add the ID.

The chip identifies as BCM4352 (chip rev 3, PHY type AC); b43 with AC-PHY
support handles it once bcma reaches the D11 core.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/host_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
index 3dc2985063f1..f6cf722a3798 100644
--- a/drivers/bcma/host_pci.c
+++ b/drivers/bcma/host_pci.c
@@ -298,6 +298,7 @@ static const struct pci_device_id bcma_pci_bridge_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a9) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43aa) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b1) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b3) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4727) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43227) },	/* 0xa8db, BCM43217 (sic!) */
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43228) },	/* 0xa8dc */

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
