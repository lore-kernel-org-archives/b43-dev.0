Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AC9AD690ED
	for <b43-dev@archiver.kernel.org>; Thu, 28 Nov 2024 08:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=F9gcKEgDsvoQUE
	8qeKRpbRIpkNlKSZxtUpk/ZpS8WvgutOmMwMvppaGsr5y5L5Wrg8uSQNPhsM2fGjrdEN0Mi8Zg5AJ
	Y0qtfrsh49rG2jux8iIQHBYh5OHxJqneB8lhKmmk3W/zRD5i/lht7s2bFEWOYmPKmTnpfa88nDv+/
	q+8wKQEaV4mCxb37XzoUPDkPaXPuby9OPWYkZxa1zhLTImLCkQPfrC3SiuopG4P63voMR1Zrj2Mk6
	DtOIC53m1FxtQ646a6rC/qebVUhyKyGvvdumBefqM/ZcAgoSV3WxgeAvJgQ+5e1QJZjmpCbTGJ4Ic
	/oM60NuRISZ4WudBliTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaKh-0000000F5IH-3KD2;
	Thu, 28 Nov 2024 08:57:07 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaFY-0000000F4J1-3UyX
	for b43-dev@lists.infradead.org;
	Thu, 28 Nov 2024 08:51:51 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 935B42639E; Thu, 28 Nov 2024 09:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1732783903;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=HintXL3wo9hFj8x86rTfnrkDoLxM9rnqwu34ruRRSB7sRqJC/lRg4vPFA5r9i2Emd
	 tN7DLKRRxJpqIEcsjeRsSVXX6gk9i7Dczzrs+ivjjLbqur1uWJWmyItfZmUquwc4Js
	 BF23ZuqcsdR9nbY0lNz0oSqgIh8snnxUCOKnPSbE3NKR2GaUPNxYopxNOylLoCK/FZ
	 1Oxi2RrzM+kjv+2fUwa4Bz1MmrXRYd3bnPeB5ghqNbTjzBDcuatR1S06pE3O7fjKOb
	 +yjpQ8l+LZFyD1WJ++o7LwBgPHUMsiDfzTI+i1biTt8jj7HWJCo55E6QxTIbHjszzG
	 X5Ceu2eOVA6OQ==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Thu, 28 Nov 2024 08:51:28 GMT
Message-ID: <20241128084500-0.1.e5.iqf9.0.ez82f6oh0e@venturebloom.pl>
Date: Thu, 28 Nov 2024 08:51:28 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_005149_570756_8747B866 
X-CRM114-Status: UNSURE (   1.88  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhwoKClBvemRyYXdpYW0KV29qY2ll
Y2ggTXJvY3prYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
