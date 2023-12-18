Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25CC8C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 15:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOqhO24bc8tX/sDUjkWLkD34PAv8EePo4madbqCTDNQ=; b=GEnQ+BRE83PBod
	Hn2Ripg5cc7/GQLL1Np3RXSbUKX+5ZNXKSKNI3eYIOmmEYbZD1RQJc7ova12pCNevSIJznfJot32/
	KOH29qNd9AZLbj9WC5pOY61oRAs2wJ+fLY0L5jHdajEJu9oSAp8Z0Lp39d9F0HrPCZlMcPLOCDP10
	4ysNB0L6t/aFWjE5IgjlunhsO/uvs/3FNS78SAtOg5dkiFu7XxuAsEluUtw8rnBwpk8Ln6mhY58sf
	b9LtZ7f+ADHJ+aI61rPg26eF/xg5gmSBWGHl5IYTlQbzqMUZT7vlQjB2R3gbU6rp1oPQMsGjxmPSj
	ysEPc3bHilBNxQGQXP0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFF6G-00B7tT-1n;
	Mon, 18 Dec 2023 15:00:08 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFF6D-00B7qC-1R
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 15:00:07 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-55365730863so1095267a12.1
        for <b43-dev@lists.infradead.org>; Mon, 18 Dec 2023 07:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702911601; x=1703516401; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dpJ4wqz5tsoHUF96iO+zvC5cixng0FOvma4pqbpbEw=;
        b=VlXcC107aR4Zt0CFzvn9ED8toZKdQKjcHvA/CQHbGVaJYjsov6SNWzCtr+Bu6RUSMi
         88aAGYqZ7bh7hw6DMMgKlAMosikhelE1fCed53PJwppLKsKmKAZsHW5DQe6H8IGXtxLS
         fxdyULQCyafCkI1sSU12KmN/rkZCxZ8c9kBM5oepETBkVQgp3MgCtuPMJKKXVHoCLgu5
         rCfj0WUmcX2LXsrKblDzUf8gxtSqsM0Nmm9+J4Ig7VXi8FIesPy1yS5KS6B8iyh0ynnb
         ZrQmes4sR8M2OAU3pFPcB7+nnWf0yXGVmSMYHsW44SILSJyeIJhBlGmX6LdmrjfslUcA
         xGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702911601; x=1703516401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3dpJ4wqz5tsoHUF96iO+zvC5cixng0FOvma4pqbpbEw=;
        b=Yc1JHcmPH8YW4drRAsbK3j80xQccu/RrnE3vs/tBo8am8tDgOeWaDJftLWv/KyUtlp
         sQKSGWap9Ennfxezj7ygfus9Wa7jhN8GD4ZBBORXe6j1JsxUKjDKGKFA1lCYVH6NcE1W
         6KRBOlBZYJyWwxuL4yNMXwv/krLf5ER+7GYRiZfBA6DlUoVHP8E/ewcUtrUwIVkmScDN
         Fr9nWAdl0Nc3GMFibzljYT4bXvlZkax+yXRaHDlg/rUVnsJ3qi8zxr43MEP2+i7w463I
         1DQegkMLiWBD71YvAwx0ROqAl00TMMYUAvGA5thTwyOWmieSbJVH2umwJECxvS8DuamI
         Fa7g==
X-Gm-Message-State: AOJu0Yy7qMTN2ioYWE0vgZpcS32jYltnPJHdjNNiUt6OU4ofi+GL3FU6
	+8nZuEe7E4nyz2u7WE09muj9DEnWU9d9gRlItKA=
X-Google-Smtp-Source: AGHT+IGvOIIEyYt7gsSQ0l9nkVHf/NVx2B3tEbVTX1I+ABBxJBnmeFubN0VM50ayuWh/gcBi2y8RMMovpIMPe0fSvSA=
X-Received: by 2002:a17:906:3f0f:b0:a22:fb3f:7a67 with SMTP id
 c15-20020a1709063f0f00b00a22fb3f7a67mr4488123ejj.150.1702911600551; Mon, 18
 Dec 2023 07:00:00 -0800 (PST)
MIME-Version: 1.0
References: <20231218115802.15859-1-lukas.bulwahn@gmail.com> <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
In-Reply-To: <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 18 Dec 2023 15:59:49 +0100
Message-ID: <CAKXUXMyiMMOF79Wbe+xcL2yAXM8+9j_qJhCM0tn-o-hYeY=-ZQ@mail.gmail.com>
Subject: Re: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb drivers
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_070005_501861_C7FC3B2F 
X-CRM114-Status: GOOD (  17.32  )
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <aspriel@gmail.com>, kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, SHA-cyfmac-dev-list@infineon.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMjoxOOKAr1BNIEpvaGFubmVzIEJlcmcgPGpvaGFubmVz
QHNpcHNvbHV0aW9ucy5uZXQ+IHdyb3RlOgo+Cj4gT24gTW9uLCAyMDIzLTEyLTE4IGF0IDEyOjU4
ICswMTAwLCBMdWthcyBCdWx3YWhuIHdyb3RlOgo+Cj4gRHVubm8sIEknbSBub3Qgc3VwZXIgaW52
b2x2ZWQgd2l0aCB0aGlzIGJ1dCAuLi4KPgo+ID4gKysrIGIvZHJpdmVycy9iY21hL0tjb25maWcK
PiA+IEBAIC0xLDEyICsxLDcgQEAKPiA+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wCj4gPiAtY29uZmlnIEJDTUFfUE9TU0lCTEUKPiA+IC0gICAgIGJvb2wKPiA+IC0gICAgIGRl
cGVuZHMgb24gSEFTX0lPTUVNICYmIEhBU19ETUEKPiA+IC0gICAgIGRlZmF1bHQgeQo+ID4gLQo+
ID4gIG1lbnVjb25maWcgQkNNQQo+ID4gICAgICAgdHJpc3RhdGUgIkJyb2FkY29tIHNwZWNpZmlj
IEFNQkEiCj4gPiAtICAgICBkZXBlbmRzIG9uIEJDTUFfUE9TU0lCTEUKPiA+ICsgICAgIGRlcGVu
ZHMgb24gSEFTX0lPTUVNICYmIEhBU19ETUEKPgo+IFsuLi5dCj4gPiAgY29uZmlnIEJSQ01TTUFD
Cj4gPiAgICAgICB0cmlzdGF0ZSAiQnJvYWRjb20gSUVFRTgwMi4xMW4gUENJZSBTb2Z0TUFDIFdM
QU4gZHJpdmVyIgo+ID4gLSAgICAgZGVwZW5kcyBvbiBNQUM4MDIxMQo+ID4gLSAgICAgZGVwZW5k
cyBvbiBCQ01BX1BPU1NJQkxFCj4gPiArICAgICBkZXBlbmRzIG9uIEhBU19JT01FTSAmJiBIQVNf
RE1BICYmIE1BQzgwMjExCj4gPiAgICAgICBzZWxlY3QgQkNNQQo+Cj4gdG8gbWUgaXQga2luZCBv
ZiBzZWVtcyBtb3JlIG9idmlvdXMgZm9yIGV4YW1wbGUgaW4gdGhpcyBjYXNlIHRvIHNheQo+ICJk
ZXBlbmQgb24gQkNNQV9QT1NTSUJMRSBhbmQgc2VsZWN0IEJDTUEiIHJhdGhlciB0aGFuIG9wZW4t
Y29kaW5nIHRoZQo+IEJDTUEgZGVwZW5kZW5jaWVzIGJvdGggaGVyZSBhbmQgaW4gQkNNQT8gTm93
IGdyYW50ZWQsIHRoZXkncmUgcmF0aGVyCj4gdW5saWtlbHkgdG8gX2NoYW5nZV8sIGJ1dCBpdCBz
dGlsbCBzZWVtcyBtb3JlIG9idmlvdXM/Cj4KCk9rYXksIEkgc2VlLiBXZWxsLCBpZiB0aGF0IGtp
bmQgb2YgcGF0dGVybiBpcyB0aGUgcHJlZmVyZW5jZSwgdGhlbiB0aGUKY29kZSBhcy1pcyBtYWtl
cyBzZW5zZS4gVGhlIHBhdHRlcm4ganVzdCBzdGFydHMgdG8gYmVjb21lIG9ic2N1cmUgd2hlbgp0
aGUgZGVwZW5kZW5jaWVzIG9mIG11bHRpcGxlIGRyaXZlcnMgYXJlIHRoZSBzYW1lIGFuZCB3ZSBz
dGFydCB3cml0aW5nCiJCQ01BX1BPU1NJQkxFIHx8IFNTQl9QT1NTSUJMRSIsIGJ1dCB0aGUgZGVw
ZW5kZW5jaWVzIGFyZSB0aGUgc2FtZQphbnl3YXkuCgpMZXQgdXMgc2VlIHdoYXQgb3RoZXJzIHRo
aW5rLgoKTHVrYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
