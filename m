Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AACE3F9D0CA
	for <b43-dev@archiver.kernel.org>; Tue, 14 Apr 2026 12:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYFHyF2K40ws7YjF2zEq7EcyIHFkwVMc0m6u6AR+6jQ=; b=xi+JHrLsAZ4aFe
	O9S6JYRJAKJ6VEh2VpEDJDqPqBU6q9LEWSDEOwzphi7uTTgjQJPxBG6C9YnM3s96Pvw+tjevnEy2w
	ZPu8gDFIyciLg/tc4AsborYZ3mTj7K1VRhyz1G0k+PWbtxuFrl1ao6LYCEuXcGGvWG2deGMyUDcAk
	S9LBMWdmWwV91F5uOIud+UTEq47WF49I+V/JC9w/CNWRcK4hWcqs3WBIwH66eqUgcQhfIGANZ1Wvs
	bep31NeF00JhUWkCjnd8xmIKizF5QyA46sIJkLUUG83Bc5Yd2lchkfD0d2Fu0de+tFfVHBcdYXAz9
	cFfr4vG842eLAgRGVAGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCcok-0000000HIDJ-36H2;
	Tue, 14 Apr 2026 12:24:34 +0000
Received: from mail-yx1-xb133.google.com ([2607:f8b0:4864:20::b133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCcoi-0000000HICu-0J8Y
	for b43-dev@lists.infradead.org;
	Tue, 14 Apr 2026 12:24:33 +0000
Received: by mail-yx1-xb133.google.com with SMTP id 956f58d0204a3-651b4d09141so3810815d50.1
        for <b43-dev@lists.infradead.org>; Tue, 14 Apr 2026 05:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776169470; cv=none;
        d=google.com; s=arc-20240605;
        b=cfq6emkUBfhGBOzA+Ufr9osnYadm3SalioPPf0H3mKvFfl+Dkfn1yvkFi9Nk6rNAcY
         dTwWzqkakQk/kJ+gLfPyuv1aHhfYtV/pSV5G1iC7HJgS4eHnvTtJgyxD6eIk6PmRS/R8
         ixxaLa4leH4LRZDnvaKD1BE/Wjxv7ptg15Qa980MWu5I63sGV7cYAekzm1LCFHGPKbUg
         LyzI7sYmzmFY/9iYsEsfIDUFfEUK0ZyLEvrbKfEg48VG88C3johNj6RQ487zR3mNpSYu
         3swsPE/QrR9sAgSuOOyBax3POXximBD3Ii6y65q46WYTg5Cp9CiXrbhuPvExKeflxNEd
         OSkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nXEx0OwQjLKCa6jsqMhUKJH18MenvvNtcSPs3xvHw+4=;
        fh=ybzSROvXq1pkbZYXqxqFUEpLHClwh4CJs4s14cxua0o=;
        b=BtNEuh2702l2gyLL3GnaaXft8Lb8zdLSZasPWu/N6cj3JRhn/e5DIza8GsKQWRvFkh
         FxoCTTGYIofnq2kYs6VbAYr4ijGcjAlOm06+JY9yJtwjp5EUeXuvzCIW2fHDRv3S5vPf
         B8Ae6UW+HXQoyStXLaaJ9FJB79bO+HDTrNUROR+58uuZd8lsCgp4FHhz5a5ORafZNjGl
         giYCg1dlVcUrkknHXn8K0AISd2SUkrPoQ1XlJi8iOwQ7WBjO5av7ytZcn3kGIfOpqkLd
         gNR/2c3SxtpwDFiJ3mt7VFtzmJYH8IBhzHGTF53TqlATKsCKQeLjMRqd55lzx4I0wCqQ
         Arng==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776169470; x=1776774270; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXEx0OwQjLKCa6jsqMhUKJH18MenvvNtcSPs3xvHw+4=;
        b=XZL3KtxBNAwukmzQqCOTleOJsCPJWylVgN9m7ctJn9UWu+CF7WLEeXYD7epPrQvvj+
         WFTUDMelYhDy0Nx6srr2QnFAkCOoHPk+s5mfGEpl4qmnZs/UaF5hfaT6peJnJi6JHgO3
         C9Vk+yUg9xFnLwVoRS5Kw9N5qmduRwZyXQ4/zKfT09BSKO1vufBh284QviBmh43g/pI8
         ynt3fQ0lpfG6qzAlFMzIRpgtpxtYh0WIYvZjNQWKfJyVoBxdsj+uqRpwoMS2Dtgg+5Ay
         X7ZmOOxDLh76l2OJsUPZmTeXf2j+BH2N/fkpzHULMtsFCP4wuOVN6oehJAkK46mnPtsC
         7BKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776169470; x=1776774270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nXEx0OwQjLKCa6jsqMhUKJH18MenvvNtcSPs3xvHw+4=;
        b=hnlP6IIzwnWDIPGzRoiqD0W90wQBNtGMtJVzzoKnD1ByB6DpkdssiH/WwU2V0F2z3S
         qo2CmmniKj1ATspYPLYyh5wEhxepBEb/HiDHz0ExWgJdRqUbUeyAUO0gCmxzEj91Zmci
         i21iPYNJWytnowLF82ZrdEm6tFopRiifecH+ehc67Wg8cpm5ZuH4csxmjbZP6Zd1OPR6
         vYE0W2BBSCM9S8t4Wy4t/0lv8doZ91MPVBSu3UNYFHwPD2yDtBkgN+Hh4F3x/LaG9eP/
         h+W3+8INXWE5/YVOCS957Tt7EFKsE6O1if1u1O6rgkhLDso7+oxpuLXvGv55OGEDQa0c
         i8+w==
X-Forwarded-Encrypted: i=1; AFNElJ856NudScMauTM6LoWzEdPqDKNO2YCPCWKqCx2FJQ/7PJScQWDvjZiVQdIL3is4QsTC6W2gtvca@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+izm5z9An+m4FXMGXWIzsSJ82Ky+gnMwe2GBrEpk5ek0gS85B
	rCqNVHHUk12T415NplXuX7tZzvN480anwAXq2fGgBdlLN68PfpF9/w8snnpCPq3caFxLdZKPTTZ
	GiM7sGSjwbDnLztMQ3aDHmxOCK0yAofye4xVs
X-Gm-Gg: AeBDiesSB8xwxfT/82yFNn9DSI25nV46ojY7/FNg9wtUzzVGH+kkqJX6gMJF8aF+YdJ
	7uatnCmcOyagYPG5cfWMeg68vbzbiXIb6yFwNEFkhjf07RUDG5v3YUKUYV2G5YttbnWIMkQrmnM
	P6lgvj9qUUbI9zkvD9hrAKLmit0GwPAI6ov0RgeTbnpSBr2u3tPrP5TVO2mUlgsihPoYDdtztNU
	3m1SDeRj0RnncKQk4AtnF9kDq+C/tW2Kta3x8qlCkdgcn7vNcWvabWunbA6fIp3i9BGSNZDXrnD
	skfcKK/Iux3jLqKV
X-Received: by 2002:a53:ac87:0:b0:650:77d0:8f7f with SMTP id
 956f58d0204a3-6519905c33cmr13608242d50.21.1776169470206; Tue, 14 Apr 2026
 05:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com> <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
In-Reply-To: <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 14 Apr 2026 14:24:19 +0200
X-Gm-Features: AQROBzAAzfypNQSTvzh9EmOZlgJkA5U4WMv7xCPO4Op0p4GctZKOzd2QGF-pvcU
Message-ID: <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
Subject: Re: Firmware for reverse engineering b43?
To: Joshua Peisach <jpeisach@ubuntu.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, b43-dev@lists.infradead.org, 
	linux-wireless@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_052432_122251_6297F908 
X-CRM114-Status: GOOD (  21.77  )
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

SGksCgpPbiBUdWUsIEFwciAxNCwgMjAyNiBhdCAxOjMx4oCvUE0gSm9zaHVhIFBlaXNhY2ggPGpw
ZWlzYWNoQHVidW50dS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlIEFwciAxNCwgMjAyNiBhdCA1OjE0
IEFNIEVEVCwgSm9oYW5uZXMgQmVyZyB3cm90ZToKPiA+IEkgdGhpbmsgdGhlcmUncyBubyBlYXN5
IGFuc3dlciAtIHdoYXQgYXJlIHlvdSBldmVuIHRyeWluZyB0byBhY2hpZXZlPwo+ID4gRG9lcyBi
NDMgbm90IHdvcmsgc3VmZmljaWVudGx5IHdlbGw/IERvIHlvdSBldmVuIGtub3cgaWYgc29tZSBz
cGVjaWZpYwo+ID4gY2FsaWJyYXRpb24gaGF2ZSBhIHRlbmRlbmN5IHRvIGdvIG91dCBvZiB3aGFj
az8gSXMgdGhlcmUgbGF0ZXIgZmlybXdhcmUKPiA+IHRoYXQgaGFzIHNvbWUgYWR2YW50YWdlIChn
aXZlbiBob3cgbGl0dGxlIGFjdHVhbGx5IGhhcHBlbnMgaW4gZmlybXdhcmUKPiA+IGluIHRoZXNl
IGRldmljZXMsIEknZCBiZSBzdXJwcmlzZWQgYnkgdGhhdCkgYnV0IGlzbid0IGNvbXBhdGlibGUg
d2l0aAo+ID4gdGhlIGRyaXZlciBub3csIGFuZCB5b3Ugd2FudCB0byBjaGFuZ2UgdGhhdD8KPiA+
Cj4gPiBJJ2QgYmUgdGVtcHRlZCB0byBzYXkgdGhhdCBpZiB0aGVyZSdzIG5vIHByb2JsZW0gdGhl
cmUgZG9uJ3QgdHJ5IHRvIGZpeAo+ID4gYW55dGhpbmcsIHRoZSBoYXJkd2FyZSBpcyBhbmNpZW50
IGFueXdheSwgbGlrZWx5IGhhcyBmZXcgdXNlcnMsIGFuZAo+ID4gdGhvc2UgdXNlcnMgd291bGQg
cHJvYmFibHkgYmUgZmluZSB3aXRoIGp1c3QgbGVhdmluZyBpdD8KPiA+Cj4gPiBqb2hhbm5lcwo+
Cj4gVGhlIEJDTTQzMjEgKG5waHkpIGRvZXNuJ3QgY29ubmVjdCB0byBteSA1RyBuZXR3b3JrLCBz
byBJIGZpZ3VyZWQgdGhhdAo+IGJ5IGZpbGxpbmcgaW4gVE9ET3MgYW5kIEZJWE1FJ3MsIEkgY291
bGQgZXZlbnR1YWxseSBnZXQgc29tZXRoaW5nCj4gd29ya2luZy4KPgo+IE90aGVyIHRoYW4gdGhh
dCwgSSB3YXMgdGhpbmtpbmcgb2YgbWFraW5nIGltcHJvdmVtZW50cyBmb3IgdGhlIHNha2Ugb2YK
PiBpbXByb3ZpbmcgdGhlIGRyaXZlci4KClRoZSBpbml0aWFsIHZlcnNpb24gb2YgdGhlIGJyY204
MDIxMSBzb2Z0bWFjIGRyaXZlciBbMV0gc2hvdWxkIGFsc28KaGVscCBpbiBtYWtpbmcgc2Vuc2Ug
b2Ygc29tZSBvZiB0aGUgY29kZSAoZmxhZyBuYW1lcyBldGMpLiBXaGlsZSBpdApvZmZpY2lhbGx5
IG9ubHkgc3VwcG9ydHMgQkNNNDMyMjQgYW5kIG5ld2VyIG9uIEJDTUEsIGl0IHN0aWxsIGhhZApy
ZW1uYW50cyBvZiBzdXBwb3J0IGZvciBvbGRlciBOLVBIWSByZXZpc2lvbnMsIHNvIG1heSBoZWxw
IGluIGZpbmRpbmcKZGlmZmVyZW5jZXMgb3IgZXhwbGFpbmluZyB3aGF0IGNvZGUgZG9lcy4KCkkg
b25jZSBjb25zaWRlcmVkIHRyeWluZyB0byBjbGVhbiB1cCBiNDMgYmFzZWQgb24gYnJjbXNtYWMs
IGJ1dCBuZXZlcgpnb3QgYXJvdW5kIHRvIGl0LgoKQmVzdCByZWdhcmRzLApKb25hcwoKWzFdIGh0
dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC90cmVlL2E5NTMzZTdlYTNjNDEwZmVkMmY0
Y2Q4YjNlMWUyMTNlNDg1MjliNzUvZHJpdmVycy9zdGFnaW5nL2JyY204MDIxMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxp
c3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
