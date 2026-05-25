Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0482ECD5BC9
	for <b43-dev@archiver.kernel.org>; Mon, 25 May 2026 19:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLrMTh/Hiwe9MhyIOsWskOxpM4MFd0C9pk57Xlhh8Pk=; b=EV4muZG2YsHHIj
	G/rLImgMj8xdYK6HUbo6SPwPcwD0KPVq8mDIxgJjgfEoSWKrGpfJyZpBwUkK6ST2LGAy6e7wraPzs
	gVRI4nEKEN0lgodoczI9LZHfUFqB/v5e45b0EA22Wt4HMvCxMgWiQD598pS4mlWf2bOVUdjFhmFNE
	balZMuyS6xAXyuLGJ7vwNs2UG03BUVQf7wqvmI3/JXlLldb62tdFezHgY0wYI3JDAI8gSwMByYlCp
	cxpBT1RyJrchkrTv2vmRt/9L122gF3Pkgkvq1oo5fk6cNsQOTVocZmQ7KoS4j8ATtetXl4+y1/0kY
	SfgjK3QgjQfA22tiI1SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRayD-00000000KLT-2nFa;
	Mon, 25 May 2026 19:28:13 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRayA-00000000KKP-0DMh
	for b43-dev@lists.infradead.org;
	Mon, 25 May 2026 19:28:12 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Ray5wLMmpclBZRay5w7bYd; Mon, 25 May 2026 21:28:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779737285; bh=ciiSIPOHoz25geGrQY/X3wqZon1rIzUIMwbhH9fHrYM=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=SCqjHkEMzaO9XKxTM56CJosM8PjVZuMpG3c9reO6kteVwobL1VwcpHWIhj4BTN1dB
	 kZZJJaMQiEiG65/mi8r40qcIMWJkZRgSxrXpCuJgZegqfjLVSoZh+kYWioOyiESY9A
	 hLijof27YRSviaJt6BujfP3NiL9M3fn6HeUFBnBwjtp4ploApxSCjgl8ktyUcfKXBF
	 eqhfSU0l2+Ie97nFOmL4X73N37uYHEiiWUUXPeLNlqBakqGf+DzgSw5sZLFGZfrUX1
	 9bU80spW5kMr6Pslio1m6mLmlB9DbAbN8n2PgaMMN/RMyG8MhEPheo830DCq9ubdPX
	 CW6yEdimK37oA==
Date: Mon, 25 May 2026 21:28:04 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260525212804.7bfbc4fc@fedora>
In-Reply-To: <20260525201405.6c60420f@barney>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
	<20260525100752.16cdb59e@barney>
	<20260525140438.265975e7@fedora>
	<20260525201405.6c60420f@barney>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfExFWzYwp0AFqgtYxb1nXLBG/12VzMdzQsyZaES3CJHL1u3kYPtZpgV4+43JqWmygQo56VcMrrBW/+mn2fX/+anfn1Sg8uYwR30YM1IgA5GWetUr0BUS
 BYRt9iyDY2fZjM+dkbdkOnwy+ph3inhv0ZjNgGA6LAsJWSwq40UHgLVJzen1X3zjFrY4Up0vqgPLi72TsxWWbDpiOv577J0wNsJ8MFAVqrEcu/eddkMoxq0A
 B6H7G91kHfxnsjpJysvXXXi8Zv/fbXgbcxmi48afQezqg5j6shxOU6nSxAfIaE2Q
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_122810_541954_9A5E663D 
X-CRM114-Status: GOOD (  10.74  )
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

SWwgZ2lvcm5vIE1vbiwgMjUgTWF5IDIwMjYgMjA6MTQ6MDUgKzAyMDAKTWljaGFlbCBCw7xzY2gg
PG1AYnVlcy5jaD4gaGEgc2NyaXR0bzoKCj4gT24gTW9uLCAyNSBNYXkgMjAyNiAxNDowNDozOCAr
MDIwMAo+IEFsZXNzaW8gRmVycmkgPGFsZXNzaW8uZmVycmlAbXl0aHJlYWQuaXQ+IHdyb3RlOgo+
IAo+ID4gUGxlYXNlIGNsYXJpZnkgImZ1bGwgZXhwZWN0ZWQgd2lyZWxlc3MgdGhyb3VnaHB1dCIs
IEhUIGlzCj4gPiBub3Qgc3VwcG9ydGVkIGJ5IGI0Mywgc28gaXQgcnVucyBvbmx5IHdpdGggTk9I
VCBpbiBnLWxpa2Ugc3BlZWQ6ICAKPiAKPiA+IEVuYWJsaW5nIEhUIGZvciBOIGNoaXBzIGlzIG91
dCBvZiBzY29wZSwgYWxzbyB0aGVyZSBub3RoaW5nIHRvCj4gPiBnYWluIGFuZCBhIGxvdCB0byBy
aXNrLCBzbyBpIHdvbid0IGRvIGl0LiAgCj4gCj4gVGhhdCdzIGZpbmUuCj4gSnVzdCB3YW50ZWQg
dG8ga25vdyBpZiB0aGVyZSB3ZXJlIGtub3duIHByb2JsZW1zLgo+IAoKRGlkIG5vdCBzZWUgYW55
IG9idmlvdXMgcHJvYmxlbSBmb3Igbm93LiBJIFdpbGwgdHJ5IHRvIGZpeCBhbnkgaXNzdWVzIGlm
CnNvbWVvbmUgZmluZCBzb21lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
