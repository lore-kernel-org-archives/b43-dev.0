Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9538EC38150
	for <b43-dev@archiver.kernel.org>; Wed, 10 Jul 2024 07:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=itH/YZURzq+Hek
	Up0KuDplQxquAlfut226r7g38+3vg442bM7ccHBeZx/+94AdT951SVMAzFQjMIgDHmL36SVVLgS7p
	k5QiSSamOaRUt1PMBlqQT6mQwzwnqbSqCrj+gprn+k61x1g4ZtOuKZQRher14pT7ZRMAARLebtdxA
	Lf6ltYO2U/eU/7hOCcw/ZdcQShcX40Vu0D4ekI5le1jr1Zd0iWMwuR7VVMcgCnpjHXqfaTZaeSAIf
	yNNm7I9NEI0BIDASN2wt8NALRhskPh2vd8AEKaafLgkYAT/dXELI0NklcVwnECff6dFiE2RnizzPF
	5XDQRorFXKexfyPdgUJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRww-00000009lXg-2SWb;
	Wed, 10 Jul 2024 07:41:14 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRwq-00000009lVK-0wit
	for b43-dev@lists.infradead.org;
	Wed, 10 Jul 2024 07:41:10 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 6FF0125899; Wed, 10 Jul 2024 09:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1720597262;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=OXobajT99PHIUtaf0yy6hv2Vcm4IWyQxFVYEpHElwzgb0s+6hZLVq9jrvYNl5rXRR
	 ZZm6ipu6Wl1Crd2zQ38yhJJ8XlFK4Qadl6ffrIN5NY/MfM60qtxG0cv12qcyR5HvQB
	 4+fpDyc/UdBaH4EbJOb3PBpW1r/NWJbaqg/Neom/773lIBbKPl261luuNtD8BG+mhz
	 GOiemq0HJL8BoNImN5RwBWaSCKMyFf19Hrg75i+PB2hwDkuLXCdq9gfc5U14UGTMQc
	 km9dVW/N4ouYU4tNFGr5uM0TlwWq+9bZn2JIbwOhuOPcmvc7ndNVvn9qwXsn0fANBn
	 +6ChjHtB/cxkg==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Wed, 10 Jul 2024 07:40:53 GMT
Message-ID: <20240710084500-0.1.be.eta8.0.n0o3ajkkkk@venturevista.pl>
Date: Wed, 10 Jul 2024 07:40:53 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_004108_998797_5ED538BB 
X-CRM114-Status: UNSURE (   1.35  )
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
