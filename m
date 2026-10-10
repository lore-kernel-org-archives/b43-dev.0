Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E12CA9EBE
	for <b43-dev@archiver.kernel.org>; Sat, 10 Oct 2026 14:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/iAj6VZ0U2bxrR30BgZBze0V+JOtypevt16jNwzH48=; b=SuFZ6r/HywzKrw
	Lsy4kwgww3nubvh1UxY125RD051MOz3X3qStubjolYiGnbbC1ucR0k/lzTUlRMZm3b0gl3LNC+VuR
	cEkT72wx9QIf6cUw/mUcBW8M6fYwgNPp22Bidtwpjhk/PZyHxHG2N4FZmilK8HHZIMbp9+W2C88ZQ
	oki/ZYss1ukVeEl3ZK+BPNelsZ5QxcITew1KSIh0N73hezVSroylX846WI7MSof89+o7gO/eZdwhu
	oQZLb61MWlHTVtDpuJ7wuTIe2FbDwKOGqWBhzQK2Rz7JKSiin4Xdn56G5XFbk3fRZlUl+c2SalC2v
	tghaAEM10HalPyOwrdQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXs6-000000089Z9-19VD;
	Sat, 10 Oct 2026 14:16:22 +0000
Received: from mail-106102.protonmail.ch ([79.135.106.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXrl-000000089YP-0TBy
	for b43-dev@lists.infradead.org;
	Sat, 10 Oct 2026 14:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1791641757; x=1791900957;
	bh=ZN6ZAvVnCZBWJdRiKMkePdSCu27j/ybBEUzdioDgWZM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=qLfdtowehTTJl56MPahXBXTwNFkK82AB78bcEjmJ5HFobvroZcmcsZSsrgiU8B+ly
	 aHpss4YwJK2rI1EVMCwg1AATJDVwcsIsMtZ3756tn+IPIM9ptWJaZS7qcRn+eFBYuH
	 ktHOJxvbDn1xNI/CSEji4MZ6QXUF6qVVeQFxr3kWFeDgfyqbViSvDoQGx+IhZTWwdD
	 qo7hsnHABeJWDUKo25S6FxCmGZECjkY8SIoYCfdhk4DUIGq5X81cZ+1kSD8BhNwIML
	 rjWKN/yrzHXbcsztoq5xkiHzYraxX1jGMSBmteJgnUEpn5ddUox5uMDymc9T6iAAXR
	 uqQaJa900PUMg==
Date: Sat, 10 Oct 2026 14:15:51 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: AW: Re: b43: ac rev1 captured packets with ampdu
Message-ID: <waSj3jvDuNtKDHP_lrLDt-1KAgv7xgyvTwKtdnXv18FPaVH12yRZk0f-bVfrApfaHnsALsEpipfhkgv0UvRQdMPiyj_tmKRVMwg1G5jDZmg=@proton.me>
In-Reply-To: <20261010161043.5dd21203@fedora>
References: <20261009173133.0e534ec2@fedora> <j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me> <1NF3n26c1UQ1YcYwXT-JD8OKl7dIr_22x7bgdLLwLHkWHnKlZAtcYw7504hufNHGIBEo3qr8atDAoKtK6qxtLUfVWhVSazjaIH5QPYGAgs0=@proton.me> <20261010161043.5dd21203@fedora>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: b2e3469ff78230b1de8b286a99a0f4d844869278
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_071603_627348_6F4ABAF1 
X-CRM114-Status: UNSURE (   4.94  )
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

SGkgQWxlc3NpbywKCk9uIHRoZSBUWCBnYWluOiB0aGF0IGZpdHMuIEluIHRoZSBiYXNlbWVudCAo
LTcwIGRCbSkgaW5kZXggNjQgY2FycmllcyBubyBIVCBmcmFtZSBhdCBhbGwsIGluZGV4IDIwIHdv
cmtzLCBpbmRleCAwIGlzIHdvcnNlIGFnYWluLiBUaGUgcmVzZXQgdmFsdWUgd2FzIGp1c3QgZmFy
IHRvbyBxdWlldC4gSSBub3cgdXNlIGluZGV4IDIwLCBpbnNpZGUgdGhlIHJhbmdlIHRoZSBzdG9j
ayBwb3dlciBsb29wIHJhbiBhdCBoZXJlICgweDE04oCTMHgyNiksIHVudGlsIEkgaGF2ZSBwb3dl
ciBjb250cm9sLgoKUlggYWdncmVnYXRpb24gd29ya3MgdG9vLiBJdCBvbmx5IG5lZWRlZCBhY2Nl
cHRpbmcgdGhlIHNlc3Npb24gaW4gYW1wZHVfYWN0aW9uOyB0aGUgbWljcm9jb2RlIGRlYWdncmVn
YXRlcyBhbmQgc2VuZHMgdGhlIGJsb2NrIGFja3MuIEJvdGggZGlyZWN0aW9ucyBhZ2dyZWdhdGVk
OiBhYm91dCAzMCBNYml0L3MgdXAgYW5kIDIwIGRvd24gYXQgLTcwIGRCbSwgYWdhaW5zdCAxMyBh
bmQgMTAgYXQgbGVnYWN5IHJhdGVzLgoKT24gdGhlIFJDQUwgdGltZW91dDogdGhhdCBydW4gd2Fz
IHlvdXIgdW5tb2RpZmllZCBoZWFkIHdpdGhvdXQgbXkgbG9nZ2luZywgc28gbm8gYWRkZWQgZGVs
YXlzLiBJIGNhbiByZXJ1biBpdCBhbmQgc2VuZCB0aGUgZnVsbCBkbWVzZy4KCk9uIHRoZSBQSFkg
d29yZHM6IHllcywgdGhlc2UgYXJlIHdyaXRlcyBvZiB0aGUgaHlicmlkIDYuMzAuMjIzIHdsIG9u
IHRoZSBNYWNCb29rQWlyNiwxLCBmcm9tIG15IE1NSU8gdHJhY2UgYXQgMi40IEdIejogMHgxNzM5
ID0gMCwgMHgwMTZiID0gMCwgMHgwMTc1ID0gMCwgMHgwM2M0ID0gMHgwNjY4LCBhbmQgaW4gY2hh
bm5lbCBzZXR1cCAweDAxOTcgPSAweDAwMTQsIDB4MDE5OCA9IDB4MDAxMC4gQmx1ZXRvb3RoIGlz
IHBsYXVzaWJsZSwgdGhlIGJvYXJkIGhhcyBCVENPRVhJU1Qgc2V0LgoKVGhhbmtzLCBBbmRyZWFz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2
IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
