Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D9DC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 19:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gE+8Kbap3FBUp6SvplMfF6Sn8YVGh2BYHmZAtVn5588=; b=ZkoA+NfkeZUYuU
	AfN9q3Rk3Mgxr5E3ELdvG7WBPEycyZbkD8W0xhHPRlXglFRHvxXBvob61f+IiWXOP6FIYhQTWkCdw
	c0emIlx/9tnkfQ28MSAqEQE1n4zHPW35Ybv1+rXN8pFVArrTLF9gBYYATfHt2j/NvC5T5SreOYniS
	Pv20cUgTJDNPX223jStH1A11YRzpl2LjMCexyAw247JlCA7eJouqPpqdFVvC5IZBo88jchpvtsi41
	YsBuzDNUQePe7LJnAW9j8265HUgpphfTQl/t+TYzCtz7eXHkxJRLPQJSTdmbo70fwKckY3Gnepoo+
	W+9WggCKUGcUO+p4od+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfA6-003LWd-0M;
	Sat, 30 Dec 2023 19:38:22 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfA3-003LW2-2o
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 19:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703965094; x=1704224294;
	bh=hzDnlR2JtaWtfwJIyhGyRAK5TYxs41N11mbfkjjCeuA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Aahj92t5uGFWTqmOxjniE5OZ3TRJguziyPxCCgQ29EPrxtCqZ3kR9LtjXcV1/LdZq
	 9j8dwpnozl5p+zuocdqzsViooERopNkJy5IEHRpUXIvGkV2uQVFYVoULoJOGoGBpI2
	 BXLOQmcihq1llvS/oZJ07g9Qq5mE/P040mT9XhiI8iJbUc2iexcxjxzySToYm/rW3W
	 fL6kBJIZQfAeTMxTNqYQZ9rXklN8a7aY0bWDyf5VeNpbDqr7VRo0BGRJpdbvKJ5ds5
	 Z+bSqsWNDnAaMOSv7vKYvXRbEPX5NW21pIht+Qe0yue4PeDz9t3NRaVhZwl/GroKXy
	 WHdWzXYC5iuag==
Date: Sat, 30 Dec 2023 19:37:56 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Julian Calaby <julian.calaby@gmail.com>, Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 2/5] wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
Message-ID: <87bka7wkfm.fsf@protonmail.com>
In-Reply-To: <20231230184113.3ecfed4f@barney>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-3-sergeantsagara@protonmail.com> <CAGRGNgWYLTmRfvw94Ok_FfcEVGPa0tRg-ELxkD8K6nxTTNZ9jg@mail.gmail.com> <20231230144036.7f48b739@barney> <878r5bk3x9.fsf@protonmail.com> <20231230184113.3ecfed4f@barney>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_113820_103004_F17273D1 
X-CRM114-Status: GOOD (  22.56  )
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

T24gU2F0LCAzMCBEZWMsIDIwMjMgMTg6NDE6MTMgKzAxMDAgTWljaGFlbCBCw7xzY2ggPG1AYnVl
cy5jaD4gd3JvdGU6Cj4gW1tQR1AgU2lnbmVkIFBhcnQ6VW5kZWNpZGVkXV0KPiBPbiBTYXQsIDMw
IERlYyAyMDIzIDE3OjE1OjE4ICswMDAwCj4gUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdh
cmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4+IE9uIFNhdCwgMzAgRGVjLCAyMDIzIDE0OjQw
OjM2ICswMTAwIE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMuY2g+IHdyb3RlOgo+PiA+IFtbUEdQIFNp
Z25lZCBQYXJ0OlVuZGVjaWRlZF1dCj4+ID4gT24gU2F0LCAzMCBEZWMgMjAyMyAxODo0ODo0NSAr
MTEwMAo+PiA+IEp1bGlhbiBDYWxhYnkgPGp1bGlhbi5jYWxhYnlAZ21haWwuY29tPiB3cm90ZTog
IAo+PiA+PiA+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9kbWEuYwo+
PiA+PiA+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9kbWEuYwo+PiA+
PiA+IEBAIC0xMzk5LDcgKzEzOTksMTAgQEAgaW50IGI0M19kbWFfdHgoc3RydWN0IGI0M193bGRl
diAqZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+PiA+PiA+ICAgICAgICAgICAgIHNob3VsZF9p
bmplY3Rfb3ZlcmZsb3cocmluZykpIHsKPj4gPj4gPiAgICAgICAgICAgICAgICAgLyogVGhpcyBU
WCByaW5nIGlzIGZ1bGwuICovCj4+ID4+ID4gICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBz
a2JfbWFwcGluZyA9IHNrYl9nZXRfcXVldWVfbWFwcGluZyhza2IpOwo+PiA+PiA+IC0gICAgICAg
ICAgICAgICBpZWVlODAyMTFfc3RvcF9xdWV1ZShkZXYtPndsLT5odywgc2tiX21hcHBpbmcpOwo+
PiA+PiA+ICsgICAgICAgICAgICAgICBpZiAoZGV2LT5xb3NfZW5hYmxlZCkKPj4gPj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICBpZWVlODAyMTFfc3RvcF9xdWV1ZShkZXYtPndsLT5odywgc2ti
X21hcHBpbmcpOwo+PiA+PiA+ICsgICAgICAgICAgICAgICBlbHNlCj4+ID4+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaWVlZTgwMjExX3N0b3BfcXVldWUoZGV2LT53bC0+aHcsIDApOyAgICAK
Pj4gPj4gCj4+ID4+IFdvdWxkIHRoaXMgYmUgYSBsaXR0bGUgY2xlYW5lciBpZiB3ZSBvbmx5IGxv
b2sgdXAgdGhlIHF1ZXVlIG1hcHBpbmcgaWYKPj4gPj4gUU9TIGlzIGVuYWJsZWQ/IEkuZS4gIAo+
PiA+Cj4+ID4gTm8uIEl0IHdvdWxkIGJyZWFrIHRoZSBvdGhlciB1c2VzIG9mIHNrYl9tYXBwaW5n
Lgo+PiA+Cj4+ID4gQnV0IEkgYW0gd29uZGVyaW5nIHdoeSBza2JfbWFwcGluZyBpcyBub24temVy
byBpbiB0aGUgZmlyc3QgcGxhY2UuCj4+ID4gSSB0aGluayB0aGUgYWN0dWFsIGJ1ZyBtaWdodCBi
ZSBzb21ld2hlcmUgZWxzZS4gIAo+PiAKPj4gUmlnaHQsIHNrYl9tYXBwaW5nIGlzIHVzZWQgdG8g
bWFwIHRvIHRoZSBjb3JyZWN0IHNvZnR3YXJlIHN0cnVjdHVyZXMgRE1BCj4+IG1hcHBlZCB0byB0
aGUgZGV2aWNlLiBUaGUgcmVhc29uIHRoZSBtYXBwaW5nIGZvciB0aGUgYmVzdCBlZmZvcnQgcXVl
dWUKPj4gKHRoZSBkZWZhdWx0L2RlZmFjdG8gd2hlbiBRb1MgaXMgZGlzYWJsZWQpIGlzIG5vdCB6
ZXJvIGlzIGR1ZSB0byB0aGUgd2F5Cj4+IGluaXRpYWxpemF0aW9uIG9mIHRoZSBxdWV1ZXMvcmlu
Z3Mgb2NjdXJzIGluIHRoZSBkcml2ZXIuIFRoZSBiZXN0IGVmZm9ydAo+PiBxdWV1ZSBpcyBtYXBw
ZWQgYXMgdGhlIHRoaXJkIHF1ZXVlLCB3aGljaCBsZWFkcyB0byB0aGlzIGlzc3VlIHdoZW4gUW9T
Cj4+IGlzIGRpc2FibGVkLiBXb3VsZCBpdCBtYWtlIG1vcmUgc2Vuc2UgdG8gY2hhbmdlIHRoZSBt
YXBwaW5ncyBpbgo+PiBpbml0aWFsaXphdGlvbiBzdWNoIHRoYXQgdGhlIGJlc3QgZWZmb3J0IHF1
ZXVlIGlzIGJ5IGRlZmF1bHQgbWFwcGVkIHRvCj4+IHplcm8sIHNvIHdlIHdvdWxkIG5vdCBuZWVk
IHN1Y2ggY29uZGl0aW9uYWxzPwo+Cj4gTWF5YmUgaXQgaXMgYSBnb29kIGlkZWEgdG8gZmluZCB0
aGUgcGF0Y2ggdGhhdCBicm9rZSBub24tUW9TLgo+IFRoYXQgcG9zc2libHkgaGVscHMgdG8gdW5k
ZXJzdGFuZCB0aGUgc2l0dWF0aW9uLgo+Cj4gTm9uLVFvUyB1c2VkIHRvIHdvcmsganVzdCBmaW5l
LgoKSSBkaWQgc29tZSBnaXQgYW5hbHlzaXMsIGFuZCBJIGFjdHVhbGx5IGJlbGlldmUgdGhhdCB0
aGlzIGlzc3VlIGhhcyBiZWVuCnByZXNlbnQgc2luY2UgdGhlIGNvbW1pdCBlNmY1YjkzNGZiYTgg
KCJiNDM6IEFkZCBRT1Mgc3VwcG9ydCIpLiBCZWZvcmUKdGhlbiwgbm9uLVFPUyB3b3VsZCBub3Qg
dHJpZ2dlciB0aGlzIGlzc3VlLiBUaGVyZSBpcyBhIGNvc21ldGljIGNoYW5nZQphZnRlciB0aGlz
IGNvbW1pdCwgYjI3ZmFmOGViZjI1ICgiYjQzOiBSZW5hbWUgdGhlIERNQSByaW5nIHBvaW50ZXJz
IiksCmJ1dCB0aGlzIGNoYW5nZSBkb2VzIG5vdCBpbnRyb2R1Y2UgdGhlIGlzc3VlIChidXQgbWFr
ZXMgaXQgbW9yZQpvYnZpb3VzKS4gSSB0aGluayB0aGUgcmVhc29uIG5vYm9keSBoYXMgZXZlciBy
ZXBvcnRlZCB0aGlzIGlzIHRoYXQgZXZlbgp3aGVuIHRoZSB3YXJuaW5ncyBhcmUgdHJpZ2dlcmVk
LCBldmVyeXRoaW5nIGFwcGVhcnMgdG8gd29yayBmaW5lLiBJCnRoaW5rIHRoZXJlZm9yZSB0aGUg
dHdvIG9wdGlvbnMgYXJlIHRoZSBmb2xsb3dpbmcuCgoxLiBSZW1hcCB0aGUgQkUgcXVldWUgdG8g
MCBpbnN0ZWFkIG9mIHRoZSBCSyBxdWV1ZS4KMi4gVXNlIHRoaXMga2luZCBvZiBjb25kaXRpb25h
bCB0byBoYW5kbGUgdGhlIG1hcHBpbmcgd2hlbiBRb1MgaXMKICAgZGlzYWJsZWQuCgotLQpUaGFu
a3MsCgpSYWh1bCBSYW1lc2hiYWJ1CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
