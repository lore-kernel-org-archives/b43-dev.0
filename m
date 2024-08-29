Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52737CA0EC6
	for <b43-dev@archiver.kernel.org>; Thu, 29 Aug 2024 22:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JRFRtnuZ9KkdXWkLQjOplL66OF0qxYjK103b0pDxqj4=; b=N6/nddrjGXOaVu
	aOfzjYH9oknR9b9TNPgSTM+CuwWXCkMnDMFux1aGaB1pmdQLhgPvaQXTLepf50TsNJXXaFPgyWQpH
	75niooXF6bDa+sQ/4om+xKrC1fhfpbA4R3VRPYYiPxjqC8IvCo7ljAOVyOyXucvkeiyQjf34ezR7T
	3B4vQUL3OOn/eFk4+/MwgIM2zK42AQLz/5SnUJp3XBcMh1kQkZ5bdiIue7JwYeZ/IxaWzQyz48Fmx
	2ET2iLbrANvbpujjGDZR0bEJxcC9UNbCPP1WrtYWp+6Wk7NjMXpSTadW30ZO0Plq3jSgk4ozYp2yZ
	Ij05SAeMv9+6V+NGFvbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjnNK-00000003oNW-43vc;
	Thu, 29 Aug 2024 22:12:18 +0000
Received: from hz-hc-03.sysprovider.com ([185.250.202.102])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjnMt-00000003oGH-3o0d
	for b43-dev@lists.infradead.org;
	Thu, 29 Aug 2024 22:11:53 +0000
Received: from [178.215.236.220]
	by hz-hc-03.sysprovider.com with esmtp (Exim 4.96-58-g4e9ed49f8)
	(envelope-from <m-nishimura@suntechno.co.jp>)
	id 1sjnMs-0005hR-05
	for b43-dev@lists.infradead.org;
	Fri, 30 Aug 2024 00:11:50 +0200
From: Roy Kessier  <jonathan.capeluto@neteris.com>
To: b43-dev@lists.infradead.org
Subject: =?UTF-8?B?SW50ZXJuYXRpb25hbGUgV8OkaHJ1bmdzZm9uZHMgKElXRik=?=
Date: 29 Aug 2024 15:11:49 -0700
Message-ID: <20240829151149.A7C2959AD48D0A42@neteris.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_151152_096620_D5D73850 
X-CRM114-Status: UNSURE (   1.20  )
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
Reply-To: info@elibertytrust.us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

U2VociBnZWVocnRlciBFbXBmw6RuZ2VyOgoKRGllIEV1cm9ww6Rpc2NoZSBJbnZlc3RpdGlvbnNi
YW5rIGluIEx1eGVtYnVyZyB1bmQgZGVyIApJbnRlcm5hdGlvbmFsZSBXw6RocnVuZ3Nmb25kcyAo
SVdGKSBoYWJlbiB1bnMgYmVhdWZ0cmFndCwgZGllIApVcnNhY2hlIGbDvHIgZGllIFZlcnrDtmdl
cnVuZyBiZWkgZGVyIEF1c3phaGx1bmcgaWhyZXIgZ2VzZXR6bGljaCAKZ2VuZWhtaWd0ZW4gTWl0
dGVsIHp1IHVudGVyc3VjaGVuLgoKVW5zZXJlIFVudGVyc3VjaHVuZyBlcmdhYiwgZGFzcyBzZWlu
ZSBaYWhsdW5nIGF1ZmdydW5kIGtvcnJ1cHRlciAKQmFua2FuZ2VzdGVsbHRlIHZlcnrDtmdlcnQg
d3VyZGUsIGRpZSB2ZXJzdWNodGVuLCBzZWluIEdlbGQgYXVmIApzZWluZSBQcml2YXRrb250ZW4g
YmVpIEFCQU5DQSB1bXp1bGVpdGVuLiBVbSBkaWVzZSBBcnQgdm9uIApiZXRyw7xnZXJpc2NoZW4g
QWt0aXZpdMOkdGVuIHp1IHZlcmhpbmRlcm4sIGhhYmVuIHdpciBlaW5lIApWZXJlaW5iYXJ1bmcg
bWl0IGRlciBFdXJvcMOkaXNjaGVuIEludmVzdGl0aW9uc2JhbmsgdW5kIGRlbSBJV0YgCnp1ciBW
ZXJ3YWx0dW5nIHVuZCDDnGJlcndhY2h1bmcgSWhyZXIgWmFobHVuZy4gRsO8ciBJaHJlIFphaGx1
bmcgCmhhYmVuIHdpciBkYWhlciB2b24gTUZZIGVpbmUgdW53aWRlcnJ1ZmxpY2hlIFphaGx1bmdz
Z2FyYW50aWUgCmVyaGFsdGVuLgoKV2lyIGZyZXVlbiB1bnMsIElobmVuIG1pdHRlaWxlbiB6dSBr
w7ZubmVuLCBkYXNzIGRpZSBFdXJvcMOkaXNjaGUgCkludmVzdGl0aW9uc2JhbmsgYmVzY2hsb3Nz
ZW4gaGF0LCBJaG5lbiBkZW4gQmV0cmFnIHZvbiAKMy41MDAuMDAwLDAwIEVVUiB6dXLDvGNrenVl
cnN0YXR0ZW4gdW5kIGlobiBwZXIgQmFua8O8YmVyd2Vpc3VuZyAKZGlyZWt0IGF1ZiBJaHIgQmFu
a2tvbnRvIHp1IMO8YmVyd2Vpc2VuLgoKVW0gZWluZW4gcmVpYnVuZ3Nsb3NlbiB1bmQgcHJvYmxl
bWxvc2VuIFphaGx1bmdzdm9yZ2FuZyB6dSAKZ2V3w6RocmxlaXN0ZW4sIGtvbnRha3RpZXJlbiBT
aWUgYml0dGUgdW5zZXJlbiBWZXJ0cmV0ZXIsIEhlcnJuIApSb3kgS2Vzc2llciwgdW50ZXIgZGVy
IGZvbGdlbmRlbiBFLU1haWwtQWRyZXNzZToKRS1NYWlsOiBpbmZvQGVsaWJlcnR5dHJ1c3QudXMK
CkJpdHRlIHRlaWxlbiBTaWUgdW5zIGF1Y2ggSWhyZSBXaGF0c0FwcC1OdW1tZXIgbWl0LCB1bSBk
aWUgCktvbW11bmlrYXRpb24genUgZXJsZWljaHRlcm4uCgpWaWVsZW4gRGFuayBmw7xyIElocmUg
QXVmbWVya3NhbWtlaXQgaW4gZGllc2VyIEFuZ2VsZWdlbmhlaXQuCgpBdWZyaWNodGlnLApIZXJy
IFJveSBLZXNzaWVyCmluZm9AZWxpYmVydHl0cnVzdC51cwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYjQzLWRldgo=
