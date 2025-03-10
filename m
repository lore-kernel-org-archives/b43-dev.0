Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C184DC282DE
	for <b43-dev@archiver.kernel.org>; Mon, 10 Mar 2025 08:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=Yli34hjDfdUrf1
	45WJNugu7uf2gnH6yXZnPN8YdWaxJCsObHkyR2R0LhyOtqLWUPLMnhsHhkV3bhq7Db63fuo92cs7I
	mxtdg930ZDdGmSg/tC77KiBGIKyvRkAmXiVcFIJ3y6NV5ceawgbfEIxmD1sitCDM9MOq3lwdb/YQA
	QtnGE9YoxQUupY3GE8GSkFXzIiDyZzkk2RUJdLq5+45elAZ/7LDfJHECFXG9M2j7tvc6T57M+RsE3
	x448EJwmsJBNMUqsXH0f0mtCfO1HxXJEfizy11HJzEhl9aOV1FkVDuqdBYDPowE5TZPONLc9mnXFE
	kS7e81LUXjUASb+VXoyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYrX-00000001yKD-1Rfo;
	Mon, 10 Mar 2025 08:51:51 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYrQ-00000001yJg-1kBv
	for b43-dev@lists.infradead.org;
	Mon, 10 Mar 2025 08:51:46 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id CD0F826231; Mon, 10 Mar 2025 09:51:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1741596689;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=QLqwuCTyhhJuFaA6s/cTuatd07gBvLVfL2+JuRy6GynhRUO8niSyP7tgnK9D6DqLf
	 6g57k9kKpO9or5k4WwA9Oy35mGQ59Ihxkfk3PGz4gf3viOUsl4j4L65XqmV4tbo7R4
	 G5ywL2cD96Gz3AYYSboygkudEHrMyN1lcOaCuSrUjIZ5uXL93T7UaHXDQ8PYQNcrht
	 FOzKrYBwOUBeeTsd+pdXjR2nxaMcCLIDdzsdmjGGOfmraixD7F4LgYbvH2+Qh/ZtF3
	 lnKPjO9+EmNvKrIbZFJh8y9FHRY5XV9/1QcHRV3gICjDyphxWZ7Nnb/4U1xEKu+G2Z
	 j/7HAzLiVBFZg==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Mon, 10 Mar 2025 08:50:59 GMT
Message-ID: <20250310084501-0.1.g1.iqf9.0.1iyig4a1o7@venturebloom.pl>
Date: Mon, 10 Mar 2025 08:50:59 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_015145_153138_A1773504 
X-CRM114-Status: UNSURE (   2.50  )
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
