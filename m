Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF678C2BA15
	for <b43-dev@archiver.kernel.org>; Wed, 19 Jun 2024 07:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=fbN4LM4FIXmCWJ
	viOfvZfmqrbRB4yli4hiJoTK9F7kdfKFDd/pX1R4qOp7ejfIE1uU1+iLc19blj54LJb9AfAhW/mxb
	STnPp8GScjnkE/Q/Xv/V4VmXvNILASmDSZ8E6iQulXFbXAy1r6c00pyaG2KNvhfyydFYqZNzjNccG
	bWCEcJpQE3wmFkU2xv8BqeltINBCqfAPk3pc4ONukgCaAlO9quDImb7tE6jQfmBclBjKR7xkC54xy
	pJ4kBIJkpKvkJMH9zeWP77z/hhaQ1ZPmW+jzbkUwq49s4gApA5iASJqKTXwPQAptOWf93QnbQvbEX
	UGLmD7bFx1lEaEOTcDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJq1f-00000000Fwj-1cf4;
	Wed, 19 Jun 2024 07:46:39 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJq1W-00000000Fv3-2Rzq
	for b43-dev@lists.infradead.org;
	Wed, 19 Jun 2024 07:46:32 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 4EB16257D2; Wed, 19 Jun 2024 09:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1718783185;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=R2UBfHyq/PLwY11KpgNeJbNUaNPuqLsK8VxFKRSyPekYGv94JrVD52fMOB07qj62M
	 VmKyP3FsvzeuTOCbM2VbaRHG9yoFPpWAxxB/fBWsFeOM+zFqHApIApYJ9pHedvX/vC
	 2E1sNwzotPcbb2lS8HU0rroPVEd2XcG1y70dQ03LbsuEI02/cWyxOVxhqpK+LlsSJd
	 z6ZXAu8j1gZjXvXvddw8QC7y6Sh9ZgzVFHkuZxNA2ZUW3KE69b3G1KRSkl0k1X0z9b
	 912j8F0niHYMe+XHwMW745O0DB03cCQqIjJh9lHRfyhDOhwvO85KNcedROujQBYeOy
	 a7gvmUNmMfC3g==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Wed, 19 Jun 2024 07:46:09 GMT
Message-ID: <20240619084500-0.1.az.eta8.0.4ktbd3o8ar@venturevista.pl>
Date: Wed, 19 Jun 2024 07:46:09 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_004631_363094_55984B80 
X-CRM114-Status: UNSURE (   1.64  )
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
