Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C27FC52D73
	for <b43-dev@archiver.kernel.org>; Thu,  8 Aug 2024 07:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=gy6jDmIwtMi/hh
	9PxJ91U8heFk1tRCmZT2k/1FLWSaEzl+2r/GQsu5MfHN4THWrz4sWeUU8St2v91tC1TiTEqKIhvM/
	z15KudiBITZWPRnDBG777KGFYiiz+S62q5KubaCx/JmPnxQ1lZ9fEKiGzttMwYyXAJagtRD77zH2m
	JJN51iXVjtgT9HH+Hub7Ffm40w5Oyj9BiYjFbuYGqjUuTOu3kUb1/wv7rACmJn0qQASeKS6gjuPyp
	ucb8VKJVAaRdqvuoM+8AkhWTzux/2oFdMLZaz9VVYcd/9y//smu0AfLgUgHHJNPILSpuEsOJxqJ0O
	kX93QmxsWzK3/qAbvuBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbxqq-00000007TZ0-1CWj;
	Thu, 08 Aug 2024 07:46:24 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbxqm-00000007TWV-1Zim
	for b43-dev@lists.infradead.org;
	Thu, 08 Aug 2024 07:46:23 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 859B025598; Thu,  8 Aug 2024 09:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1723103174;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=KYqw9Qxwy4m83Kze9s2whl3X6akFkj26SCpsVZ4EsVniC/SUo2Yk9d8gCQcFkSpjD
	 IGCXQMLih9oMOQXvJ0a2q68zvViRvlLye8X2bithc7yrQCe/DMWDWuw/uAmIzUXUCr
	 RSEVUkVMo86uwZSq0mHtSmOcrGO8Eo6mFyboXMPGrADWrb/1dO4LtuSNmySGzcHMhj
	 TM3yyN0mxZq6PqztmpECODbjktoYDKKzIZErUMA5vrOhIi3tbXD8/zo1b5QjSA9CFG
	 +34hzO7IgqDvjRj7vj2QApX6B1eOSxvGWQva0JzHuaXJpPapGCTYFXzNfNfMsB8iwR
	 38FijjSgXR2Xw==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Thu,  8 Aug 2024 07:45:33 GMT
Message-ID: <20240808084500-0.1.bz.eta8.0.fl277n58b5@venturevista.pl>
Date: Thu,  8 Aug 2024 07:45:33 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_004621_133441_28ECE370 
X-CRM114-Status: UNSURE (   0.90  )
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
