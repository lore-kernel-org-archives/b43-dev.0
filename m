Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EEBAC021AA
	for <b43-dev@archiver.kernel.org>; Wed, 19 Feb 2025 09:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=kWUaj9ehHwxDCx
	lT5K7ifY3Oplizb02c9lM6a1fEGO5jFCEoAAzFTrE+LNyuVcxoNHmpBvQbo3mnOmeYds8KiYXrl3z
	Kb0szSK0yljWdKDsMBPRxqXPAH61gNfLKLliEg/IdhbrrbkDH6D3e9STMYopsw/lArxrcuCKJcU3j
	yiQ3q65QQjS/vjraOw3MKSOTvBZz4o1N+qt4SDZwVqqr91uZrTUd9fXFCTRNxJPLLf5gmz2Z67e4B
	ORg8RbUhsB1K6p9Zx460oLOc7N8R5zyNVBQF31uhb7vBV/+zXsM0i1KmcKiDVbs0UQ0mkENpN9V8Q
	upMA3uJdeb8T76x/PBxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkgBz-0000000BmXr-0fF8;
	Wed, 19 Feb 2025 09:16:31 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkfnU-0000000BeDt-0CUE
	for b43-dev@lists.infradead.org;
	Wed, 19 Feb 2025 08:51:14 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id E963C264BB; Wed, 19 Feb 2025 09:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1739955066;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=RZ5U+eFTa8SlKK6TZrmDQBM6YbqJHF7M228LZsHwiuyMLo650ddFY+jgpbqalMwT5
	 8H1BSh/ifwYnJ9LnndSeDdroypMxhwUIZeMYM3jg0mX9atu1VslWggAz/5KDgMcl49
	 ueiA08wH2TtZBFXkEb3r3SInO7KSuMPlFfIwu7K6V8tJpvevek8mM+RMLp9L+64kGc
	 uMeJ3dkb56vsyiynSL0NpB0Cqk/iZimdEXqlMT1dPDHdeCHvwuDeKjyZkwF1v7RvRe
	 msL5Y7nGJYHpoWfZat7CsigJWY2OYsNBRAVCUfnQIZnzFmpzJ+TNOEwrSWlrvgXKki
	 QADBxZExR5g7w==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Wed, 19 Feb 2025 08:50:56 GMT
Message-ID: <20250219084500-0.1.fo.iqf9.0.j0o63ol4u8@venturebloom.pl>
Date: Wed, 19 Feb 2025 08:50:56 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_005112_788741_A6C5D57B 
X-CRM114-Status: UNSURE (   2.67  )
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
