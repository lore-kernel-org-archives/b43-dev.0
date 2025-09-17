Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38D01CAC598
	for <b43-dev@archiver.kernel.org>; Wed, 17 Sep 2025 07:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikefElddZtVsDT64pJ8G91l46nTf0yWkFOKxQ952Oms=; b=WBIsPs5AcTq1n4
	cmbkJulh1FQpKQc6wBtTTbIGeCoVVqWjxgJwrEbUUUd3bnoonr0NZzYZ1bJ7O4KjeL0xN6ZuVfmct
	diyDAZ+0/RpsAszG7SKE4zfvD2gFCzzNNCmsc0JpsRwEUX5075JuNHMYM1jC3w9MiNgSM75NUnEuC
	wbuvVHvmh29N8hgpkOF1/mt1IBNwLo/PhkPeVVIAqi/xb588cBZNBSdxU9M5H0nxrKsQqAZj+TXyA
	EQG3PQjAeow8wA6E9+KgKPDimoV+FFuO1Br6A/4Nia4Jt8n5yQTCbi8qzPuArhI2uoigDlPIZGn4T
	gha86TyQvastOf78lifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uymkM-0000000AVFl-3cNJ;
	Wed, 17 Sep 2025 07:38:34 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uymkK-0000000AVEx-303x
	for b43-dev@lists.infradead.org;
	Wed, 17 Sep 2025 07:38:34 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 0E3E027722; Wed, 17 Sep 2025 09:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1758094608; bh=h3k5zkAZf6tEpPtEQC0QHe2u0TTQ7ZFRjUanCKLrdLo=;
	h=Date:From:To:Subject:From;
	b=SXbwUPnNF20D5SC2duBV3kvyVRE2nHVliFgSZLAq2BDNc9Bj4tdu8covTp2JUi61o
	 2BKpK3izALnBZSc8aaOGjSfX4pf67EpmVYosyGEd+wgIvPNetNS7DQw97GniNiNCd5
	 IeOf1VlPNnfjj2ZOpgtkaoSMh5PnArrq0g2g+Jdl8RXrMVZ0GM67hVFgBq9bzpxSIx
	 z64/2FOOvFP6ujUou5nTsXsKSy4SchZt3wmPHkk4CMDM3c2bLF1ORNxCw2li/3gmuN
	 OC88n8UH0KTMJgaTIu9i3tSjl9W9SZpiiW353SQzz7cDS93Wzgw8gM9UbLG+0mkJQE
	 vQHX1cUa9k63A==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Wed, 17 Sep 2025 07:35:59 GMT
Message-ID: <20250917084500-0.1.jq.1whp5.0.kp2l3wqf0g@biznator.pl>
Date: Wed, 17 Sep 2025 07:35:59 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_003833_040208_84E22212 
X-CRM114-Status: UNSURE (   1.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKcG9tYWdhbXkgbWlrcm8sIG1hxYJ5bSBpIMWbcmVkbmltIHByemVkc2nE
mWJpb3JzdHdvbSBvYm5pxbx5xIcga29zenR5IGVuZXJnaWkgZWxla3RyeWN6bmVqIGR6acSZa2kg
bW9udGHFvG93aSBpbnN0YWxhY2ppIGZvdG93b2x0YWljem5lai4gCgpBa3R1YWxuaWUgcHJvcG9u
dWplbXkgYmV6a29ua3VyZW5jeWpuZSB3YXJ1bmtpIHdzcMOzxYJwcmFjeSwgb2QgcGxhbnUgcG9w
cnpleiByZWFsaXphY2rEmSBhxbwgcG8gc2Vyd2lzLgoKUHJvc3rEmSBvIGluZm9ybWFjasSZIGN6
eSBtb8W8ZW15IHByemVkc3Rhd2nEhyBwcm9wb3p5Y2plIGRsYSBQYcWEc3R3YSBmaXJteT8KCgpQ
b3pkcmF3aWFtLApXb2pjaWVjaCBNcm9jemthCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
