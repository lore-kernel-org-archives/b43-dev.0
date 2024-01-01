Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94368C47074
	for <b43-dev@archiver.kernel.org>; Mon,  1 Jan 2024 08:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2XAmehgjHh+XHtuD4jZip3Q3bkLOi3R0hM9Q+Wfu8I=; b=vuR4oi1pt+mFmu
	JlFINGeN1YHWRDJUQCIiD6kykR233B6ZFNZmiAYDHjVwTARsPJDfUOHzZOiK1uwdM9Hy7n3S0MB+7
	9JLquPw/S+efs3dPNGvMT6KMs/+jHBLriAZVlUvDEauvQ6jDcaUkqUQ5zt8Y1yJ9NLvwCYJvDS5P+
	yMB2SZDJUCRnmByRUfvV8WCRSWWKxiIqGcnGD6KAfyVWztLMmt0V9krTyPpnS4Dn3IA+pNU1WDPV3
	92nfNDKxFbJdP3KbUzTPLUoCv/22AliY4IHqFU0kVtX4ieiIOwsIUhss4+Su5El3EP/E2hwNjqmIp
	peXv4D43yrN2vitZ6GYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDEq-005kz9-0u;
	Mon, 01 Jan 2024 08:01:32 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDEi-005kyh-21
	for b43-dev@lists.infradead.org;
	Mon, 01 Jan 2024 08:01:26 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7818487b1d3so235305985a.2
        for <b43-dev@lists.infradead.org>; Mon, 01 Jan 2024 00:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704096082; x=1704700882; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPooq24nmLWCaZX2jfGUOgIVUIvLHSvmfsyxrT2QUuU=;
        b=SMbOt6dVybHV1L5VONqRauxlpV/z0qZRcqqS/IzhH5L7NaSjdHS0xS3VIPVt2OvMXf
         ydOpZt/FPSxvOpXWKKi+eloVm7y57WJTSVctlWyt7yYeLb8cq9f3Yf2WNif4ZTwDVUh9
         rSTZwFG3ycWr9GIfEjxJkrMMFqYHBEPsSlHg9uhL1IUZU/+DBLVgoS5vBlTv0bNah2iK
         aO7xeDsBhb0dEtNEJMekv8A6pAvAt1MlADv2aLVBH30joHvOf/xOv5/ojPVfmfhiWEsr
         X35NlodsgXGnNlqopO2j3rTZo3y+lIcxiCl/66UBFXoDk7askPBRWa1tHNPbSk4PEm3x
         S7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704096082; x=1704700882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gPooq24nmLWCaZX2jfGUOgIVUIvLHSvmfsyxrT2QUuU=;
        b=sAA4mye3FCiZhFiadgEhmtD8XjDPisOyMteGW7M68lv1Jjt1R9csULhHZX7g9CFADh
         4nLWnX6n0Yte4mLU3rdHa/jjPXNuPKfsz+hWTbzzO8TrNotfn12GDsN2qqBxvlJgcvRq
         xusBJXaru6eQoXLzk49COENHVp5NcC3xKNyoLe3BC80K1scakhEM6RekR5D+CnwIiLdx
         q7TgA+5kuxgTQo9HigFpf7k+xbXu9RqkaAbrkCL0RVr3KSUQs5mUQvvs7oZiMLevxBHN
         DXIIAJRE5O+9xuEiQZZlWJeobKIr7/P0C2hjxxH1draWvd3xZvETyDEEG44AP/22GB5e
         yCRQ==
X-Gm-Message-State: AOJu0YxJjN+TA5P29Zid+dOOL+CCQ7eVhAod6pBtJQHUBbH4Rg4TrppB
	bB1XVKdKSemoX6sNVN5sMEeYgU4K/wDdEgeFbTU=
X-Google-Smtp-Source: AGHT+IGeruNLmF7WNsQyaGBwW/2vToMFFLLiFXkLYQ8tCnAdR0vCcgtHGFAEby2Juw9UGTCHVP92AtxC8ik1GAB3m80=
X-Received: by 2002:a05:620a:126d:b0:77d:863a:69d4 with SMTP id
 b13-20020a05620a126d00b0077d863a69d4mr17257169qkl.71.1704096082608; Mon, 01
 Jan 2024 00:01:22 -0800 (PST)
MIME-Version: 1.0
References: <20231231050300.122806-1-sergeantsagara@protonmail.com> <20231231050300.122806-2-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-2-sergeantsagara@protonmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Mon, 1 Jan 2024 19:01:10 +1100
Message-ID: <CAGRGNgWjmae+OOp1YpejtKuPwvz0RKDKF+M+UAGx91OX+bJrcA@mail.gmail.com>
Subject: Re: [PATCH wireless v2 1/4] wifi: b43: Stop/wake correct queue in DMA
 Tx path when QoS is disabled
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	=?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_000124_687354_10D28B66 
X-CRM114-Status: GOOD (  10.65  )
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

SGkgUmFodWwsCgpPbiBTdW4sIERlYyAzMSwgMjAyMyBhdCA0OjAz4oCvUE0gUmFodWwgUmFtZXNo
YmFidQo8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4gV2hlbiBRb1Mg
aXMgZGlzYWJsZWQsIHRoZSBxdWV1ZSBwcmlvcml0eSB2YWx1ZSB3aWxsIG5vdCBtYXAgdG8gdGhl
IGNvcnJlY3QKPiBpZWVlODAyMTEgcXVldWUgc2luY2UgdGhlcmUgaXMgb25seSBvbmUgcXVldWUu
IFN0b3Avd2FrZSBxdWV1ZSAwIHdoZW4gUW9TCj4gaXMgZGlzYWJsZWQgdG8gcHJldmVudCB0cnlp
bmcgdG8gc3RvcC93YWtlIGEgbm9uLWV4aXN0ZW50IHF1ZXVlIGFuZCBmYWlsaW5nCj4gdG8gc3Rv
cC93YWtlIHRoZSBhY3R1YWwgcXVldWUgaW5zdGFudGlhdGVkLgo+Cj4gW3NuaXBdCj4KPiBGaXhl
czogZTZmNWI5MzRmYmE4ICgiYjQzOiBBZGQgUU9TIHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6
IFJhaHVsIFJhbWVzaGJhYnUgPHNlcmdlYW50c2FnYXJhQHByb3Rvbm1haWwuY29tPgoKTEdUTQoK
UmV2aWV3ZWQtYnk6IEp1bGlhbiBDYWxhYnkgPGp1bGlhbi5jYWxhYnlAZ21haWwuY29tPgoKVGhh
bmtzLAoKLS0gCkp1bGlhbiBDYWxhYnkKCkVtYWlsOiBqdWxpYW4uY2FsYWJ5QGdtYWlsLmNvbQpQ
cm9maWxlOiBodHRwOi8vd3d3Lmdvb2dsZS5jb20vcHJvZmlsZXMvanVsaWFuLmNhbGFieS8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFp
bGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
