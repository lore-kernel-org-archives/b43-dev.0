Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91509C02196
	for <b43-dev@archiver.kernel.org>; Wed, 29 Jan 2025 08:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=JUK2dHcBsKj2qP
	r5UmRKgEGIeSpc7+MmNDa5rY/hvHuvXIUdC/joAzwjHx/tTJMXmSoWsJDkQ1SpC1Xsr4OH1dqg0QQ
	dwkjg6OM35xFubTbnz2PL4KJIyYY+Dd7NeXT3sQZBxOPqGEkhEkOajLBgAgG83IolpaFRLz667Vrr
	FG1o+8wRbBfg64LLIqWIzTB2QBOVMSPYR8gdPHaSJ1EMAKKXK6A065FHTjfYWmn2khkYraagMD7FL
	AmMbHgl6b98+njVEy6h8muTKmDgs/ixUH2uOkCsIWrY9c8DevsJZ2nqLkxnVQQd4AZu14p7x7MtCf
	YbGhVwuySl0nE2WebJWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td3l8-00000006a5z-3grU;
	Wed, 29 Jan 2025 08:49:18 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td3l1-00000006a4v-3rXH
	for b43-dev@lists.infradead.org;
	Wed, 29 Jan 2025 08:49:14 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 9E3A625E42; Wed, 29 Jan 2025 09:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1738140435;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=zr3qySEmNNFhEp6dOGkdx+WOA0DPnuc4EfQ0S2utnbvyPVkx3r+AA6XeIQkoih7F9
	 YRYGG5MXHIadD0obc/o95T1mXv6PSJvlm5bj2mn0QUvPsOC6lDboDmzkoryrANnoHc
	 CFsX4U01vvrEY0fYrOeuat+gvf5kPZojKU1r+OUtKOAsSyTZtR3M38rXYadvwlOM0B
	 +YTvjqzH1dBwp5SVYz7icn76jjEdzrPCcWZH0p+PWNfEquAHs4KZx+WNlBL7JqC+TN
	 mTvADT6MrnA11aI2XgDtltQWMLMdbq+uiQZitNB3KPidw2aJEPs9A8rKX2tY6s8pEi
	 YBzSLowuM3vWw==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Wed, 29 Jan 2025 08:46:20 GMT
Message-ID: <20250129084500-0.1.f9.iqf9.0.ch0yidi0pd@venturebloom.pl>
Date: Wed, 29 Jan 2025 08:46:20 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_004912_642950_D4B41C97 
X-CRM114-Status: UNSURE (   2.37  )
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
