Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5085FC369BE
	for <b43-dev@archiver.kernel.org>; Tue, 15 Apr 2025 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=ABTuzgcHJB2VBZ
	RoAC1JiBbUuNnu7COdqYQbHObslWC1xGp51jpw8luY8PFTp1CtKD503NAYfsSGzwnWBek5Pd8yaKf
	YZwPg8hUgo9X8x3R5abVBLRGRqQSaPL1Itnho0aeQn/Hcd0LpK7LpwU7xEwQOS6dy6jWVLtiTTOVX
	zpctMhTnvUpEND01fZkTM/a29fngb8xNXOlQKUPd43qgUcB9A1MR95qbb7Aoapew3ez2inviGvfHt
	WQrUY43FYJm1jwI3/suQLtPF0XfH9a2pVOrB68XPLHJUnX4JUJLT0tz2sQnXNp/kTFMv7cDhuEFjA
	MMq1UIfgwYHrUeAA3k3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4b3h-00000004rzR-2Tg2;
	Tue, 15 Apr 2025 07:50:17 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4aqR-00000004pOZ-1c59
	for b43-dev@lists.infradead.org;
	Tue, 15 Apr 2025 07:36:37 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 7162E2607F; Tue, 15 Apr 2025 09:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1744702575;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=Z9TMhrD21RxBG4D9TNy17cXIFO0rLi3yWoAxLmrKrt2JCnFlbPPPs3uSu46/YIM3K
	 qMWiNzwcJLLEQ2gR7r8/eIZwVQSrbNKLXrKIXD6O0G9eqmhcodpxlig6bjh+Rx4GNy
	 GfMyU7WWIWhyIuPafFAV2I4UR2rMeRq+XZ34dibVsjk4TLCrik/mDySR647XsijfV5
	 pAqYidM0N3iO1wkfRHR4TpSAyineRjD9q6x/740TZIYWWg3EfxXp8GiIuawmQwLgNk
	 wyhwwQq6yAwd5VrxV+aBxQR/0HOg7IFEFDWg5hTYSKBrcOpBpyzyHQt4QIVTSZIjzW
	 1Ueaxe8k5M4NQ==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Tue, 15 Apr 2025 07:35:44 GMT
Message-ID: <20250415084500-0.1.gr.kry9.0.ria6gzwbm0@venturebloom.pl>
Date: Tue, 15 Apr 2025 07:35:44 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_003636_119499_161BB418 
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
