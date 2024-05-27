Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FB74C25B74
	for <b43-dev@archiver.kernel.org>; Mon, 27 May 2024 07:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=SymqegH8RiYPh0
	jQXufQfy6xSNoY4qbkKRi+RPil8eb6dSsrbsrSaDVVvUFSxhJKQaiwDQ9L0N4YZiCG97IO6H/X/5M
	fN+gr6DTAREt0CLaLPB+kLW2eAM1XSQ+Vu9Xj2110aKjs7ZvYOjW23swcWufV+tnX19ut/ZW46L5G
	MY2znG8+yY7vKYZjH/s3RusS+S2SeKt6fEM0C2KsaLGWPka+OnN11NuoceMp0PjTt7QuwK2ZOuZGJ
	T/IIWJx1RtWCm4dV84sGgULE2qYrEE8OcA+/dA42S7Qh5f2rk3qpPadHawCOW9xY33xhlCu7RubpB
	di3z1U4V70N12bYuTKjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUuf-0000000E5Lu-17Ks;
	Mon, 27 May 2024 07:36:57 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUuY-0000000E5L8-1Cla
	for b43-dev@lists.infradead.org;
	Mon, 27 May 2024 07:36:52 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 07B7D2514F; Mon, 27 May 2024 09:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1716795399;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=rt3tK3BrsEodJB9Y+F9qHDf9W7qnU8ibmPdYygHcFnNB33Xm/Jhj+Wflj8KsQczR+
	 Z/F1NNcbNYBTivSCg4g2M5hT1FJL3phyLDIxKi0fFA/pF/7CYlt9seKswYHvIYfq/P
	 1n70N0SeG8AXFBAe3js1vk3HjAcWUjDZl9DdrKxYy4MaZupCEfE0m+x2z5Kwqve8B8
	 KMacx+eFIksc+poo2JhOwACbRty54uqkwKw2T9GkFbK5gPh+4iRXr2gYxZ78mMNVSI
	 OZHrRA+F4VTmfg+N5/elDUbiOLFrWNBMcWlFbHImUKNYFJrkxR2jqigNWh/j7wcQoi
	 il9XmbBzp/MGA==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Mon, 27 May 2024 07:35:57 GMT
Message-ID: <20240527084501-0.1.aj.eta8.0.dlsox3tk24@venturevista.pl>
Date: Mon, 27 May 2024 07:35:57 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_003651_065812_3B2B58C0 
X-CRM114-Status: UNSURE (   0.91  )
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
