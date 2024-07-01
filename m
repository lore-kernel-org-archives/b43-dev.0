Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A37C3065A
	for <b43-dev@archiver.kernel.org>; Mon,  1 Jul 2024 07:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=bVaaRu8WIBjL94
	bTNgcfnSFqu/6tB9QLM6NR79il7/CkB6PmOAokNhxuHaIPonecovwPMDqfHDIYanM+ifRRQ3Lma/s
	MCiXjybIQIbVpXSbfxt5Bm3gjXjnV3FDkTp/aciG/o5oPmvhxaQ/fVZ/Ohj7EXwwtfOVrdnbdE2Dk
	AZdppHePNSa/vK7x6Tlxb3BXdx0h8/Me2RBZuOLe3sAE1sxUJH6Xw3N5qfTYSe1w7KZIBG04IuuG4
	P4/s7x8Egx2aJhH8jIVXAsu5z45GWIyx4vPzt8W5qqcNKn//3fYyYouiVBpGrcfdj/WCdSjjNur/+
	XVZ1aBLvhuB/ZG42uCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBkH-000000027CO-1giG;
	Mon, 01 Jul 2024 07:46:41 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBkA-0000000278e-2nUa
	for b43-dev@lists.infradead.org;
	Mon, 01 Jul 2024 07:46:37 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 5792E257E5; Mon,  1 Jul 2024 09:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1719819988;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=KgWDq81NQ7G5VLrsEA7MEJuuISOt5cTnQ5h2DvMlg85LtZrVbuphWnAEiSMmrBlZS
	 j5YAIlKsN0dYd3btqc0ikcBrXeYmEm9Hr4Hm4mukonV0K15gQxdddWpweRjpoFunIp
	 TRWW7zv/JSZVQP8aXQP4UDC0q+2fQ67A56/vItbFMJEe/M8jpWDmG7FZmqGO6BWihM
	 LZPHE63pRN5Bo0u3T9CjCvyo1jZGCBG2SAaO+zBZ+qx0DgIlER3NVyEdt7mjO/0f5N
	 lXPbvzBhMKYIZ672sEspVMQcH0ecCHFu1XOTOmAbYcgtKAvnR87GU+gSO4AqkdTvqH
	 B0onGknpu/1Jg==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Mon,  1 Jul 2024 07:46:07 GMT
Message-ID: <20240701084500-0.1.b7.eta8.0.2j2ie1j252@venturevista.pl>
Date: Mon,  1 Jul 2024 07:46:07 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_004635_426065_516CD3A3 
X-CRM114-Status: UNSURE (   1.31  )
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
