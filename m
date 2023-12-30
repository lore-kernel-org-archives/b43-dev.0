Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC1AAC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 17:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbFCC1skgF+/XL6gCV7y63SM+oItA6/wkNpIZVXwtw4=; b=lNoQBNqoDWXV4O
	QfKvGw0gQAG73c9xYrMvwq9gU71Y5WR9/ZHw1FHlmwqJqU92EkXWvITdT44c6+igZFqc2mAxZElB0
	5EiR2Y6J9kYSzRTqsKT+B1ZCwzXJWankHv6AAD/6nB4oXrcCQHsNkHqA0b381Qi4Rd63z4+Ud4FyK
	22mEcxnG9MUKjiWFXt7eVhEMaKlk1gXMqvlojLWxTBUEdT3BDUFbdYjI3Ux+T+tGnFiUWCB2Jr/V9
	Sm48O64oWn+pGNtMK9BUsUBZh2NlBl+jt2nTCIm8X2VhMALkjEwDleE79vyGueBTW5NTiaRRSqoFf
	a1AG+4J87pttNHzPbbyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcvt-0039H8-2g;
	Sat, 30 Dec 2023 17:15:33 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcvr-0039G5-0d
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 17:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703956524; x=1704215724;
	bh=09Hmr6FulL4GOGnkm6RTp3Uh3iuibt0XtEnBi3NKpx0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=MLN/rQ0//gvkGbqBg5K0NlNmP/OmjnP8M0ydYz3Vfm5Q9VhHo65tFsttgxjI373kY
	 DLsdsatl10g40/HIWtIbK949a2mjL+/3aqGkGVSFRTUqq0UNziRjpysRTVwUKopUU8
	 kpi/7S9Ec2n1btgdDV9oJdv6WtP++98Nd4131EuT9x7b7WAInfo+yrBE8gIFI2+hPT
	 S9AY37xg0JgEnPP1B8/a0N77HgXBbKXuRlvmNjlqENoWpUjtuc6XureBi9VcYunmXX
	 mhj+Rjexpufc8LfWWgH2/zUw7dhjOO37XDDmcaCihEddzsXHPcezCrCY1bBJ/z4oii
	 vgaH11JAEEyKw==
Date: Sat, 30 Dec 2023 17:15:18 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Julian Calaby <julian.calaby@gmail.com>, Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 2/5] wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
Message-ID: <878r5bk3x9.fsf@protonmail.com>
In-Reply-To: <20231230144036.7f48b739@barney>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-3-sergeantsagara@protonmail.com> <CAGRGNgWYLTmRfvw94Ok_FfcEVGPa0tRg-ELxkD8K6nxTTNZ9jg@mail.gmail.com> <20231230144036.7f48b739@barney>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_091531_392447_D49F7F81 
X-CRM114-Status: GOOD (  14.06  )
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

T24gU2F0LCAzMCBEZWMsIDIwMjMgMTQ6NDA6MzYgKzAxMDAgTWljaGFlbCBCw7xzY2ggPG1AYnVl
cy5jaD4gd3JvdGU6Cj4gW1tQR1AgU2lnbmVkIFBhcnQ6VW5kZWNpZGVkXV0KPiBPbiBTYXQsIDMw
IERlYyAyMDIzIDE4OjQ4OjQ1ICsxMTAwCj4gSnVsaWFuIENhbGFieSA8anVsaWFuLmNhbGFieUBn
bWFpbC5jb20+IHdyb3RlOgo+PiA+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My9kbWEuYwo+PiA+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9k
bWEuYwo+PiA+IEBAIC0xMzk5LDcgKzEzOTksMTAgQEAgaW50IGI0M19kbWFfdHgoc3RydWN0IGI0
M193bGRldiAqZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+PiA+ICAgICAgICAgICAgIHNob3Vs
ZF9pbmplY3Rfb3ZlcmZsb3cocmluZykpIHsKPj4gPiAgICAgICAgICAgICAgICAgLyogVGhpcyBU
WCByaW5nIGlzIGZ1bGwuICovCj4+ID4gICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBza2Jf
bWFwcGluZyA9IHNrYl9nZXRfcXVldWVfbWFwcGluZyhza2IpOwo+PiA+IC0gICAgICAgICAgICAg
ICBpZWVlODAyMTFfc3RvcF9xdWV1ZShkZXYtPndsLT5odywgc2tiX21hcHBpbmcpOwo+PiA+ICsg
ICAgICAgICAgICAgICBpZiAoZGV2LT5xb3NfZW5hYmxlZCkKPj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBpZWVlODAyMTFfc3RvcF9xdWV1ZShkZXYtPndsLT5odywgc2tiX21hcHBpbmcpOwo+
PiA+ICsgICAgICAgICAgICAgICBlbHNlCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaWVl
ZTgwMjExX3N0b3BfcXVldWUoZGV2LT53bC0+aHcsIDApOyAgCj4+IAo+PiBXb3VsZCB0aGlzIGJl
IGEgbGl0dGxlIGNsZWFuZXIgaWYgd2Ugb25seSBsb29rIHVwIHRoZSBxdWV1ZSBtYXBwaW5nIGlm
Cj4+IFFPUyBpcyBlbmFibGVkPyBJLmUuCj4KPiBOby4gSXQgd291bGQgYnJlYWsgdGhlIG90aGVy
IHVzZXMgb2Ygc2tiX21hcHBpbmcuCj4KPiBCdXQgSSBhbSB3b25kZXJpbmcgd2h5IHNrYl9tYXBw
aW5nIGlzIG5vbi16ZXJvIGluIHRoZSBmaXJzdCBwbGFjZS4KPiBJIHRoaW5rIHRoZSBhY3R1YWwg
YnVnIG1pZ2h0IGJlIHNvbWV3aGVyZSBlbHNlLgoKUmlnaHQsIHNrYl9tYXBwaW5nIGlzIHVzZWQg
dG8gbWFwIHRvIHRoZSBjb3JyZWN0IHNvZnR3YXJlIHN0cnVjdHVyZXMgRE1BCm1hcHBlZCB0byB0
aGUgZGV2aWNlLiBUaGUgcmVhc29uIHRoZSBtYXBwaW5nIGZvciB0aGUgYmVzdCBlZmZvcnQgcXVl
dWUKKHRoZSBkZWZhdWx0L2RlZmFjdG8gd2hlbiBRb1MgaXMgZGlzYWJsZWQpIGlzIG5vdCB6ZXJv
IGlzIGR1ZSB0byB0aGUgd2F5CmluaXRpYWxpemF0aW9uIG9mIHRoZSBxdWV1ZXMvcmluZ3Mgb2Nj
dXJzIGluIHRoZSBkcml2ZXIuIFRoZSBiZXN0IGVmZm9ydApxdWV1ZSBpcyBtYXBwZWQgYXMgdGhl
IHRoaXJkIHF1ZXVlLCB3aGljaCBsZWFkcyB0byB0aGlzIGlzc3VlIHdoZW4gUW9TCmlzIGRpc2Fi
bGVkLiBXb3VsZCBpdCBtYWtlIG1vcmUgc2Vuc2UgdG8gY2hhbmdlIHRoZSBtYXBwaW5ncyBpbgpp
bml0aWFsaXphdGlvbiBzdWNoIHRoYXQgdGhlIGJlc3QgZWZmb3J0IHF1ZXVlIGlzIGJ5IGRlZmF1
bHQgbWFwcGVkIHRvCnplcm8sIHNvIHdlIHdvdWxkIG5vdCBuZWVkIHN1Y2ggY29uZGl0aW9uYWxz
PwoKLS0KVGhhbmtzLAoKUmFodWwgUmFtZXNoYmFidQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2I0My1kZXYK
