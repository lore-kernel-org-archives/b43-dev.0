Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D023CE7AB0
	for <b43-dev@archiver.kernel.org>; Mon,  9 Sep 2024 08:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=q9RutFTzMAzfzH
	zKfPUI8z0xJQkS6dGYFARp1JY7GH30fgTjs+yY6lI+ALlNCo74yK2f054v8PA/aVsaSTGrTkhU9d3
	RNKyCsSaUw+g86TkDN/Hm1TDA884uQkuG/LWGf6PvsJpNebr58EI+AI79LCZufu3j3ZGAjsuOx8AH
	OeJGElgx54ZveS/cb+hQ6u5OPaVt2IgKOVASyvQ2NT7xfl1qdmHykebuxp8DTm3gn9drwgCi/FDIK
	jSlWfZ1hU2Ip4yOdCcxQKB4Ojbms+U9m3j26Gdjgh7Q1Lj39FcmfTIQscZuK6e7+/WxGKUgJHQTz9
	KR3bBKRIXXBIesySUKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snZPR-00000000z7R-1xE6;
	Mon, 09 Sep 2024 08:06:05 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snZPK-00000000z5x-28Cg
	for b43-dev@lists.infradead.org;
	Mon, 09 Sep 2024 08:06:01 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 6B01725AE1; Mon,  9 Sep 2024 10:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1725869153;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=MsSZi0Ohnwi6/x29qyeN+nBd46EFGO2McQzUShPegKl9I431bcdPdF+IKqkYDbSr8
	 BsXDReT6pBiFhdiHWBERsBCS2XjZT7flCDk2rh7ZkFslP6SNQeSBLVLLtm+j7CZWsu
	 OGygSGM3b76dqeEG/NI9wzC04uLajS0m/9Tl/9Stnz3AkjSZvrNTI06qnJ+dbgu0B9
	 aN55owZjbgc3RqI4Tufm25Pcw0J+ePiqpcaPtnOWN0UMZn06GwaQdcKE71ILzCozpv
	 ErprsyKGR4LFp62U5YpnEmy2oJ09XjDOEBeXXuxTSKItecUijWAmkQgpUzEdry7Qvc
	 4P5q7mlTNkNVg==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Mon,  9 Sep 2024 08:05:29 GMT
Message-ID: <20240909084500-0.1.ck.iqf9.0.a9lq2v7gjt@venturevista.pl>
Date: Mon,  9 Sep 2024 08:05:29 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_010559_361650_DA5B11F3 
X-CRM114-Status: UNSURE (   1.26  )
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
