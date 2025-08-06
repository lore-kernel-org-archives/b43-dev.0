Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52046C87FCB
	for <b43-dev@archiver.kernel.org>; Wed,  6 Aug 2025 07:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zq/Yf8O2tpiI0k82nyiK051wyA7JvLQq5BEtYqGNRag=; b=vKY9HLeMCgf5PY
	PqZJ/I+QgTwW7HpGZwcZV8pOd5pzJWRRe0H/nUK9f9EgrDu/C2gRdQq2xda0ULGZkzsIIsXm4wo/5
	SO2hDSGefBEcbVUgc6/HJQuupDZKJOpMxHczPmbnKtf9H7SQWfIv2isptbVzgE3WfOaRoWL7fXH7J
	cIyNvSZ9vwMH8Fu4ytjBklMvpTELDTSaLalNWUXqQfIPNATaVALvSRsQV2UBlWWL+8aaGTP1qh9ho
	XeQwKrOzyLrS5dKQ2zO676Kn1i4p9+ljFtDR1mLr8PNQlYzi45SiZ89npIElADWIea69zSQUtpu1C
	Ogat4Z9YCN6aTEZf8stg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujZ17-0000000EZWk-2iyH;
	Wed, 06 Aug 2025 07:56:57 +0000
Received: from mail.stratspark.pl ([51.38.99.212])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujZ12-0000000EZVx-3l7m
	for b43-dev@lists.infradead.org;
	Wed, 06 Aug 2025 07:56:54 +0000
Received: by mail.stratspark.pl (Postfix, from userid 1002)
	id 093E326E1D; Wed,  6 Aug 2025 09:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stratspark.pl;
	s=mail; t=1754466967;
	bh=q2/tbLIfTSm7GKqHZN0Ihz9HwqgGTvRpJYVCUpsySQ0=;
	h=Date:From:To:Subject:From;
	b=Zf444jKLGNFdmQL6tYojxumu66oTZXI+t1n39KT1ECpo+W8YcKLA2TIf2vhvnhQxO
	 EkTozoQtmaCblthLUF7I+8LBxUyWx7N/vieM/Xv4KXrt+ucATscS9Ch6zy+pKBa8zt
	 dLRR/4kcxyYXboerofAONLlAHMDJqiOBqiQDQeumwrONunUgigmidL8p3YN9wzSKxF
	 ByaTiF1Drmm0dd47+wdJClDcOf2gYx89RkqO3CIRt1nCvAdLmFVEs3VKGbNRILb4ze
	 UYV3+kKcPpDJbi18cesDa3MrG1JuAqyzoEHYo+y7w8Cw0mbUKIv+TPv9N6KCbnsZSD
	 MHniXhPwG6y1g==
Received: by mail.stratspark.pl for <b43-dev@lists.infradead.org>; Wed,  6 Aug 2025 07:55:58 GMT
Message-ID: <20250806084500-0.1.k3.4ivh4.0.4eieeig6r9@stratspark.pl>
Date: Wed,  6 Aug 2025 07:55:58 GMT
From: "Adam Charachuta" <adam.charachuta@stratspark.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.stratspark.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_005653_203669_C5E13F18 
X-CRM114-Status: UNSURE (   1.39  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIHN0cm9uxIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KQWRhbSBDaGFyYWNodXRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2
Cg==
