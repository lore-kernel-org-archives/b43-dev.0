Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55710F41994
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 11:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv1eqPjTygPpn/KOY/DqTf2ZkCf+iQYzWkGCQjZzLNI=; b=STUH8erjO5L04X
	C+U+616I8oRJX2mZri5Nb7vp+dVy6sS/4mVZvlRxmMbVv/bfLivRKBlkEum6j+GCpUnOKiLK6pxyY
	Gb/z949aCdO8yMyIRtmOWKoh9K8w084GhznfWkD58/IEwxKFqGaMEjUH0udts/vRYgsShq4FTGBii
	SohEAHiZwPePMm9z6ozEcnydRlqUBnRD1ksf7FIoUoBTL2hFBUe24Gk7wIMclVLZzsyHAa2PyEifD
	C8RulKzJGubZmeL+e5VhoIUzhNH4UdLS9lSLiaVNEtGauL/3wU0KIEwO4U92XYnWn0AwUMW9Tv6SO
	tB7cle8+JB6dvobhG35Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCypV-000000013zN-1pud;
	Wed, 15 Apr 2026 11:54:49 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCypT-000000013z1-0rYF
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 11:54:48 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-64d5a7926cfso6303056d50.2
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 04:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776254085; cv=none;
        d=google.com; s=arc-20240605;
        b=W5TOxdTZdjTdR5262Gl/hbc6XX5meQ/svIkiLPoLmoturCfVnEVfcRuKJI9zrgCX2T
         dnTClNalxKy3L52aHvCyYbIkGjwOUZCf6rfIcgVjjlUlHFZaInL3yITFkDKUUyCooLxi
         G89Y8s7uQrG/L5JGaqE3ZpVA/jpiBa95HvKANH5oGzaDhOb6olY/ahowkE6YhFtJny0e
         yIS8k8lXq/qYH9enWPc/oejW0XUHpu5XcQ2jI0v51m8JN9Kit7Niw2DWOATZPzksiEHL
         lIb9wZLFiECP95rc5XJO0f0BU/6ZD9W6sf517r2JDX+9NTgdewNHynPh7tukeLIE17fX
         VqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2vZwi8QEEi+HIwgWCDasjUUY50blYwrtVhN1djXYqjI=;
        fh=+w9b6r1aSdnjr9dziICdPv/uooVXyT1xnD7mrsWFMNs=;
        b=cyoLh7UXELUUQnUwWlluf2jBDOVM7yidSJIPj3wwv26zP9wg0uotqnZabdP8/sTpio
         72sl56iRkdcwRgNuvG0ivB2PGgcQlAi7CMEi1qTK0tgO39iuEXowmMWKRkw95UjOOnH6
         nEHhI+I5qr+oWk221NVfnh6wP/KxHtSzMEALXxXLDh2zJ4KO/myUiXZGyc5wBtFDtL58
         0owvxrjKWXbSfOHV7B9+vvBM+UnGvn1/Z/vusqraMS9Oi2aOOa43clkgVIB853FCCPFS
         R+89OuPtq7YqZun0/JgmYASTEKG4iPreGaBeL8wgMhrLaPNAFAzSbNcHXLWDq5mncpSQ
         2xbw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776254085; x=1776858885; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vZwi8QEEi+HIwgWCDasjUUY50blYwrtVhN1djXYqjI=;
        b=I42N1+qWE3AIrR7fqETS2KjG2gvBVzN1Hsc8PCK960vHRRe7EeA5K6xdRn9knWGvsc
         2CW+vSXuW/YSZoOL7hWCazqKygEApqr9pkyoZ+HLbcbKd4+wFQ2ms0miPX6lJ9R8qtEz
         LI4iOY/ur85CIvQlC1Ne5h7Gtb234GpEeO9/1lAb0boaAI+YGVUxAzpWioYLWmcGzLcb
         BpiwPQWe7yi/iVnFi10RRARG+6JnUeE7MupXJaEaPoIz4b/txozGM+Sf/QS+JSub4daq
         othdo6nkcQoNem8JI0O6EFv0OC731LPVxc1j/20WmXNwmdfcgUeQxlN/hlmrEpjAEZz7
         LJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776254085; x=1776858885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2vZwi8QEEi+HIwgWCDasjUUY50blYwrtVhN1djXYqjI=;
        b=LsLntCIntDCC2vg/Gix/s3mL3k8V1EEd/uBy6DhY4JELTba5jmuoFJXWW/pFy/uMYT
         niK5OtnYF0AsFlZ2XK3dB2KqW6PUXwXPEKYHRGuzErn+15d7pJtjxczMXdD8PnwxQYcJ
         i1q396hYUcDotYy5x1iAMdtRLTGs08g0ApZXX4WOfv+tD6ZWGqo9kLy6FBEOPv71MAbl
         oSRVRRda6DxwarmHdxCi0GJ5kF6WWTkyKLVLCteyULNe4lDrIlujBP0NjbHpCwnHALp4
         GqvLJfBtn2RtFmU8S7J6IDVJld/4a+He9WQdSaYq5ZAd+fcOQj24vHmdMHW/45XchL8U
         cXjA==
X-Forwarded-Encrypted: i=1; AFNElJ9zILvheUfgfC4cX0Yf6AwPGD8C8AN2yk1rd7Q5A+PMyJbz/wj91V75ZwgANCXlVeRMyRPPHIv8@lists.infradead.org
X-Gm-Message-State: AOJu0YyxwBpP3uwuCt7XjrYfPPy9n6KYs/iqJC8h5IzaF/0hjbZg/HxB
	UXaussPFpXRTos1dwdWA6oq9c4ygJxA7RUnL2O1e3kdmt0+TIv5vWkrFkpwe2ugq9P64BjBUY35
	GyaEP2CjLsNJgiCBYGZtMl14H6bW7o/4=
X-Gm-Gg: AeBDiev3Vmikmw3z3XjBGRAsXP1iGu/wLRfi+3YMvaYcrHB9AlUC4576CgXYbfsN3er
	I9/7OHvNUc2TjoEqRCEpfVbo9R/Ya0IeQwJEPmG/0FGXTEFCoGQx3+DVii1QO9u4MLrg3/LYhBY
	GXJXE5BNZRKqpYrQPJojTYhQ6fHcZnFzHZEyYq4nOGe5Z+GMf4O26CJIyxufDu5NyG+mXNhl4ff
	gMFTniIQUHVkHjhits2lgEQxxg2Wk6KekuHQpFS1fNqst/GzElcauXfVeGzBINZtZQ6MJCbQ/rb
	5E95E5qmlJPZ3FYh
X-Received: by 2002:a05:690e:c49:b0:652:e1f6:2436 with SMTP id
 956f58d0204a3-652e1f6512fmr2057669d50.19.1776254085024; Wed, 15 Apr 2026
 04:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com> <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com> <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
 <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
In-Reply-To: <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 15 Apr 2026 13:54:31 +0200
X-Gm-Features: AQROBzCWFymNwi5sMvsyuMNJgPtayHKvsZuFuoGcUyQ5-Qe0j95I0SeibDZjGXI
Message-ID: <CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
Subject: Re: Firmware for reverse engineering b43?
To: Joshua Peisach <jpeisach@ubuntu.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, b43-dev@lists.infradead.org, 
	linux-wireless@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_045447_288056_F48AA211 
X-CRM114-Status: GOOD (  39.83  )
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

T24gV2VkLCBBcHIgMTUsIDIwMjYgYXQgMTo0NOKAr1BNIEpvc2h1YSBQZWlzYWNoIDxqcGVpc2Fj
aEB1YnVudHUuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSBBcHIgMTQsIDIwMjYgYXQgODoyNCBBTSBF
RFQsIEpvbmFzIEdvcnNraSB3cm90ZToKPiA+IE9uIFR1ZSwgQXByIDE0LCAyMDI2IGF0IDE6MzHi
gK9QTSBKb3NodWEgUGVpc2FjaCA8anBlaXNhY2hAdWJ1bnR1LmNvbT4gd3JvdGU6Cj4gPj4KPiA+
PiBPbiBUdWUgQXByIDE0LCAyMDI2IGF0IDU6MTQgQU0gRURULCBKb2hhbm5lcyBCZXJnIHdyb3Rl
Ogo+ID4+ID4gSSB0aGluayB0aGVyZSdzIG5vIGVhc3kgYW5zd2VyIC0gd2hhdCBhcmUgeW91IGV2
ZW4gdHJ5aW5nIHRvIGFjaGlldmU/Cj4gPj4gPiBEb2VzIGI0MyBub3Qgd29yayBzdWZmaWNpZW50
bHkgd2VsbD8gRG8geW91IGV2ZW4ga25vdyBpZiBzb21lIHNwZWNpZmljCj4gPj4gPiBjYWxpYnJh
dGlvbiBoYXZlIGEgdGVuZGVuY3kgdG8gZ28gb3V0IG9mIHdoYWNrPyBJcyB0aGVyZSBsYXRlciBm
aXJtd2FyZQo+ID4+ID4gdGhhdCBoYXMgc29tZSBhZHZhbnRhZ2UgKGdpdmVuIGhvdyBsaXR0bGUg
YWN0dWFsbHkgaGFwcGVucyBpbiBmaXJtd2FyZQo+ID4+ID4gaW4gdGhlc2UgZGV2aWNlcywgSSdk
IGJlIHN1cnByaXNlZCBieSB0aGF0KSBidXQgaXNuJ3QgY29tcGF0aWJsZSB3aXRoCj4gPj4gPiB0
aGUgZHJpdmVyIG5vdywgYW5kIHlvdSB3YW50IHRvIGNoYW5nZSB0aGF0Pwo+ID4+ID4KPiA+PiA+
IEknZCBiZSB0ZW1wdGVkIHRvIHNheSB0aGF0IGlmIHRoZXJlJ3Mgbm8gcHJvYmxlbSB0aGVyZSBk
b24ndCB0cnkgdG8gZml4Cj4gPj4gPiBhbnl0aGluZywgdGhlIGhhcmR3YXJlIGlzIGFuY2llbnQg
YW55d2F5LCBsaWtlbHkgaGFzIGZldyB1c2VycywgYW5kCj4gPj4gPiB0aG9zZSB1c2VycyB3b3Vs
ZCBwcm9iYWJseSBiZSBmaW5lIHdpdGgganVzdCBsZWF2aW5nIGl0Pwo+ID4+ID4KPiA+PiA+IGpv
aGFubmVzCj4gPj4KPiA+PiBUaGUgQkNNNDMyMSAobnBoeSkgZG9lc24ndCBjb25uZWN0IHRvIG15
IDVHIG5ldHdvcmssIHNvIEkgZmlndXJlZCB0aGF0Cj4gPj4gYnkgZmlsbGluZyBpbiBUT0RPcyBh
bmQgRklYTUUncywgSSBjb3VsZCBldmVudHVhbGx5IGdldCBzb21ldGhpbmcKPiA+PiB3b3JraW5n
Lgo+ID4+Cj4gPj4gT3RoZXIgdGhhbiB0aGF0LCBJIHdhcyB0aGlua2luZyBvZiBtYWtpbmcgaW1w
cm92ZW1lbnRzIGZvciB0aGUgc2FrZSBvZgo+ID4+IGltcHJvdmluZyB0aGUgZHJpdmVyLgo+ID4K
PiA+IFRoZSBpbml0aWFsIHZlcnNpb24gb2YgdGhlIGJyY204MDIxMSBzb2Z0bWFjIGRyaXZlciBb
MV0gc2hvdWxkIGFsc28KPiA+IGhlbHAgaW4gbWFraW5nIHNlbnNlIG9mIHNvbWUgb2YgdGhlIGNv
ZGUgKGZsYWcgbmFtZXMgZXRjKS4gV2hpbGUgaXQKPiA+IG9mZmljaWFsbHkgb25seSBzdXBwb3J0
cyBCQ000MzIyNCBhbmQgbmV3ZXIgb24gQkNNQSwgaXQgc3RpbGwgaGFkCj4gPiByZW1uYW50cyBv
ZiBzdXBwb3J0IGZvciBvbGRlciBOLVBIWSByZXZpc2lvbnMsIHNvIG1heSBoZWxwIGluIGZpbmRp
bmcKPiA+IGRpZmZlcmVuY2VzIG9yIGV4cGxhaW5pbmcgd2hhdCBjb2RlIGRvZXMuCj4gPgo+ID4g
SSBvbmNlIGNvbnNpZGVyZWQgdHJ5aW5nIHRvIGNsZWFuIHVwIGI0MyBiYXNlZCBvbiBicmNtc21h
YywgYnV0IG5ldmVyCj4gPiBnb3QgYXJvdW5kIHRvIGl0Lgo+Cj4gSXQgZG9lcyBhcHBlYXIgdG8g
YmUgc2ltaWxhciAtIGV2ZW4gdGhlIGN1cnJlbnQgYnJjbTgwMjExLiBTbyBtdWNoIHNvCj4gdGhh
dCBJIHNvbWV0aW1lcyBuZWVkIHRvIHRoaW5rIGFib3V0IHdoZXRoZXIgYjQzIGlzIGFjdHVhbGx5
IGEKPiBkdXBsaWNhdGVkIGRyaXZlci4KPgo+IFNpbmNlIGI0MyBpcyBpbiBhbiBvcnBoYW4gc3Rh
dGUsIEkgdGhvdWdodCBpdCB3b3VsZCBiZSBhIGdyZWF0IHBsYWNlIHRvCj4gc3RhcnQgZm9yIGtl
cm5lbCBkZXZlbG9wbWVudC4gNUcgZG9lc24ndCB3b3JrIG9uIHRoYXQgaU1hYywgc29tZSBvZiB0
aGUKPiBQSFlzLCBsaWtlIHRoZSBBQyBQSFlzIGFwcGVhciB0byBiZSBpbmNvbXBsZXRlIC0gaXQg
ZmVsdCByZWFzb25hYmxlLgo+Cj4gQmVjYXVzZSBJJ20gb25lIG9mIHRob3NlICJ0aGVyZSdzIGFs
d2F5cyByb29tIGZvciBpbXByb3ZlbWVudCBwZW9wbGUiLAo+IEkgd2FzIGdvaW5nIHRvIHRyeSB0
byBpbXByb3ZlIHRoZSBkcml2ZXIsIGZpbGxpbmcgb3V0IFRPRE9zLCBmaXhpbmcKPiBoYXJkY29k
ZWQgcmVnaXN0ZXIgbnVtYmVycywgZXRjLiBCdXQgaWYgaXQncyBiZXN0IGxlZnQgYWxvbmUuLiB0
aGVuIEkKPiBndWVzcyB3ZSBjYW4gZG8gdGhhdC4KPgo+IFRoYXQgaXMsIGFzc3VtaW5nIGI0MyBp
cyBhY3R1YWxseSBzdXBwb3NlZCB0byBiZSBhIHNlcGFyYXRlIGRyaXZlciwKPiBiZWNhdXNlIGlm
IGJyY21zbWFjIGJhc2ljYWxseSBoYXMgdGhlIHNhbWUgY29kZSwgdGhlbiBtYXliZSB3ZSBzaG91
bGQKPiBmb2N1cyB0byBjZW50cmFsaXppbmcgZXZlcnl0aGluZz8gQnV0IHRoZW4gdGhlcmUncyBi
NDNsZWdhY3kuLiBobS4uLgoKSXQgaXMvd2FzIGludGVudGlvbmFsbHkgYSBzZXBhcmF0ZSBkcml2
ZXI6IEJyb2FkY29tIGRpZG4ndCB3YW50IHRvCm1haW50YWluIHN1cHBvcnQgZm9yIG9ic29sZXRl
IGNoaXBzIChhbnl0aGluZyBTU0IsIGFueXRoaW5nIG9sZGVyIHRoYW4KQkNNNDMyMjQpLCBzbyB0
aGUgZGVjaXNpb24gd2FzIHRvIGhhdmUgYjQzIHN1cHBvcnQgYWxsIHRoZSAibGVnYWN5IgpjaGlw
cywgd2hpbGUgYnJjbTgwMjExIHN1cHBvcnRzIGV2ZXJ5dGhpbmcgbmV2ZXIuIFNpbmNlIHRoZXkg
d2VyZSBib3RoCmJhc2VkIG9uIHRoZSBzYW1lIGRyaXZlciwgdGhleSBhcmUgKG1vcmUgb3IgbGVz
cykgdGhlIHNhbWUKYXJjaGl0ZWN0dXJlLgoKQnV0IG5vdyB0aGF0IEJyb2FkY29tIGhhcyBlc3Nl
bnRpYWxseSBhYmFuZG9uZWQgdGhlIHNvZnRtYWMgcGFydCBvZgpicmNtODAyMTEgc2luY2Ugc2V2
ZXJhbCB5ZWFycywgSSBkb24ndCB0aGluayB0aGVyZSB3b3VsZCBiZSBtYW55Cm9iamVjdGlvbnMg
b24gdW5pZnlpbmcgaXQgd2l0aCBiNDMuCgpCZXN0IHJlZ2FyZHMsCkpvbmFzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlz
dApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
