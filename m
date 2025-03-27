Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B25C9C3600B
	for <b43-dev@archiver.kernel.org>; Thu, 27 Mar 2025 08:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=2V9GtBiF+FA1Xh
	WQc8msclcD2msazsTRkiqwu4eq5SU7zza/BkI17xQ6qh0mDpZ26eEJ3JPgn7KIfJbakpBV9j1lSPS
	Ou62/auifrD6M7QMjsMDSiVIagNoia5k6gFfwaRekRUeKIjb0nFsWMJhEN+UQn28+wTdFmAwXv6Qw
	soFflGB0/3b2Fxe9AF0XLznf0/UwkNZMHsAwlqSg9CLLmiEqQnXDvQR3Ia/3CWGsPscJQQNQyfa84
	xm8ajjYBKepGFXwmaXc0ATfLP9PWOXnXi9McthcY/HXAmZRFa+4w/ewVdsMgVQC7dSCHUKJuY6FhL
	bl+LD3VyrgFKNn6ZFbqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiyH-0000000AUsS-2i5b;
	Thu, 27 Mar 2025 08:52:17 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiy9-0000000AUrv-28x6
	for b43-dev@lists.infradead.org;
	Thu, 27 Mar 2025 08:52:13 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 9463826C01; Thu, 27 Mar 2025 09:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1743065506;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=MYo2o/G8cLj1rOLv5JnyD8edyGr0EsnOyhCp4VI8J3sU7vMtMLW0gou6Jz5mRJYzj
	 GPeT1Ro7SVUFnNe8IC5NEFf1qpYfN1j4aHU6bo9LmJzJu001tMphbYgspEvEHzNHAV
	 NT0ABKROEDuQ2OXvQAzT10JuUN/93YjCeX5rkBef1I1GsTlAhfpiK3OYyTRZ2ueGlN
	 hZc+VxrQSoCcLIoVkMH+NFzdvlQbygLrufKq2hAZfaMSmmwoccfJR7o/m4yOgWWe9i
	 /7Ir/SxwHUvrRvtxZEtoDEdiDfwfomRr2XuVCjLZkYjc7+O6V4zc4F/uNe4RwqfLwN
	 g0iyYT+IR4f2w==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Thu, 27 Mar 2025 08:51:05 GMT
Message-ID: <20250327084500-0.1.ge.iqf9.0.m3797r2fh7@venturebloom.pl>
Date: Thu, 27 Mar 2025 08:51:05 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_015210_243596_C65BA766 
X-CRM114-Status: UNSURE (   2.21  )
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
