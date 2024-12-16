Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86ED1E7717F
	for <b43-dev@archiver.kernel.org>; Mon, 16 Dec 2024 08:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=qADmAf/Muh3bYF
	7b6so87TYXxcv03WKSZHrZ6372a1jZdsuSW65x/n/uevhWgB9ykrfESj3PKsRMJGxN0tw3nkJl7pC
	r9uch2usPBtXR84sM6c0sbw6cXE4dbokhHHqzTdim6wkFmNHo5Vglf95NiB3XYeRuOe6KkQ8w4UQp
	nlZYpQYXo/jHgPNLuqS0KWFPV+keSuQxJqdPiGosV0jvOj5GeeimuOai7UMj4NmdtEh4tDNWwrvp3
	/Zm9wH9ng9zht03ng0HRf+u4XDh69kDBhEbCPU4zV2wvlskZtAhpateOpHyniNRPwKjrtrDAp6Bzu
	PbuwXx7vmA8hXw8CfOZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6q5-00000009SLJ-2G2K;
	Mon, 16 Dec 2024 08:52:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6oy-00000009SFu-3eoa
	for b43-dev@bombadil.infradead.org;
	Mon, 16 Dec 2024 08:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=; b=SDu1h/AgWjW50l070/Qsvwy5vN
	ox0XZr0F+bjOwPp5XdyikIbm7ocLyc6rI7yFtpOJP5bvLLJb1q+8mWKKWwodaKBhDWxz3YInkoMVv
	xzYBhQ3HeuYy5xDpcJRGrqVtME6Q0+dszpoQABvvpphb4avuxiuSwDDRGKjw8xoO28bLaFWhsvud6
	mztYeufa8XxTnxz/VRkil6e0RmDw8+BrnrLTznBysNLMPd3KVIbLOo66d+XIiJUYZ7121Pd8cYPX+
	WjW1aosuJXFWq589s/nVs7aNQ2lfyjySONQx3k9U0Cb+4B6Def2d7bDtbugcu1LAFqY0QIH/u9FLN
	uR0Quuhw==;
Received: from mail.venturebloom.pl ([162.19.205.13])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6os-00000004o22-0qQS
	for b43-dev@lists.infradead.org;
	Mon, 16 Dec 2024 08:51:17 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 541FC25677; Mon, 16 Dec 2024 09:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1734339069;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=YHUTKt/gg5NMtyu5qbVNV2ERw7diS+zJCY4mGJxTJe/ONQuqaFXYaHQiN1gwW8tXl
	 8ZqZa1SqvnnWfcSnnp/3BzA0OF8ZJmzZrW/BUj4Ruh+5M2bdv2ltj9viLe1aLwgvth
	 zVZUKdAkp3xQSPQqL2TTXoS2jnW7yPXA9TzKjQsgZijfVAZn0uptev5Umvqjuy2Ru6
	 zH0lvTGywIgxvIO2CnjRyjeYE58pYTIRNWJkPLQjbf4KkJXZxVaMht7IeL7WXbdpjN
	 a9yFfXlrI8144YGDv/IubQOrct+lEoV3O1m3on7zFBqMjdvuPTXVZqNBbF52dwvM1r
	 v/fD31ozOjQ5A==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Mon, 16 Dec 2024 08:51:03 GMT
Message-ID: <20241216084500-0.1.eh.iqf9.0.lohf4xwa6d@venturebloom.pl>
Date: Mon, 16 Dec 2024 08:51:03 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_085114_977454_6EA47268 
X-CRM114-Status: UNSURE (   1.66  )
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
