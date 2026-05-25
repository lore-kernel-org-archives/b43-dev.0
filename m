Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F68CD5BD0
	for <b43-dev@archiver.kernel.org>; Mon, 25 May 2026 12:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMtHYOSdSjgsGkQbKV3CeE1IqKJ9uUwOZTlBGMM+AtU=; b=npT33ph/y9jKDl
	NVIJHOrPaChJvP2SfeeUEuFCw7DXolGDav6B/YrY/I77u5FvNu9ggQGKId4VyCEXxe+ZK7MZ547iT
	aAsYZsqMUqHmquWhArb9XhGr5AyXHE8KLUuwDFPeU9avvY/oPgSPrj7KNKTD46jz32E87NyssQP3I
	A1uaMolKNAwPyHQsADIvvFRfVbyIKg43edrTaT2KQl9p6NfyWciU7345RdkD3EirT8uG7bITqeAr7
	zVYQlQWxWDronvJFChqn2f/fntd8IXURYUpEO2suKAKEKE8XSF9+5IeBZ6Ez0I1Lbbg6JxZ5S6ywj
	qEWHV6XruoupjZQ22MuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRU35-0000000H9W5-16JS;
	Mon, 25 May 2026 12:04:47 +0000
Received: from smtpcmd13147.aruba.it ([62.149.156.147])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRU31-0000000H9VG-2fmC
	for b43-dev@lists.infradead.org;
	Mon, 25 May 2026 12:04:46 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RU2wwAEOKRHshRU2xw9Ybd; Mon, 25 May 2026 14:04:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779710679; bh=nh+iolmP75Y2qpuH5i4RsRIM0gHKVVXMn7VPwJyUSbk=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=Iouee/MrBuwntjoyTNrTmbY09Hvd0YZMyVy1qUdktw3THcwWrqfgT3lUS9KOYqcrY
	 OG7Frqta8p2oa4OLLv6Q4mGZBua6RjsujTVFEwRDj2oFSMjxtnhBHCWCthx0WMjk5Q
	 p/597uS8FdJkhetPqFEga8CZad60gAsE2+1/rn8aHpZK7BAqzCxDlrub6p3dR1Py9t
	 mbTYJh6XxnVaB6PMgV57uJJbR8F2uZfp+AF8J4Ep8Zz9v1L5O2XgwQJBEP2iahXxHv
	 k24UVI4bIbS+IGRe+BZsSBRvNfiJ0pA5n6EcDJCUsKsRSK/hoOLmf8SZsA+QRSFwg0
	 R4tF93F7yAoUA==
Date: Mon, 25 May 2026 14:04:38 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260525140438.265975e7@fedora>
In-Reply-To: <20260525100752.16cdb59e@barney>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
	<20260525100752.16cdb59e@barney>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfA8g/o0XpY+yYmGT4362WFYw+FY4UPH6Wtg1/Sr1mbAUUHQ2ZIfhJEsj0NXgOnq6wA5vwTSc1aBzeXEu0EpTiDX43vWlJOHXgNaPXLi4H4t7xoTg9iMZ
 /0++QQKC49mwiSt8ngrxGy1frLKbA8YtLZb8ho0vVU2VepkS/yuh/sCoR2bzHfV0VH29UxRUrntzgOael+Bx6PHsE2g0ftOm6w5Bwc7p9cprkQkYnovynmLN
 yQBhwF6R4rLXXBG2yh07obTPiFSd4fIJtgN8TQPhc/mSGqjrtiIgMMkE5fBsMdEK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_050444_139924_712A1FE2 
X-CRM114-Status: GOOD (  12.51  )
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

SWwgZ2lvcm5vIE1vbiwgMjUgTWF5IDIwMjYgMTA6MDc6NTIgKzAyMDAKTWljaGFlbCBCw7xzY2gg
PG1AYnVlcy5jaD4gaGEgc2NyaXR0bzoKCj4gT24gU3VuLCAyNCBNYXkgMjAyNiAyMzo1NjoxNyAr
MDIwMAo+IEFsZXNzaW8gRmVycmkgPGFsZXNzaW8uZmVycmlAbXl0aHJlYWQuaXQ+IHdyb3RlOgo+
IAo+ID4gQWxlc3NpbyBGZXJyaSAoNyk6Cj4gPiAgICAgICBiNDM6IGFkZCBmaXJtd2FyZSBtYXBw
aW5ncyBhbmQgcmVtb3ZlIGNvbW1lbnRzIHdvbmRlcmluZwo+ID4gYWJvdXQgcmV2MjIgaW5pdHZh
bHMgYjQzOiBhZGQgZDExIGNvcmUgcmV2aXNpb24gMHgxNiB0byBpZCB0YWJsZQo+ID4gICAgICAg
YjQzOiByb3V0ZSBkMTEgY29yZXJldiAyMiB0byAyNC1iaXQgaW5kaXJlY3QgcmFkaW8gYWNjZXNz
Cj4gPiAgICAgICBiNDM6IHN1cHBvcnQgcmFkaW8gMjA1NyByZXYgOAo+ID4gICAgICAgYjQzOiBh
ZGQgSVBBIFRYIGdhaW4gdGFibGUgZm9yIE4tUEhZIHI4ICsgcmFkaW8gMjA1NyByOAo+ID4gICAg
ICAgYjQzOiBhZGQgY2hhbm5lbCBpbmZvIHRhYmxlIGZvciBOLVBIWSByOCArIHJhZGlvIDIwNTcg
cjgKPiA+ICAgICAgIGI0MzogYWRkIFJGIHBvd2VyIG9mZnNldCBmb3IgTi1QSFkgcjggKyByYWRp
byAyMDU3IHI4Cj4gPiAKPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvbWFp
bi5jICAgICAgICB8ICAyMiArKy0KPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9i
NDMvcmFkaW9fMjA1Ny5jICB8IDIzMAo+ID4gKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiBk
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvdGFibGVzX25waHkuYyB8ICA1OCArKysr
KysgMwo+ID4gZmlsZXMgY2hhbmdlZCwgMjkwIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KSAgCj4gCj4gCj4gTG9va3MgZ29vZCBhbmQgaW4gZ2VuZXJhbCBsb3cgcmlzayBiZWNhdXNlIGl0
IGRvZXNuJ3QgY2hhbmdlIGFueSBjb2RlCj4gcGF0aHMgb2Ygc3VwcG9ydGVkIGh3IHJldmlzaW9u
cy4KPiBJJ2Qgc3RpbGwgcHJlZmVyIGlmIHNvbWVib2R5IGNvdWxkIHRlc3QgdGhpcyBjaGFuZ2Ug
b24gYW5vdGhlcgo+IHN1cHBvcnRlZCAyMDU3IHJhZGlvLiBJIGRvbid0IGhhdmUgc3VjaCBhIGRl
dmljZSB1bmZvcnR1bmF0ZWx5Lgo+IAo+IERvZXMgdGhlIEQtTGluayBEU0wtMzU4MEwgd29yayB3
aXRoIGZ1bGwgZXhwZWN0ZWQgd2lyZWxlc3MgdGhyb3VnaHB1dAo+IGFmdGVyIHRoaXMgY2hhbmdl
IG9yIGFyZSB0aGVyZSBhbnkgcmVtYWluaW5nIGtub3duIGlzc3Vlcz8KPiAKPiBBY2tlZC1ieTog
TWljaGFlbCBCw7xzY2ggPG1AYnVlcy5jaD4KPiAKClBsZWFzZSBjbGFyaWZ5ICJmdWxsIGV4cGVj
dGVkIHdpcmVsZXNzIHRocm91Z2hwdXQiLCBIVCBpcwpub3Qgc3VwcG9ydGVkIGJ5IGI0Mywgc28g
aXQgcnVucyBvbmx5IHdpdGggTk9IVCBpbiBnLWxpa2Ugc3BlZWQ6Cgp3aXJlbGVzcy5yYWRpbzA9
d2lmaS1kZXZpY2UKd2lyZWxlc3MucmFkaW8wLnR5cGU9J21hYzgwMjExJwp3aXJlbGVzcy5yYWRp
bzAucGF0aD0ncGxhdGZvcm0vdWJ1cy8xMDAwNzAwMC53bGFuLzEwMDA0MDAwLmF4aS9iY21hMDox
Jwp3aXJlbGVzcy5yYWRpbzAuYmFuZD0nMmcnCndpcmVsZXNzLnJhZGlvMC5jaGFubmVsPSczNicK
d2lyZWxlc3MucmFkaW8wLmh0bW9kZT0nTk9IVCcKd2lyZWxlc3MucmFkaW8wLmNvdW50cnk9J0lU
Jwp3aXJlbGVzcy5kZWZhdWx0X3JhZGlvMD13aWZpLWlmYWNlCndpcmVsZXNzLmRlZmF1bHRfcmFk
aW8wLmRldmljZT0ncmFkaW8wJwp3aXJlbGVzcy5kZWZhdWx0X3JhZGlvMC5uZXR3b3JrPSdsYW4n
CndpcmVsZXNzLmRlZmF1bHRfcmFkaW8wLm1vZGU9J2FwJwp3aXJlbGVzcy5kZWZhdWx0X3JhZGlv
MC5zc2lkPSdEU0wzNTgwTCcKd2lyZWxlc3MuZGVmYXVsdF9yYWRpbzAuZW5jcnlwdGlvbj0ncHNr
MicKd2lyZWxlc3MuZGVmYXVsdF9yYWRpbzAuZGlzYWJsZWQ9JzAnCgpFbmFibGluZyBIVCBmb3Ig
TiBjaGlwcyBpcyBvdXQgb2Ygc2NvcGUsIGFsc28gdGhlcmUgbm90aGluZyB0bwpnYWluIGFuZCBh
IGxvdCB0byByaXNrLCBzbyBpIHdvbid0IGRvIGl0LgoKT25jZSB0aGlzIGxhbmRzLCBpIHdvdWxk
IG1vdmUgdG8gZml4IEFDIHN1cHBvcnQgZm9yIHRoZSBvbmx5IHR3byBjaGlwcwp0aGF0IHJlcXVp
cmUgYjQzIHRvIHdvcmsgKDQzNTIgJiA0MzYwKS4gSSBvd24gdGhlbSBib3RoLCBpbiBtdWx0aXBs
ZQpyb3V0ZXJzLCBzbyBpIGNhbiBzYWZlbHkgZGV2ZWxvcCBmb3IgdGhlbS4gSXQgaXMgYWxzbyBs
b3cgcmlzayBhcyB0aGVyZQphcmUgbm8gZXhpc3RpbmdzIHVzZXJzLgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
