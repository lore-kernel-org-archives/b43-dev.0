Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6639C3DA49
	for <b43-dev@archiver.kernel.org>; Tue, 30 Jul 2024 07:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=FGLBHW3DqIiNNB
	5yHjTJeE1LwARtJnhHsojyUXTSDjT0zu5cU1Uld49MHHwbHUp1zixt05LRkjP+PntGoQjNo1DwTSO
	yflLjXVJFcTDv7OJt4bqag6VwGONMK8oGlSqHP1pwp+DQ72B4Du5mzj+AqTL1SmmdlywlAHKh+Lk/
	iUlPJVQzAPD7BlcrFJLBegYv9nOiX1/JFCsjUHu2gxLhI3RqT8IcQYsZIo9Q2q3h5o53Xhzv58fgO
	6cDRrBMw3N5SWtIIYU5FvYE2LnS8MhVcIIQJEQw06Uy1qmeSsUqcKUAG4rfE8mSWS1r6qQ/5lLMLr
	TBWT/4SiOiZt8HtlrR4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhOi-0000000E33C-2g5T;
	Tue, 30 Jul 2024 07:35:52 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhOc-0000000E31O-25GX
	for b43-dev@lists.infradead.org;
	Tue, 30 Jul 2024 07:35:49 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 160A625058; Tue, 30 Jul 2024 09:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1722324941;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=i6c05p6ztImDHEsBKq0sspd8CfDsiiq+bNLYS/flcMRryYxChlUrgnuCbldWxP30C
	 1xugy77pipbEJpfN+q0IX4FIz3aLDqFx7NRVScUm++z9UBfIUGf0XMME8tOasYZXZi
	 pWu2NkJ2O5PvXjW71tTP/HhIngHTv6GT87zSKixxXaDPlUQNS6b3hR1GdiERz5GHJC
	 lhYZe3TPX2BjULvvGT2zoq1bp+uDleCIf/cgCbnTeYwaII8LhnBvVn7mJ7EtSjHyn3
	 NHffklOZk9K/Pam5NyFiRtbqMI2SYS7rUB4J7p1sD2/2KR/VODyfkAR2t25ykjYt+Z
	 cwjfjwe7UpM4A==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Tue, 30 Jul 2024 07:35:33 GMT
Message-ID: <20240730084501-0.1.bs.eta8.0.raoi16r7lt@venturevista.pl>
Date: Tue, 30 Jul 2024 07:35:33 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_003547_248526_AF8A6C48 
X-CRM114-Status: UNSURE (   1.36  )
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
