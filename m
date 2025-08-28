Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE0C3CA0FF2
	for <b43-dev@archiver.kernel.org>; Thu, 28 Aug 2025 07:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikefElddZtVsDT64pJ8G91l46nTf0yWkFOKxQ952Oms=; b=PVkGT5zWXVXnWs
	rCrzdURkBcw7Ssdbtm3kw6lumBbcsKlnMqP/WuRdtYgq+hjr/KbPm1VT6+AFsoa9qLpOC6Is+ENdM
	JHfKTq0zFQX8RoGy8ak2xS+e/D46KMk2B3X2yB+2XRdkHRtgZpVMUuXo/MzanFypqnPQdQT1avnH8
	MzfIbXbfMnXDCe8up7LCcFMW202GWHyc3niKyBHJhD2Xj27U5+WsAPsikjp7GGrfT/YzK+HvPDpMO
	cV7g++gaYHAU1uokBILcer5nuxBEf3QI69kq4BuEP2sKDEABx3qIenJTECDTBrGN1XAqdxRL6FAIY
	KttalM9n+X1GM/jG6B+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urXIU-00000000eLK-2OQL;
	Thu, 28 Aug 2025 07:43:50 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urXBh-00000000cLk-1egY
	for b43-dev@lists.infradead.org;
	Thu, 28 Aug 2025 07:36:50 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 3523A274D8; Thu, 28 Aug 2025 09:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1756366605; bh=h3k5zkAZf6tEpPtEQC0QHe2u0TTQ7ZFRjUanCKLrdLo=;
	h=Date:From:To:Subject:From;
	b=U9hAzgnJg+E7e/rrTtfoHlNIAovVFC3MHKAdFVyCYaRQzugoVx6XUc89bkqW4goNG
	 +TG7UFCQIA+3q3dMiFD4SEGcj3eCcwEg5913YpCJyJme6eFbSxWslMZj8Zwzt47A2g
	 MZaHdv33KEPKcf4ObpUXJkmMSOLBS0658k9IlybkDmqdFe7t22VwJoi/yDbupnPp6a
	 5BpkLQtjUO6VZjLuP5W2kxCp0iG+xT0CmDmjAdmkhkqvXznjxToZmA0HO5R7mB22CK
	 T6+X/ERX8r4Et1mxnWY3XdW6wM+kwLLxYFeAXAeoGxHuc1rcb9ZekNnEjAt5BIHUct
	 h4NX2/QrskoPQ==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Thu, 28 Aug 2025 07:36:04 GMT
Message-ID: <20250828084501-0.1.jc.1o1ec.0.hjs1dl0658@biznator.pl>
Date: Thu, 28 Aug 2025 07:36:04 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_003649_714694_C834967E 
X-CRM114-Status: UNSURE (   1.22  )
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
