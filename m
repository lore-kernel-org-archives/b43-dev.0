Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B104C4332F
	for <b43-dev@archiver.kernel.org>; Tue, 22 Nov 2022 13:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSvFwzLzStK6EIDGD1a98HiX/M6HzhDf45DYWsEHFLw=; b=XQOqrCnJ9VMcsQ
	d2rYvjlZQ/nB8ehJ8SkG+GqVqnOIbizQt4zlJfKPN0tOdYqtkRtH7OJz1f0z/F1DhVDrPRau/bP7N
	xu9O0F+PQZ01PT6DJK9cTJxHP7seW1QDoWmgA8cUlL41CydUEOFFj9sqYSjg8hX5C1C7HWdFFTVet
	+0v9Nnv9nb2DJsdoROW7/1P8cu3gHKBSrOrFX+USZ0IbTpSqc4mKJCrkZqNtMQ6walPDOScYOVKck
	7TbJFqnVUok8uiqPuKKxtBtjJfkWEAYU9luj/KiI4pp6Ugl082yS9wS1c16YUNoUkG19v9ZsVNfYm
	4z5w6uFWlYNCdLZSdPAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxTC7-009bEu-FA; Tue, 22 Nov 2022 13:20:11 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxTC4-009bDE-QX
	for b43-dev@lists.infradead.org; Tue, 22 Nov 2022 13:20:10 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x2so20612090edd.2
        for <b43-dev@lists.infradead.org>; Tue, 22 Nov 2022 05:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=skymem-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OOzIbrFIOKeJXJT4ID/MUCczRZmmy/MUgRjL2diXaTc=;
        b=exKArqMppRWvzwf3ELZJ+WIimhqTiI0eQUPBRXmFBulCFmneBcH9Du2QIac/RFgtB0
         ykN9/Me7ltc8TFWhmNzPiQ3qYQlvB1977JR+h9ccv4Lc6MXyLPV7gModyDCR2xukjiIf
         F9nSWGWjCA7aYQVANWKilM4s//f5IpoT8mTc6UZy8pKVGi+SjIufo3LoYBNsT8PLqBYO
         VA81jm9pDN0AZj2/68Zb88mPhJYrEiIS3D7ZXF2FqxLSrsPcxbW/088aIm8ubbbXiz4Y
         dTGGnv5rUGkfowZVNtCbk/5HsZzuvL9bnDmQ224JipcbMZrK7a0ze8FzosN5yb+e6zGt
         6yiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOzIbrFIOKeJXJT4ID/MUCczRZmmy/MUgRjL2diXaTc=;
        b=SO9NdDtrxta3NmX6tZRzvE/8SqxbbX0aA1m68HbOS6RMWJ7lKn6Sx6aOuyJv1OFofP
         P7GygtZlxYdNTs+uWWz2Bm2V8NFazvH2cd77rQ60TC8C7r7lvFUqnENQelDuXEBcLMGA
         KmJU9WSxenrdx1kfEoZVrdLB2AohIB+rCE9T/ZX9etUyCew90zqpawIJ2Qj9nrxP9mmH
         EC0ldpwreRURM17dAREpGHAub6Tv7fi3a1jIKyvmoCL4Yevz4sbEnj+9KKsHPjsODEw+
         D+e1JOIzcnwx3WXkS0wV/3Dkvyfi0upTmVuQXkE6BTu60qPvqKsrD/r43NZ6sjbTHPG0
         HDnA==
X-Gm-Message-State: ANoB5pnnNEBCD3VPzNC9rseowDGE9k/agMe4eqOC5+DMdGaPf2vwUgl9
	J4kNKuABfiaFySZhLFNXO/y34W9Ero+rPF7+0pkR0w==
X-Google-Smtp-Source: AA0mqf6RIQN3NAIPq8n53brtdf2c7RBwC0dm3F1Hg3vcuzZA+yL7BZxfmN50fae3ZbC8cj8CDbzO4XEicnkv+Bo+9Ew=
X-Received: by 2002:a05:6402:5d5:b0:464:fa1:9ece with SMTP id
 n21-20020a05640205d500b004640fa19ecemr21917763edx.262.1669123205084; Tue, 22
 Nov 2022 05:20:05 -0800 (PST)
MIME-Version: 1.0
References: <20221122131248.23738-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20221122131248.23738-1-lukas.bulwahn@gmail.com>
From: Info Skymem <info@skymem.com>
Date: Tue, 22 Nov 2022 14:19:54 +0100
Message-ID: <CAKvd=_ivRY1kDZYqygm2ZQCrcWV4f7RJjTdgw2i27gW9aUjCVA@mail.gmail.com>
Subject: Re: [PATCH] wifi: b43: remove reference to removed config B43_PCMCIA
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_052008_878459_50B25AEC 
X-CRM114-Status: GOOD (  16.09  )
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
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

SGksCnRoYW5rIHlvdSBmb3IgeW91ciBpbmZvcm1hdGlvbi4KCk9uIG91ciB3ZWJzaXRlIHlvdSBj
YW4gZmluZCBlbWFpbCBhZGRyZXNzZXMgb2YgY29tcGFuaWVzIGFuZCBwZW9wbGUuCmh0dHBzOi8v
d3d3LnNreW1lbS5pbmZvCgpJbiBzaG9ydCwgaXTigJlzIGxpa2UgR29vZ2xlIGZvciBlbWFpbHMu
CgpCZXN0IHJlZ2FyZHMsClJvYmVydCwKU2t5bWVtIHRlYW0KCk9uIFR1ZSwgTm92IDIyLCAyMDIy
IGF0IDI6MTUgUE0gTHVrYXMgQnVsd2FobiA8bHVrYXMuYnVsd2FobkBnbWFpbC5jb20+IHdyb3Rl
Ogo+Cj4gQ29tbWl0IDM5OTUwMGRhMThmNyAoInNzYjogcGljayBQQ01DSUEgaG9zdCBjb2RlIHN1
cHBvcnQgZnJvbSBiNDMgZHJpdmVyIikKPiByZW1vdmVzIHRoZSBjb25maWcgQjQzX1BDTUNJQS4K
Pgo+IENsZWFuIHVwIHRoZSBsYXN0IHJlZmVyZW5jZSB0byB0aGlzIHJlbW92ZWQgY29uZmlnIEI0
M19QQ01DSUEgaW4gdGhlCj4gYjQzX3ByaW50X2RyaXZlcmluZm8oKSBmdW5jdGlvbi4KPgo+IFNp
Z25lZC1vZmYtYnk6IEx1a2FzIEJ1bHdhaG4gPGx1a2FzLmJ1bHdhaG5AZ21haWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvbWFpbi5jIHwgMTAgKysrLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9tYWluLmMg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvbWFpbi5jCj4gaW5kZXggMjk4ZmVi
YmRmZmMwLi45MmNhMGIyY2EyODYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mv
YnJvYWRjb20vYjQzL21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My9tYWluLmMKPiBAQCAtNTc4NCwxNSArNTc4NCwxMiBAQCB2b2lkIGI0M19jb250cm9sbGVy
X3Jlc3RhcnQoc3RydWN0IGI0M193bGRldiAqZGV2LCBjb25zdCBjaGFyICpyZWFzb24pCj4KPiAg
c3RhdGljIHZvaWQgYjQzX3ByaW50X2RyaXZlcmluZm8odm9pZCkKPiAgewo+IC0gICAgICAgY29u
c3QgY2hhciAqZmVhdF9wY2kgPSAiIiwgKmZlYXRfcGNtY2lhID0gIiIsICpmZWF0X25waHkgPSAi
IiwKPiArICAgICAgIGNvbnN0IGNoYXIgKmZlYXRfcGNpID0gIiIsICpmZWF0X25waHkgPSAiIiwK
PiAgICAgICAgICAgICAgICAgICAgKmZlYXRfbGVkcyA9ICIiLCAqZmVhdF9zZGlvID0gIiI7Cj4K
PiAgI2lmZGVmIENPTkZJR19CNDNfUENJX0FVVE9TRUxFQ1QKPiAgICAgICAgIGZlYXRfcGNpID0g
IlAiOwo+ICAjZW5kaWYKPiAtI2lmZGVmIENPTkZJR19CNDNfUENNQ0lBCj4gLSAgICAgICBmZWF0
X3BjbWNpYSA9ICJNIjsKPiAtI2VuZGlmCj4gICNpZmRlZiBDT05GSUdfQjQzX1BIWV9OCj4gICAg
ICAgICBmZWF0X25waHkgPSAiTiI7Cj4gICNlbmRpZgo+IEBAIC01ODAzLDkgKzU4MDAsOCBAQCBz
dGF0aWMgdm9pZCBiNDNfcHJpbnRfZHJpdmVyaW5mbyh2b2lkKQo+ICAgICAgICAgZmVhdF9zZGlv
ID0gIlMiOwo+ICAjZW5kaWYKPiAgICAgICAgIHByaW50ayhLRVJOX0lORk8gIkJyb2FkY29tIDQz
eHggZHJpdmVyIGxvYWRlZCAiCj4gLSAgICAgICAgICAgICAgIlsgRmVhdHVyZXM6ICVzJXMlcyVz
JXMgXVxuIiwKPiAtICAgICAgICAgICAgICBmZWF0X3BjaSwgZmVhdF9wY21jaWEsIGZlYXRfbnBo
eSwKPiAtICAgICAgICAgICAgICBmZWF0X2xlZHMsIGZlYXRfc2Rpbyk7Cj4gKyAgICAgICAgICAg
ICAgIlsgRmVhdHVyZXM6ICVzJXMlcyVzIF1cbiIsCj4gKyAgICAgICAgICAgICAgZmVhdF9wY2ks
IGZlYXRfbnBoeSwgZmVhdF9sZWRzLCBmZWF0X3NkaW8pOwo+ICB9Cj4KPiAgc3RhdGljIGludCBf
X2luaXQgYjQzX2luaXQodm9pZCkKPiAtLQo+IDIuMTcuMQo+Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGI0My1kZXYgbWFpbGluZyBsaXN0Cj4g
YjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iNDMtZGV2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMt
ZGV2Cg==
