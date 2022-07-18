Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8BCCC433EF
	for <b43-dev@archiver.kernel.org>; Mon, 18 Jul 2022 07:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNQtKdG5rYkQCA9jlcrIEuWpdKb3doifd0aAuM3m1zY=; b=yNZ/ABOgx1uAzr
	KokeaZztJ/DvrVkaoEfpJsnE0YM/QMAeanfHW2PRxrttvKzJp6X72HnUwzmSMc3CZc/sGhCS0VwDF
	nfuDfcmtTJ+vzPKtPPlIUyYU3/zaZKLeLYMAgM01U0tsjcDB26XyWD75M3V4Da8g+pGzxlXFIVwj3
	HUxIAunTIaE8uPPytY4eRafQufGeEdioLFqyp9JUBlG/ciSpbSwUc4X6+vBzCOemB1SD43vwHJIXF
	VW91KlENKU6CcEafGsDzTLjrf62QSJeW+XIm8IEahK7VP/Dd5l36h7LdRyBKsyu5t8d4wV5PRoesk
	QpdOJAjoyPnD3fghEwsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDLQt-00BWqH-GU; Mon, 18 Jul 2022 07:44:47 +0000
Received: from mail.trueanalyze24.com ([149.154.157.156])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDLQn-00BWpm-OB
	for b43-dev@lists.infradead.org; Mon, 18 Jul 2022 07:44:43 +0000
Received: by mail.trueanalyze24.com (Postfix, from userid 1001)
	id 63C5044511; Mon, 18 Jul 2022 09:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trueanalyze24.com;
	s=mail; t=1658130129;
	bh=98Rl+Ube1Bvn+3rmK5hpfPYFv35+QFaadoOXzW/GAGM=;
	h=Date:From:To:Subject:From;
	b=zh08Xnu0dUhEpUyvdpvIhvSyWF2IQQbOk5mpuzlVr4B9SOL8uO181cIa6+6eE88cw
	 G5Z3tzUsKkb6sHBsGDpftUss4xBnu6GO8nIryfJwGv+9FEHk3tEpHlWtNPJhFD7kuY
	 VT9v/JF2cQl0JPWGtrMwQJQvOMluOeIcB87uaJXus6eXQ8Ep5IQCa1bQKgzEQ3bMMX
	 bULZzC4d6Fo89SXSg5N4iT4k5sD8Ig2wvga3BhZZj6u/sheewI2VhaVI9uiAJfJL+7
	 ky1le3SLJ32bocGPbI4DtlPlSm87h/0WbpDrAAjHtaYBt4j874JG/Qz/yln84kGWti
	 6CYEnnEIEzkhA==
Received: by mail.trueanalyze24.com for <b43-dev@lists.infradead.org>; Mon, 18 Jul 2022 07:40:52 GMT
Message-ID: <20220718084501-0.1.32.rit5.0.yh7la267z1@trueanalyze24.com>
Date: Mon, 18 Jul 2022 07:40:52 GMT
From: "Luca Gauthier" <luca.gauthier@trueanalyze24.com>
To: <b43-dev@lists.infradead.org>
Subject: New collaboration
X-Mailer: mail.trueanalyze24.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_004441_948784_3CE973AB 
X-CRM114-Status: UNSURE (   1.99  )
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

SGksCgpJIHdvdWxkIGxpa2UgdG8gZGlzY3VzcyB5b3VyIG5lZWRzIGluIHRoZSBzY29wZSBvZiBh
Y3F1aXJpbmcgbmV3IENsaWVudHMuCgpXZSBvcGVyYXRlIGluIHRoZSBJbnRlcm5ldCBtYXJrZXRp
bmcgc2VjdG9yLCBoYXZlIHRoZSBsYXJnZXN0IFRlY2huaWNhbCBEZXBhcnRtZW50IGluIEV1cm9w
ZSBhbmQgaGF2ZSBpbXBsZW1lbnRlZCBtb3JlIHRoYW4gMjAwIGNhbXBhaWducyBpbiB0aGUgVVNB
IGFuZCBBc2lhLgoKV2UgYXJlIGJyb2FkZW5pbmcgdGhlIGdyb3VwIG9mIG91ciBCdXNpbmVzcyBQ
YXJ0bmVycyAoY3VycmVudGx5IG1vcmUgdGhhbiAyMzcgY29tcGFuaWVzKSBhbmQgdGhlcmVmb3Jl
IHdlIHdvdWxkIGxpa2UgdG8gb2ZmZXIgeW91IGNvb3BlcmF0aW9uIHdoaWNoIHdlIGJhc2Ugb24g
bXV0dWFsIHN1cHBvcnQgaW4gYWN0aXZpdGllcyBhaW1lZCBhdCBhY3F1aXJpbmcgbmV3IGNsaWVu
dHMgYW5kIHN0cmVuZ3RoZW5pbmcgdGhlIGNvbXBhbnnigJlzIGltYWdlLgpPdXIgQnVzaW5lc3Mg
UGFydG5lcnMgcmVjZWl2ZSBjb21taXNzaW9uIG9uIHRoZSB2YWx1ZSBvZiBhbiBhZ3JlZW1lbnQg
c2lnbmVkIGFuZCB0aGUgZ3JvdXAgb2YgbmV3IGNsaWVudHMuCgpJZiBJIGNvdWxkIHByZXNlbnQg
dGhlIGRldGFpbHMg4oCTIGxldCBtZSBrbm93IHdoZW4gSSBjYW4gY29udGFjdCB5b3UKCkx1Y2Eg
R2F1dGhpZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
