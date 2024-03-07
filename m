Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CDC9C48BF6
	for <b43-dev@archiver.kernel.org>; Thu,  7 Mar 2024 09:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=iW2LdFX0NwwRk5
	x8yVEfbW6LxMYTl7c2Ib0JBn8466HybCthB9TgksDWCtGIAH9fkaDma9Fp5j5kvbd9cAUlOpixG2O
	UcOxPHKv1OZEFuqhSuxpDv7r0aejdNdtCwALIvD1SrxsQ52zSvBYua3EyG/ae3PZgKWIWGrHbvRcA
	qyd0pkxb0o93pIzVLg4Lhcg3X+kx4O6+LEHfU3Pol7P0bQ9+mCtog3iQZzOSflk0DmaI/v2y8WQKA
	OTClhPE2mtAaAYumFcBoqkRW5AXGjyukvqhYE50NSltwzuonRY2+KgO8Psv9GE+CB1LThsSJdSzc7
	itZZ4/+bfw20xTacUaEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9d2-00000003kR4-07vS;
	Thu, 07 Mar 2024 09:01:28 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9cu-00000003kOi-1bEP
	for b43-dev@lists.infradead.org;
	Thu, 07 Mar 2024 09:01:23 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 8FB4825156; Thu,  7 Mar 2024 09:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1709802074;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=MOrzIXhDNWqqw/cMq0KfrYxoeDahZBQRP6v3MECDd78cszb6vuTCCrKzSbP/9YEgY
	 3kVMxbGQg5U2oUYoq1ihseHxQ79mv9qsOZtGgsPAqcAacoAd/Sed9dUJ2pTY3l7X0e
	 YKBw6+PHDuJxJr16ynpgGx6wKXKfQwUMkuFQNnQf+VqBGlFHWT5HynpjdCd4qhZWfB
	 OxsjBCbWn/uNg1s7PP22lRvNj2FNss8vmcWFHi+RgewGn+qqXiYfiFFMM9sTujAG4V
	 7FtG6O9wpckNjNIEe8PDSrzql6Tl6+7y88UbZRrCVQ3qNTbw9T9JR5cBsdhcXUfEVc
	 VWy1FLFE3XmsA==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Thu,  7 Mar 2024 09:00:58 GMT
Message-ID: <20240307074500-0.1.90.eta8.0.8gbj2dpkdz@venturevista.pl>
Date: Thu,  7 Mar 2024 09:00:58 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_010121_187639_6E65FBDC 
X-CRM114-Status: UNSURE (   1.91  )
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
