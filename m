Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DBCC47074
	for <b43-dev@archiver.kernel.org>; Mon,  1 Jan 2024 08:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYRNObZeMZxXp1EfJhOi8w1nobrIDU8h41urP9p03GQ=; b=vya7xJJ27n6p1m
	74L+e9fkudIXO0hmNjTymXTt3Lro3MHGhYrrOsdBq0LR79iDumHH9RpINnQtm3HnOnva98NMvV46m
	LCj8gXUtqbFZ3y28F5C97hiHUsB+Fw9k+L0FyJfqFRs0x0bkTEII0lYxxJtwZgkVfAqgQvuL6eLES
	DHcmx4G14tS8zFnCm8Tw77sgpyj26IZYhdNIPLwi/2d2/M6rpAcxcym8tWFji1jI4OpW2ojBsdQJ8
	QcoFgilgjJ6RYMUs6Ha4Gayp5b+sAySA5AIoBZwwNyvlus4s+yl12EJyorOwG0PaR6ma2QVSreAbn
	GTuf2usHxewPWwaxUvxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDIT-005lPU-32;
	Mon, 01 Jan 2024 08:05:17 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDIR-005lOy-2H
	for b43-dev@lists.infradead.org;
	Mon, 01 Jan 2024 08:05:17 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7815aad83acso309184685a.0
        for <b43-dev@lists.infradead.org>; Mon, 01 Jan 2024 00:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704096314; x=1704701114; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5hobNbHiJGBduFIxqp6Aaia9KdLQwaNihAo6Bc8CKI=;
        b=WHj9a3CRhNWkB7yTdKkgi/WkgUXlwfWPebaPDwgwlnKfeXrO1etr/mjm6EVP8Q0iwJ
         PRdteD1R1JLAwT8c4wSH3yLYpTx8cf+ANWx7+lCVKA+Bw0sD3lBdMkhL89/p+HEQEB2b
         MdtE/BNP4xZa/g3WRgt6LP5wovFaFh/6Gqg5pjwbg1Od6kr4NPHuTBpUG5GiAzAypXfo
         OSquJq1epFbWJxRqLqX2BYMaaPdQ6xkEi53Qo78gHsJ3k0CehtsytcFhXaMBRf87d0To
         eOLWn2K32ARdSo8uPdTDFurB5ZSLhyy5lXSJzdnhLQvDgOdU4zPvg6p54ttPiGeB1x0V
         jsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704096314; x=1704701114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x5hobNbHiJGBduFIxqp6Aaia9KdLQwaNihAo6Bc8CKI=;
        b=B+j+0vEwmi8vUORFYT8cFrctCFwaI9U6SNk54lT+LU75QhOqFi4vfjgsnFCC1x6/gT
         BYE4dJCIMxcnv8L2RKkiMlP+52APf9J20gs+bKJurOUOYNkcEEPsnXWf4U54HWHKK88z
         4ySRt9qMADlqCbV6IK5o9Rd/cqVSFI40lXfrjqzQEXtaMEUeI/l9oV88zA6ua7UMIYXW
         dU1IZKaLjVT39KwoqTjeFa064VJDSOGH7AM97zTo0x7VgLn0mQac14JCSw/2MgHqDVXf
         nw3DVb8u8BZFZ3On5aBiOCc6ijh5dorQDuRcgXIx63Uw56qnCgKSTX1U8Y18vP8asOCR
         F2WA==
X-Gm-Message-State: AOJu0Yx2STLWR5N3eFBC47HAKyZ9CpGhYtT30BbMlk46QIelYCR58loC
	UdWiJ7IhWgreNK/3pbbS0106HRRJRGwby6pmTZI=
X-Google-Smtp-Source: AGHT+IF87YQ8lX/4yEbqEn9hjXnik/MaG8Ocl2RegtDACnc0ZIFiCajJyB3kXj3YzyJVu4SbENV8o1MNLuVoamKqvkU=
X-Received: by 2002:a05:6214:caf:b0:67f:40eb:bfa7 with SMTP id
 s15-20020a0562140caf00b0067f40ebbfa7mr24232666qvs.48.1704096314485; Mon, 01
 Jan 2024 00:05:14 -0800 (PST)
MIME-Version: 1.0
References: <20231231050300.122806-1-sergeantsagara@protonmail.com> <20231231050300.122806-5-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-5-sergeantsagara@protonmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Mon, 1 Jan 2024 19:05:01 +1100
Message-ID: <CAGRGNgXYBM16UNcHmOVMJKa+C5R9-Hy7vamEBpp=cF_heQVX6Q@mail.gmail.com>
Subject: Re: [PATCH wireless v2 4/4] wifi: b43: Disable QoS for bcm4331
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	=?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_000515_751505_FF12F057 
X-CRM114-Status: GOOD (  13.14  )
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

SGkgUmFodWwsCgpPbiBTdW4sIERlYyAzMSwgMjAyMyBhdCA0OjA04oCvUE0gUmFodWwgUmFtZXNo
YmFidQo8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4gYmNtNDMzMSBz
ZWVtcyB0byBub3QgZnVuY3Rpb24gY29ycmVjdGx5IHdpdGggUW9TIHN1cHBvcnQuIFRoaXMgbWF5
IGJlIGR1ZQo+IHRvIGlzc3VlcyB3aXRoIGN1cnJlbnRseSBhdmFpbGFibGUgZmlybXdhcmUgb3Ig
cG90ZW50aWFsbHkgYSBkZXZpY2UKPiBzcGVjaWZpYyBpc3N1ZS4KPgo+IFdoZW4gcXVldWVzIHRo
YXQgYXJlIG5vdCBvZiB0aGUgZGVmYXVsdCAiYmVzdCBlZmZvcnQiIHByaW9yaXR5IGFyZQo+IHNl
bGVjdGVkLCB0cmFmZmljIGFwcGVhcnMgdG8gbm90IHRyYW5zbWl0IG91dCBvZiB0aGUgaGFyZHdh
cmUgd2hpbGUgbm8KPiBlcnJvcnMgYXJlIHJldHVybmVkLiBUaGlzIGJlaGF2aW9yIGlzIHByZXNl
bnQgYW1vbmcgYWxsIHRoZSBvdGhlciBwcmlvcml0eQo+IHF1ZXVlczogdmlkZW8sIHZvaWNlLCBh
bmQgYmFja2dyb3VuZC4gV2hpbGUgdGhpcyBjYW4gYmUgd29ya2VkIGFyb3VuZCBieQo+IHNldHRp
bmcgYSBrZXJuZWwgcGFyYW1ldGVyLCB0aGUgZGVmYXVsdCBiZWhhdmlvciBpcyBwcm9ibGVtYXRp
YyBmb3IgbW9zdAo+IHVzZXJzIGFuZCBtYXkgYmUgZGlmZmljdWx0IHRvIGRlYnVnLiBUaGlzIHBh
dGNoIG9mZmVycyBhIHdvcmtpbmcgb3V0LW9mLWJveAo+IGV4cGVyaWVuY2UgZm9yIGJjbTQzMzEg
dXNlcnMuCj4KPiBbc25pcF0KPgo+IEZpeGVzOiBlNmY1YjkzNGZiYTggKCJiNDM6IEFkZCBRT1Mg
c3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdh
cmFAcHJvdG9ubWFpbC5jb20+CgpMR1RNCgpSZXZpZXdlZC1ieTogSnVsaWFuIENhbGFieSA8anVs
aWFuLmNhbGFieUBnbWFpbC5jb20+CgpUaGFua3MsCgotLSAKSnVsaWFuIENhbGFieQoKRW1haWw6
IGp1bGlhbi5jYWxhYnlAZ21haWwuY29tClByb2ZpbGU6IGh0dHA6Ly93d3cuZ29vZ2xlLmNvbS9w
cm9maWxlcy9qdWxpYW4uY2FsYWJ5LwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
