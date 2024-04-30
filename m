Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F217C4345F
	for <b43-dev@archiver.kernel.org>; Tue, 30 Apr 2024 07:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jrrr1jmd4xGqVF72GlbcD1we44UBZBEdeMU1K3EZi2s=; b=zpVKG5+WAxZACY
	W0Q7FkoPccwIKdV4ebmKEOCabjYktOQOIZlg0F11YoMRFiJI8nk9YYMGw4SmkXXeUApUoUUZguPmh
	BkNc35qcj2HM0M4glXBqjYRWxsoMG/eed0+bcn3KPcu89LzM5X0Bmr2ENxKaljgRnDXrxLY4IgUuf
	iEW4N7o/jEq1XcqX1pAjGJxj4phYGSbpMTB29bFcZora5qng4L+Ut/a/+Mov0fXgoSK+Wg9/ryd6X
	BntThQVNqfydG3oYyn9cBZETK6UFveCUxpLjwrFvHisvHj+tHemAY1eo9b+qfMqfnygGnfUM9N6uV
	6W2EZvOdMVdWsUwzYYUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1iCW-00000005UDe-1kAx;
	Tue, 30 Apr 2024 07:46:56 +0000
Received: from mail.promisingmarket.pl ([80.211.147.228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1iCP-00000005UCe-2Kbr
	for b43-dev@lists.infradead.org;
	Tue, 30 Apr 2024 07:46:52 +0000
Received: by mail.promisingmarket.pl (Postfix, from userid 1002)
	id C165E828E0; Tue, 30 Apr 2024 09:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=promisingmarket.pl;
	s=mail; t=1714462863;
	bh=5seizmrz9v/7daRb+I8LiVx7riI3itzj1vN3dXWI/iw=;
	h=Date:From:To:Subject:From;
	b=wXYYONmN9IcDvzgINX0otkAisZ0H9AhOhYHlci2rVyn5hkfaUzM8FHM4weQ6PhD4m
	 +4AV9LV/tXwhPdrLegKbSAmwsIAqgcnYK45Ib3c7TGK5dqGyLrNkNNci5Oz/6PMSNe
	 GOHN2DaAgTJRN5TMk+Zt4g+zAjfemGhpfYvAqHV7XYpA35+zSE7PE6cAvTSaGkx461
	 3B32uBC5HN6IAZ8q0Mvb+B9wUaPLnb9nHKMzbghbuNGKwAQOqEV573hBqmjADhpJRI
	 jISgsPvehrp83vSNs4VViv636Btfk7bNjnM6JolvBx7AofAJgt+pOi9CazVw4TxhoX
	 dgRaJ1X/e4tpQ==
Received: by mail.promisingmarket.pl for <b43-dev@lists.infradead.org>; Tue, 30 Apr 2024 07:41:02 GMT
Message-ID: <20240430084500-0.1.k.10pq.0.m5kabgu9gl@promisingmarket.pl>
Date: Tue, 30 Apr 2024 07:41:02 GMT
From: "Kamila Parandyk" <kamila.parandyk@promisingmarket.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Post=C4=99powanie_restrukturyzacyjne_?=
X-Mailer: mail.promisingmarket.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_004651_043720_9F01B9B5 
X-CRM114-Status: UNSURE (   0.98  )
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

RHJvZHp5IFBhxYRzdHdvLAoKdHJ1ZG5vxZtjaSB6IHDFgnlubm/Fm2NpxIUgZmluYW5zb3fEhSwg
dXRyYXRhIGtsdWN6b3dlZ28ga29udHJhaGVudGEgY3p5IGt3ZXN0aWUgendpxIV6YW5lIHogdW1v
d2FtaSBrcmVkeXRvd3ltaSBtb2fEhSBzdHdhcnphxIcgdHJ1ZG5lIHd5endhbmlhIGJpem5lc293
ZS4KClJlc3RydWt0dXJ5emFjamEgdG8gcHJvY2VzLCBrdMOzcnkgbmllIHR5bGtvIG5hcHJhd2lh
IGFrdHVhbG5lIHByb2JsZW15IGZpbmFuc293ZSBmaXJteSwgYWxlIHLDs3duaWXFvCB1a2llcnVu
a293dWplIGrEhSBuYSBkxYJ1Z290ZXJtaW5vd8SFIHN0YWJpbG5vxZvEhyBpIHd6cm9zdC4gWm1p
YW55IG1vZ8SFIGRvdHljennEhyBzZmVyeSBmaW5hbnNvd2VqIGx1YiBla29ub21pY3puZWosIGEg
dGFrxbxlIHdpxIV6YcSHIHNpxJkgemUgem1pYW7EhSB0ZWNobm9sb2dpaSB3IGZpcm1pZS4gCgpO
YXN6YSBrYW5jZWxhcmlhIGFkd29rYWNrYSBwb21hZ2EgcHJ6ZWRzacSZYmlvcmNvbSBwcm93YWR6
acSHIGJpem5lcyBiZXogemFkxYJ1xbxlxYQgaSBza3VwacSHIHNpxJkgbmEgYnVkb3dhbml1IG5v
d3ljaCDFunLDs2RlxYIgcHJ6eWNob2TDs3cuIFByb3BvbnVqZW15IHJvendpxIV6YW5pYSwga3TD
s3JlIGd3YXJhbnR1asSFIGJlenBpZWN6ZcWEc3R3byBtYWrEhXRrdSwgemF3aWVzemFqxIVjIHJh
dHkga3JlZHl0w7N3LCBlZ3pla3VjamUga29tb3JuaWN6ZSBjenkgdW1hcnphasSFYyBvZHNldGtp
LgoKRHppxJlraSBvZHBvd2llZG5pbSBwcm9jZWR1cm9tIHphYmV6cGllY3phbXkgcHJhd25pZSB3
YXJ0b8WbxIcgZmlybXksIGRhasSFYyBjemFzIG5hIG5hcHJhd8SZIGtvbmR5Y2ppIGR6aWHFgmFs
bm/Fm2NpIGkgb2RkxYJ1xbxlbmllIGJleiBrb25pZWN6bm/Fm2NpIG9nxYJhc3phbmlhIHVwYWTF
gm/Fm2NpLgoKSmVzdGXFm215IGdvdG93aSBwb2RqxIXEhyBkemlhxYJhbmlhLCBrdMOzcmUgcG96
d29sxIUgUGHFhHN0d3Ugb2R6eXNrYcSHIHN0YWJpbG5vxZvEhyBmaW5hbnNvd8SFIGZpcm15LiBK
ZcW8ZWxpIHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSByb3pwb2N6xJljaWVtIHRlZ28gcHJv
Y2VzdSwgcHJvc3rEmSBvIGluZm9ybWFjasSZIHp3cm90bsSFLgoKClBvemRyYXdpYW0KS2FtaWxh
IFBhcmFuZHlrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
