Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD814CF58E7
	for <b43-dev@archiver.kernel.org>; Fri, 20 Sep 2024 08:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=pK/tYkOekSJ8Gk
	Joa5w7YwgKCpXkRfmaUXVS3gxdqFpRwe7VnLdRjwcELhWI3CEPjoWe0ue9Ky0NKPg1LqhZ8H6uEXJ
	L2dOxywI2o2tvXINVdm+i25vS6Li7NVWgNbnKPavUkaU+v42SXIGl/p0a0hnFSsoaqiQ34UVx4z1V
	/q87n6HvHbeTnxZgxif3R7GmoNetkL46MW4ZcXzpP6nyZU1dHoBccB1U1G9aYVZaKX9SAbXNnWdQ9
	KsnLLBEb9YNK1G3wazqthWDJiQcZwOKoDZpd826bfGDeqiBSZPEeX+z9ILVyfqKlncqxlrxYJPumJ
	HtuC08aOFEefdQSNj9fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYiE-0000000Bhcv-2K6N;
	Fri, 20 Sep 2024 08:09:58 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srYdn-0000000BhFv-0esm
	for b43-dev@lists.infradead.org;
	Fri, 20 Sep 2024 08:05:25 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id B04CF264B5; Fri, 20 Sep 2024 10:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1726819517;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=sztG3SO5dE9hWyJ1RbIsKwrgwBq5BLc+Rw6Tjc+nZjsw69SURO9YvEDn4idmARaE4
	 wl4U4gXckAuTjsYlxtA007/PLQxBrtpaKOITtm4RGQCgtQVc2h35/vv2JCpldPeuSG
	 idZLfiYvu+y9+akL9EGxLF8FH9kZ2QbeyOY9Wd2sC8IxacNlIypU9AYxSeNuF+jDir
	 5KVBPMmhXxkcdSBJfywOnnGW53R32Sti8t5rGtmR5B574FAiglpaHpPuuBEQbEqfl/
	 k9peRDEw3H2dIBxJP8ypSax7sqqlRGDZXJyFlccuM1if0mTsMyKwbqEWA9lXgDqR6N
	 9BfhvX8WNzR5g==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Fri, 20 Sep 2024 08:05:13 GMT
Message-ID: <20240920084500-0.1.cu.iqf9.0.y7dg17hcbr@venturebloom.pl>
Date: Fri, 20 Sep 2024 08:05:13 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_010523_924430_A9B3EEEC 
X-CRM114-Status: UNSURE (   1.12  )
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
