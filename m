Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5847C36010
	for <b43-dev@archiver.kernel.org>; Fri,  4 Apr 2025 06:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPHx6XvxuYm4+HkRDrYFfA6JOrV34tldunpGf4lQjsY=; b=sOHogwyJ/w77vE
	V0ktSBxAUKdkniH+qU18hGbpPSClhITy/4YpM6bwVDUopRXiHjzKkziVjB8+ddXVTI6wUxioJnSdQ
	Mkr+ZbgWWE4k4tbrYHjZQNdiSCU3CyMboWiUsI9E5BX5gCxtMN0CNkqgftk+JNmDDiXkX9yKliHwj
	7j+2RGSLAWfBjYftHlM/tVSwhidDkRM6AatgZYlSVsIlF0nQlLLokIfsn0JCgiLwKwfUleuH6vyhE
	K9xrtp2JelQGKb3d3X7/irh1VUDkDSB7S4TWVuDekm3udLyroJjvqRA3lU092P/rvvJdLkeV0qVtk
	gTvbbUdnfJZfrbYW2vuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0ay5-0000000Awl9-1KP9;
	Fri, 04 Apr 2025 06:55:57 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0ay0-0000000AwkF-1KSi
	for b43-dev@lists.infradead.org;
	Fri, 04 Apr 2025 06:55:53 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-6fedefb1c9cso15701687b3.0
        for <b43-dev@lists.infradead.org>; Thu, 03 Apr 2025 23:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743749751; x=1744354551; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JaJ37qt+qE8K+0Grqd/otrxBaBZH3JDmlHmDcAaWvqE=;
        b=I96vjGdBtjwvwohWWbaqmxcNH+CbEN/DMYg0YHWATc7NlHWxurewuXtNSq2mPDK7zn
         EMSXRED8LjG/W4ZV4/xNIeW00SZcV4S+bau4wzuJkWqxdyOXTjMcwefNu604YqOgz386
         HStgwgnsTe/PZnOlorzj2YEKeBDOxHIuTKVyTmX0dVoaGwyU/q1pmA6H4fZ7REkMxWxJ
         NMcG9jUm9wJ4mt67FUJ4FnXB7CDZEjAY37mQkZD/cqtOmQ+7LpwpTqh2tKoeGmtWrc4N
         CjZU68RTBoWrUMu+bve72ahki6D5gziIdGbl2HWJELCCRZPkXCUn/XXifDjDi+FMowph
         Eepg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743749751; x=1744354551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JaJ37qt+qE8K+0Grqd/otrxBaBZH3JDmlHmDcAaWvqE=;
        b=p/+NNhgZVhRvvgcg4Kp4XTBsCdL6dpRqXJxBRrDwZQOKm6bOOQDpnyaxToyFg6sVsK
         odB54R8ffS9ZNIsKHlYJL1pLYMelgPLfqr1M2nxIJ/Vq7sdx9BxA30D1Gho9kpwJs3Ag
         DqCm7kpEapWOTvHOXuoZJEvqHin3NQDyO/4+vTsZb5Six+kqKMUp5vi3x3DMgZzMrN/2
         ERj+dL2f5dpFkcdzPKVX+aSr7kWHLwgr0WnL95N5b87Mip7zuQAT0jfmldZyT9THuYfo
         XdprIx87oNOh9iJWxzhjjZ7vPwJTKJFy5YopUpPiMq8VjbloYv0DcSx5zPUNxWK6vQ3X
         cw/w==
X-Forwarded-Encrypted: i=1; AJvYcCWlKB6EX3OqPCJr5TzUC59a/XRWm9EdulTmZd37s17L9IE5/+GO98prv4n+GfNDl7M8ftsbYcBB@lists.infradead.org
X-Gm-Message-State: AOJu0YzEW8gmpT42lIVYdLOGwxCijv7FeugFQb4TBesv3XUVirJUKiVH
	UUQ1Swe2GLq6bj2WDmBWszNwOa5Ki4en0uSZYk6HguP+0gdsZp/bnbEzs37SRJ35JSamtXBtcPF
	FCNIs0f6S7lFKkGhos0aS+9KCnrA=
X-Gm-Gg: ASbGncuEsy78bT2axg+4hDvAmGIGr2/ejZ16qGwIMIYCLV+yAzHFvv9tSxQcaJGZOMl
	fa5y9R28Jt9waO4lid8hCMcbAizfh/V+ARV6ew7McILt2ThJ4QPXUTo2a86/77OvqvT9yqGYNze
	A6dZa8HYk8mlwCCjU0WD03Rw4N
X-Google-Smtp-Source: AGHT+IE3W875spr49H979Z64WVYeZqqK/kdle2rxGJWAGysQwXrHT5Whba/glqDHzKCLFo4OSxNU2IKiS5XgFHqgtTk=
X-Received: by 2002:a05:6902:2846:b0:e63:efca:6692 with SMTP id
 3f1490d57ef6-e6e1c25efeemr4137498276.6.1743749750697; Thu, 03 Apr 2025
 23:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <5906467.e9J7NaK4W3@nessa>
In-Reply-To: <5906467.e9J7NaK4W3@nessa>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Fri, 4 Apr 2025 08:55:39 +0200
X-Gm-Features: AQ5f1JqIwHsP1WpyS-y8F3up58_DkZBUTiPJF1QFywJcMYNE0YacIpEm_Qndy6c
Message-ID: <CAOiHx=nxq-uc0LFoN8vxsUz_Rs+ZKNJV1gegm8fi4R8O11Azgg@mail.gmail.com>
Subject: Re: b43: Putting out feelers on adding support for BCM4360
To: Helga K <Strike0347@proton.me>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_235552_354949_ECB92869 
X-CRM114-Status: GOOD (  27.64  )
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

SGkgSGVsZ2EsCgp0aGVyZSBpcyBhIGI0My1kZXYgTUwgdGhhdCBtYXkgYmUgbW9yZSBvbiB0b3Bp
Yywgc28gSSBhZGRlZCBpdCB0byBDQzoKCk9uIFN1biwgTWFyIDIzLCAyMDI1IGF0IDExOjIx4oCv
QU0gSGVsZ2EgSyA8U3RyaWtlMDM0N0Bwcm90b24ubWU+IHdyb3RlOgo+Cj4gSGksCj4KPiBJJ20g
YSBDIGRldiB0aGF0IHdvcmtzIGluIG5ldHdvcmsgaGFyZHdhcmUgdGVzdGluZyBhbmQgYnJpbmd1
cC4KPiBJJ20gZXh0cmVtZWx5IHRpcmVkIG9mIHRoZSBteXJpYWQgaXNzdWVzIG9mIHRoZSBicm9h
ZGNvbS13bCBkcml2ZXIsIGFuZCBJJ2QgbGlrZSB0byBhZGQKPiBzdXBwb3J0IGZvciB0aGUgQkNN
NDM2MCBjYXJkIHRvIGI0MyBpbnN0ZWFkLiBUaGUgbGFzdCBmZXcgdGltZXMgdGhpcyBjYXJkIHdh
cyBtZW50aW9uZWQKPiBieSBkZXZlbG9wZXJzIHdlcmU6Cj4KPiAqIEFyZW5kIHZhbiBTcHJpZWwg
aW4gMjAxNSBzYXlpbmcgc3VwcG9ydCB3b3VsZCBiZSB1bmxpa2VseSBiZWNhdXNlIEJyb2FkY29t
IGRpZG4ndAo+ICAgY2xlYXIgaXQgYW5kIGJlY2F1c2UgaXQnZCByZXF1aXJlIGFkZGluZyBWSFQg
c3VwcG9ydCB0byBicmNtc21hYyAodGhhdCBoYXNuJ3QgY2hhbmdlZCBpbgo+ICAgMTAgeWVhcnMg
LSBicmNtc21hYyBzdGlsbCBkb2Vzbid0IHN1cHBvcnQgVkhUKyBoYXJkd2FyZSkKPiAqIGI0MyBk
ZXZlbG9wZXJzIGFkZGluZyBhIHN0dWIgc2F5aW5nIGl0cyBQSFkgd2Fzbid0IHN1cHBvcnRlZCAo
YnV0IGNvdWxkIGJlIGluIHRoZSBmdXR1cmUpCj4KPiBBRkFJSyBzdXBwb3J0IGZvciB0aGlzIGNh
cmQgaW4gYjQzIGlzIGZlYXNpYmxlIC0gaXQncyBvbmx5IEFDIFBIWSBvcGVyYXRpb25zIHRoYXQg
YXJlIG1pc3NpbmcuCj4KPiBNeSBxdWVzdGlvbnMgYXJlOgo+Cj4gKiBJcyBpdCBwb3NzaWJsZSB0
byBtZXJnZSBuZXcgZnVuY3Rpb25hbGl0eSBpbnRvIHRoZSBkcml2ZXIgZ2l2ZW4gaXRzIG9ycGhh
bmVkIHN0YXRlPyBJJ20KPiAgIG5vdCBjYXBhYmxlIG9mIHRha2luZyBvdmVyIG1haW50YWluaW5n
IGI0My4KClRlY2huaWNhbGx5IGl0IHdvdWxkIGJlIHBvc3NpYmxlLCB0aGUgaXNzdWUgd291bGQg
YmUgZmluZGluZyBzb21lb25lCmNhcGFibGUgb2YgKHByb3Blcmx5KSByZXZpZXdpbmcgYW5kL29y
IHRlc3RpbmcgdGhlIGNvZGUgY2hhbmdlcy4KCllvdSBtYXkgYmUgYWJsZSB0byBsaWZ0IHNvbWUg
cGFydHMgZnJvbSBicmNtc21hYywgYnV0IHRoZSBhcHByb3ByaWF0ZQpoYW5kbGluZyBmb3IgdGhl
IDExQUMgY29yZSBhbmQgUEhZIHdpbGwgbmVlZCB0byBjb21lIGZyb20gc29tZXdoZXJlCmVsc2Uu
IFlvdSB3aWxsIGFsc28gbmVlZCB0byBhZGQgc3VwcG9ydCBmb3IgQkNNMjA2OSByYWRpbywgd2hp
Y2ggaXNuJ3QKaW4gYjQzIHlldCBlaXRoZXIsIGFzIHRoZSBhcHByb3ByaWF0ZSBBQyB0YWJsZXMg
YXJlIGFsc28gbWlzc2luZy4KCkFuZCB0aGVyZSBhcmUgbGlrZWx5IGNoZWNrcyBtaXNzaW5nIGlu
IHRoZSBjb21tb24gY29kZSBmb3IgdGhlIEFDIFBIWS4KU28geW91IG1heSBmaW5kIG91dCB0aGF0
IGl0IGlzIG1vcmUgd29yayB0aGFuIGV4cGVjdGVkLiBOb3QgdG8KZGlzY291cmFnZSB5b3UsIGp1
c3QgdG8gbWFrZSB5b3UgYXdhcmUgb2Ygd2hhdCBlbHNlIGlzIG1pc3NpbmcuCgo+ICogSXMgYW55
b25lIGluIHRoZSBjb21tdW5pdHkgYnJvYWRseSBmYW1pbGlhciB3aXRoIHJldmVyc2UtZW5naW5l
ZXJpbmcgQnJvYWRjb20gaGFyZHdhcmUKPiAgIGFuZCBjYW4gYnJpbmcgbWUgdXAgdG8gc3BlZWQg
d2l0aCB0aGUgc3RhdGUgb2YgdGhlIGFydD8KCkZvciBiNDMgYW5kIGl0cyByZXZlcnNlIGVuZ2lu
ZWVyaW5nIHN1cHBvcnQgdGhlcmUgd2FzIGEgd2lraSBbMV0sCnRob3VnaCBJIGRvbid0IGtub3cg
aG93IGZhciB0aGUgZWZmb3J0IHdlbnQuIEFkZGl0aW9uYWxseSwgeW91IG1heQpmaW5kIGNvZGUg
ZnJhZ21lbnRzIGFuZCBwYXJ0IG9mIHRoZSBjb2RlIGluIHRoZSBvcmlnaW5hbCBjb21taXQgZm9y
CmJyY21zbWFjIFsyXSBiZWZvcmUgaXQgd2FzIGNsZWFuZWQgdXAuCgpCZSBhd2FyZSB0aGF0IHlv
dSB3aWxsIHN0aWxsIGJlIGxpbWl0ZWQgdG8gMTFnL2Egd2l0aCBiNDMuIFRoZXJlIGlzIG5vCjEx
biBzdXBwb3J0IGluIGI0MyB5ZXQsIHNvIG5vIDExbiByYXRlcywgbm8gNDAgTUh6LCBubyBhZ2dy
ZWdhdGlvbiwgbm8KTUlNTywgZXZlbiB0aG91Z2ggMTFuIGNhcGFibGUgY29yZXMgYXJlIHN1cHBv
cnRlZC4KCklmIHlvdSBhcmUgZGFyaW5nLCB5b3UgY2FuIHRyeSBsaWZ0aW5nIHRoZSAxMW4gc3Vw
cG9ydCBmcm9tIGJyY21zbWFjCmFuZCBwb3J0IGl0IHRvIGI0MywgYnV0IHlvdSB3aWxsIHByb2Jh
Ymx5IG5lZWQgYSBzdXBwb3J0ZWQgY2FyZCBmb3IKdGhhdCBmb3IgdGVzdGluZyBiZWZvcmUgYXR0
ZW1wdGluZyB0byBtYWtlIGl0IHdvcmsgZm9yIDExYWMgY29yZXMuCgpCZXN0IHJlZ2FyZHMsCkpv
bmFzCgpbMV0gaHR0cHM6Ly9iY20tdjQuc2lwc29sdXRpb25zLm5ldC8KWzJdIGh0dHBzOi8vd2Vi
LmdpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5n
aXQvY29tbWl0Lz9pZD1hOTUzM2U3ZWEzYzQxMGZlZDJmNGNkOGIzZTFlMjEzZTQ4NTI5Yjc1Cgo+
Cj4gVGhhbmtzIGluIGFkdmFuY2UsCj4gSGVsZ2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2I0My1kZXYK
