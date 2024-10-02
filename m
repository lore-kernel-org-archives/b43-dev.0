Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE665CF31A1
	for <b43-dev@archiver.kernel.org>; Wed,  2 Oct 2024 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=XsZA4PW3H5vZtc
	KYq0ddvTquehXcrF79+YPNMp59lAPn2Fvlaa+sA8HcvUZ7HA1ffW6HRZo7xsq5pgR0bWwQjuTwUKv
	c7+YrghbFQ5iR5DUgWWiCSN1ihk71rJ4FVeTZ27ZOAyQWSyw4hUB311JLZNRos4Vgj06lCeK+fKhH
	8Df67w1roTE/rnCj5pX7/NXLwu0+x7eskdfUskQxDEMB/PcivePHQnpUVqb+/ELVi1L8J/0QNAM26
	jpUXAKKnp29sVE3DD/4GuH4ade5vvEYfRQrTLakS+P2EuPAUEdpzYiRHAuE5sOgrFj7X4mp0zgXRl
	Bq65Yhp8/nScot6yAjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svuRd-000000057UI-2AEB;
	Wed, 02 Oct 2024 08:10:49 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svuRW-000000057Sj-0iuF
	for b43-dev@lists.infradead.org;
	Wed, 02 Oct 2024 08:10:44 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 8A7E7263BE; Wed,  2 Oct 2024 10:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1727856636;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=0LrGMkcXF1eUDA/t7DEJe8EEZxEj0cAHphdwSVHCOiGfX+uMV3/cJfEqeb9hqAJZG
	 k9YWB++5uPqnljf6W5Zinjt65NbBLNK8hFPnQMSPsoJ2mEZv48KB9h6vwIX10BDvJ0
	 pyN8tQ+PMxc7AHgHiNxte7/ylcBOYfX3YM5ksUJtBRezG8vVA6UqEhJOmkggMctJl6
	 6bk/61iZTNpaOVd3TAWxgBHuFzc2N14b6gxJ4i5fANGGSIeqyaXBFlC66p+0Kju5kM
	 Q+sLGba/4dAK7iC3AkVWo0SbLxCiaYngwidVGBKCrcJeujgqEMka33a7Wg2TyjdxZJ
	 Jsf1qyNE9DxiQ==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Wed,  2 Oct 2024 08:10:31 GMT
Message-ID: <20241002084500-0.1.d2.iqf9.0.bep08j82qd@venturebloom.pl>
Date: Wed,  2 Oct 2024 08:10:31 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_011042_919024_1D9E6467 
X-CRM114-Status: UNSURE (   1.49  )
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
