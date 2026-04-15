Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88898F43858
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 17:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Cc:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8iwih0SjZ8qVYFTFY4c/tDBFOEaKpr0o5olM68t/WOo=; b=vdXDy0LPOST59cCjOJN3k6DYRG
	LHXRgOTWbSZoCSGZXzMrZaQFm/w0jlhBbZRrywIdF3YJtVsXpX3KxvOEhD7fWnN9JZ8woG2nEUqEm
	l3R3bjPyqiWj8azmcTPi1hoZlpd4RHIzoWx6YkxTkTapey+IBBQBJJ6r9eqxAP15awEVp2oPBMdpV
	jrLcMX/Wzs2iKx7QUUXTwpBf/RoN2AFc6Fp/GMAdzUZ2UVjU8fBA+/SXihuflPCFhyexiVDwAaS2k
	r6EEujzX1/gSwSbM6lzzJJRtMNd/SkCZzPP4/49+oUW6Jh2fGbH+fB4PKHbweBhHF5mrpj3m9HLHX
	gxU5y3xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD3fY-00000001R85-0jh9;
	Wed, 15 Apr 2026 17:04:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD3fU-00000001R7M-3Q17
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 17:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Cc: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1776272686;
 bh=NtB/eWOJij+AJOpCmAPG4LZPrrs0H8n9UE2w9g0Bys8=;
 b=fzxOTYmy5czNwA866VQAoUJ/UgRaJb6UBCrYPkR3qe5QGNsYHXej5bpPxT06y1haGUASt51Ng
 N199ZamN18WQKKeEywvEYOyXd1wzH2RoE5CEjoLUr5s2j639b+YpPG6n0qy+T2QIH0vIMhrwWiZ
 Zu0qelvbL6r0k+yKI936W0dv6PhNQIxZezu4vvKAb+s+afEA1zgWxuMjMVdqokrnxcHqy8tY4SG
 E5GFynYzWxjP1Vgxv0B4VWlxRg9MZF78Cw6K013DVyJm/bimExbj9poj5wrCRuBLi3bgImwG5Pm
 4RNvSvrQ8hdpn7kJN0SD+Csne/J/AFDP7vPYsdrBvoFw==
X-Forward-Email-ID: 69dfc52a8929b895becdf89a
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.7.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Wed, 15 Apr 2026 13:04:40 -0400
Message-Id: <DHTW44HOVZLS.GFYBZTKJTMP4@ubuntu.com>
Cc: "Johannes Berg" <johannes@sipsolutions.net>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>, "b43-dev"
 <b43-dev-bounces@lists.infradead.org>
Subject: Re: Firmware for reverse engineering b43?
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: =?utf-8?q?Michael_B=C3=BCsch?= <m@bues.ch>, "Jonas Gorski"
 <jonas.gorski@gmail.com>
X-Mailer: aerc 0.21.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
 <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
 <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
 <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
 <CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
 <20260415175748.61aa7993@barney>
In-Reply-To: <20260415175748.61aa7993@barney>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_100449_110249_9B1B2FD4 
X-CRM114-Status: GOOD (  30.68  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gV2VkIEFwciAxNSwgMjAyNiBhdCAxMTo1NyBBTSBFRFQsIE1pY2hhZWwgQsO8c2NoIHdyb3Rl
Ogo+IE9uIFdlZCwgMTUgQXByIDIwMjYgMTM6NTQ6MzEgKzAyMDAKPiBKb25hcyBHb3Jza2kgPGpv
bmFzLmdvcnNraUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4+IE9uIFdlZCwgQXByIDE1LCAyMDI2IGF0
IDE6NDTigK9QTSBKb3NodWEgUGVpc2FjaCA8anBlaXNhY2hAdWJ1bnR1LmNvbT4gd3JvdGU6Cj4+
ID4gSXQgZG9lcyBhcHBlYXIgdG8gYmUgc2ltaWxhciAtIGV2ZW4gdGhlIGN1cnJlbnQgYnJjbTgw
MjExLiBTbyBtdWNoIHNvCj4+ID4gdGhhdCBJIHNvbWV0aW1lcyBuZWVkIHRvIHRoaW5rIGFib3V0
IHdoZXRoZXIgYjQzIGlzIGFjdHVhbGx5IGEKPj4gPiBkdXBsaWNhdGVkIGRyaXZlci4KPj4gPgo+
PiA+IFNpbmNlIGI0MyBpcyBpbiBhbiBvcnBoYW4gc3RhdGUsIEkgdGhvdWdodCBpdCB3b3VsZCBi
ZSBhIGdyZWF0IHBsYWNlIHRvCj4+ID4gc3RhcnQgZm9yIGtlcm5lbCBkZXZlbG9wbWVudC4gNUcg
ZG9lc24ndCB3b3JrIG9uIHRoYXQgaU1hYywgc29tZSBvZiB0aGUKPj4gPiBQSFlzLCBsaWtlIHRo
ZSBBQyBQSFlzIGFwcGVhciB0byBiZSBpbmNvbXBsZXRlIC0gaXQgZmVsdCByZWFzb25hYmxlLgo+
PiA+Cj4+ID4gQmVjYXVzZSBJJ20gb25lIG9mIHRob3NlICJ0aGVyZSdzIGFsd2F5cyByb29tIGZv
ciBpbXByb3ZlbWVudCBwZW9wbGUiLAo+PiA+IEkgd2FzIGdvaW5nIHRvIHRyeSB0byBpbXByb3Zl
IHRoZSBkcml2ZXIsIGZpbGxpbmcgb3V0IFRPRE9zLCBmaXhpbmcKPj4gPiBoYXJkY29kZWQgcmVn
aXN0ZXIgbnVtYmVycywgZXRjLiBCdXQgaWYgaXQncyBiZXN0IGxlZnQgYWxvbmUuLiB0aGVuIEkK
Pj4gPiBndWVzcyB3ZSBjYW4gZG8gdGhhdC4KPj4gPgo+PiA+IFRoYXQgaXMsIGFzc3VtaW5nIGI0
MyBpcyBhY3R1YWxseSBzdXBwb3NlZCB0byBiZSBhIHNlcGFyYXRlIGRyaXZlciwKPj4gPiBiZWNh
dXNlIGlmIGJyY21zbWFjIGJhc2ljYWxseSBoYXMgdGhlIHNhbWUgY29kZSwgdGhlbiBtYXliZSB3
ZSBzaG91bGQKPj4gPiBmb2N1cyB0byBjZW50cmFsaXppbmcgZXZlcnl0aGluZz8gQnV0IHRoZW4g
dGhlcmUncyBiNDNsZWdhY3kuLiBobS4uLiAgCj4+IAo+PiBJdCBpcy93YXMgaW50ZW50aW9uYWxs
eSBhIHNlcGFyYXRlIGRyaXZlcjogQnJvYWRjb20gZGlkbid0IHdhbnQgdG8KPj4gbWFpbnRhaW4g
c3VwcG9ydCBmb3Igb2Jzb2xldGUgY2hpcHMgKGFueXRoaW5nIFNTQiwgYW55dGhpbmcgb2xkZXIg
dGhhbgo+PiBCQ000MzIyNCksIHNvIHRoZSBkZWNpc2lvbiB3YXMgdG8gaGF2ZSBiNDMgc3VwcG9y
dCBhbGwgdGhlICJsZWdhY3kiCj4+IGNoaXBzLCB3aGlsZSBicmNtODAyMTEgc3VwcG9ydHMgZXZl
cnl0aGluZyBuZXZlci4gU2luY2UgdGhleSB3ZXJlIGJvdGgKPj4gYmFzZWQgb24gdGhlIHNhbWUg
ZHJpdmVyLCB0aGV5IGFyZSAobW9yZSBvciBsZXNzKSB0aGUgc2FtZQo+PiBhcmNoaXRlY3R1cmUu
Cj4+IAo+PiBCdXQgbm93IHRoYXQgQnJvYWRjb20gaGFzIGVzc2VudGlhbGx5IGFiYW5kb25lZCB0
aGUgc29mdG1hYyBwYXJ0IG9mCj4+IGJyY204MDIxMSBzaW5jZSBzZXZlcmFsIHllYXJzLCBJIGRv
bid0IHRoaW5rIHRoZXJlIHdvdWxkIGJlIG1hbnkKPj4gb2JqZWN0aW9ucyBvbiB1bmlmeWluZyBp
dCB3aXRoIGI0My4KPgo+IFRoZSBoYXJkZXN0IHBhcnQgaW4gdGhlIGI0MyBkZXZlbG9wbWVudCBh
bHdheXMgd2FzIG5vdCB0byBicmVhayBhbHJlYWR5Cj4gd29ya2luZyBzdHVmZi4gVGhlcmUgYXJl
IG1hbnkgZGlmZmVyZW50IHR5cGVzIGFuZCByZXZpc2lvbnMgb2YgdGhlIGhhcmR3YXJlCj4gb3V0
IHRoZXJlLiBQcm9iYWJseSBpbiB0aGUgb3JkZXIgb2YgbWFueSBkb3plbnMgb2YgdmFyaWFudHMu
Cj4KPiBQbGVhc2Uga2VlcCBpbiBtaW5kIHRoYXQgY2hhbmdpbmcgY29kZSBtZWFucyBtb3N0bHkg
dGVzdGluZy4KPiBXaGljaCBpcyBoYXJkLCBpZiB5b3UgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmUg
dmFyaWFudHMgYW5kIGJhc2ljYWxseSBubwo+IHVzZXJzIGV4aXN0IGFueW1vcmUuIEp1c3QgaW1w
bGVtZW50aW5nIHJhbmRvbSBUT0RPcyBhbmQgbWlzc2luZyBwaWVjZXMKPiB3aWxsIGJyZWFrIHRo
aW5ncy4gKGUuZy4gbm90IGRvaW5nIHNvbWUgSFcgY2FsaWJyYXRpb24gb3Igd29ya2Fyb3VuZCBt
aWdodAo+IGJlIGJldHRlciB0aGFuIG9ubHkgcGFydGlhbGx5IGRvaW5nIGl0IG9yIGRvaW5nIGl0
IHdyb25nKS4KPgoKV2VsbCwgaWYgdGhlIHJlZ3Jlc3Npb24gcmlzayBpcyB0aGF0IGhpZ2gsIHRo
ZW4gSSBndWVzcyBJJ2xsIGxldCBpdCBiZS4KCj4gSSB3b3VsZCBwZXJzb25hbGx5IG5vdCB0b3Vj
aCB0aGlzIHRoaW5nIGFueW1vcmUsIGV4Y2VwdCBmb3Igc2VjdXJpdHkgZml4ZXMgYW5kIHN1Y2gu
Cj4KClN1cmUuIEkgbWlnaHQganVzdCBtYWtlIHN1cmUgZXZlcnl0aGluZyBpcyB1c2luZyByZWdp
c3RlciBkZWZpbml0aW9ucwppbnN0ZWFkIG9mIGhhcmRjb2RlZCB2YWx1ZXMsIGJ1dCB0aGVuIGxl
YXZlIGl0IHRoZXJlLgoKPiBCdXQgaWYgeW91IHdhbnQgdG8gd29yayBvbiB0aGUgY29kZSwgbG9u
ZyB0ZXJtLCBJIHdvdWxkIHdlbGNvbWUgdGhhdC4KPiBXZSBjb3VsZCBldmVuIGFycmFuZ2UgdGhh
dCBJIHNoaXAgeW91IHNvbWUgaGFyZHdhcmUuCj4gQnV0IGtlZXAgaW4gbWluZCwgaXQncyBhbGwg
YWxtb3N0IDIwIHllYXJzIG9sZCBsZWdhY3kgc3R1ZmYuCgpUaGUgb25seSBiNDMgZGV2aWNlcyBJ
IGhhdmUgYXJlIHRoZSBhZm9yZW1lbnRpb25lZCBpTWFjLCBhbmQgYWxzbyB0aGUKV2lpLiBBbmQg
dW5sZXNzIHRoZSBoYXJkd2FyZSBpcyB1bmlxdWUgaW4gc29tZSBvdGhlciB3YXksIEkgZG9uJ3Qg
dGhpbmsKaXRzIHdvcnRoIHNlbmRpbmcgaXQgdG8gbWUuIEJlc2lkZXMsIGlmIHRoZSBjb2RlIGlz
IHNvIHJpc2t5IHRvIHRvdWNoLAp0aGVuIHRoZSBvbmx5IHRlY2huaWNhbCBjaGFuZ2UgSSBtYWtl
IHNob3VsZCBqdXN0IGJlIHRvIGZpeCBteSA1RwpzaXR1YXRpb24uCgpJIGRpZG4ndCBpbnRlbmQg
dG8gYmVjb21lIGEgYjQzIG1haW50YWluZXIsIGFuZCBnaXZlbiB3aGVyZSBJIGN1cnJlbnRseQph
bSBsaWZld2lzZSwgSSBkb24ndCB0aGluayBpdCdzIHdvcnRoIHRyeWluZyB0byBmdWxmaWxsIHRo
YXQgcm9sZSBsb25nCnRlcm0uIEhvcGVmdWxseSBJJ2xsIGZpbmQgYXJlYXMgb2Ygd29yayBpbiBi
cmNtODAyMTEgdG8gd29yayBpbi4gSXQKanVzdCBzbyBoYXBwZW5lZCB0aGF0ICJtYWtlIHN1cmUg
dGhlIGtlcm5lbCB3b3JrcyBvbiBldmVyeXRoaW5nIHlvdSBjYW4KZ2V0IHlvdXIgaGFuZHMgb24i
IHN0dW1ibGVkIGFjcm9zcyBiNDMsIHdoaWNoIEkgdGhvdWdodCB3b3VsZCBiZSBhIGdvb2QKc3Rh
cnRpbmcgcG9pbnQuCgpTbyBJIGd1ZXNzIHRoaXMgZHJpdmVyIGp1c3Qgc2l0cyBoZXJlLi4gbm90
IHF1aXRlIHBvaW50bGVzcyB0byBiZQpyZW1vdmVkIGZyb20gdGhlIG1haW4gdHJlZSwgYnV0IG5v
dCBxdWl0ZSB3b3J0aCB0aGUgZWZmb3J0IHRvIGJyaW5nIGl0CnVwIHRvIHNwZWVkLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5n
IGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
