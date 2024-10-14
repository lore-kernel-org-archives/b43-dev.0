Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06C0CFC501
	for <b43-dev@archiver.kernel.org>; Mon, 14 Oct 2024 08:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=w+g8ROsJvgapas
	JB0ldvhu4RoofLbfHBdP6OqELFw1A2p63XmI4jryqboVPJk0RffdDIMM46oyFQ0NCFQ0EpTTU9RcS
	rmf29e0HnZLlpef9wTmktiDucCLRRvJcvo33xYpQE1fZROH2HbMn4Ateev5gxNoHqag/5YYTwGHiQ
	B0f++n6ytYdt64ykIXSFusSm8LO7sUR/6iZXlLiKlvuLInEGxIN9gmhxhqSVNO+nftFuDiFJ1zro2
	m5/4bEkmBMQiZLTeEBAJK0SQ5Y+IStegV7/9bQF27jpIQS7C9nq18oHsse5QefGbW48Wg5gKLBxJz
	zrsGuiwPywj1ypFGd8aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0GKJ-00000004FLJ-07K9;
	Mon, 14 Oct 2024 08:21:15 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0G6J-00000004CP1-0Edk
	for b43-dev@lists.infradead.org;
	Mon, 14 Oct 2024 08:06:50 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 1887826BCD; Mon, 14 Oct 2024 10:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1728893201;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=v7rnfG2J9qqiIDHVdPsZ5wferj/ZBIUkvkvOSFcWisu7pjhOQ/5IkHo3QFvaQuhKq
	 k0n+GL2hX7GQpxCE+auOf8NouFghIpNfIdtOgJbZSMMh4Mwly9K7yquO2XpIjGFlg2
	 3ikbTi9zqr0Xc/zTqueepQ3347aidtpmon6fL/j/wuXVQ/1nXYxORFfvJeCIkkogAE
	 xCjzIcP6Gr1WaohcPvJKN09TvIR7rgbkufD095VN/4PNakiGg7s8/6VUMUhseNZTcX
	 HiG7kYLBp40poVY9mRKgy5NUcihMax6xms6yo32mi8UHdW5nIYELYh22jPGChdbrlC
	 e9yb4dhcCJDEw==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Mon, 14 Oct 2024 08:06:01 GMT
Message-ID: <20241014084501-0.1.da.iqf9.0.0lons871y7@venturebloom.pl>
Date: Mon, 14 Oct 2024 08:06:01 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_010648_134750_E8A2C66E 
X-CRM114-Status: UNSURE (   1.05  )
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
