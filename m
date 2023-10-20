Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98D7EC001DF
	for <b43-dev@archiver.kernel.org>; Fri, 20 Oct 2023 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUwC0uOkBjuIAwEGafptxij3ZZ5kuO1N/e1I1SViQ/Y=; b=DPdl/uwtVmLPno
	3vMWlyltAIeMvzW1p/h1uBLh9Ts20kp1Q2WyoaalryCmZj/VUk8wYPPuoJlDBRynmEemjPgQFEi9S
	50fWG/8VTd4xf7zSzUxdsmQxs2ejMw4K6Z9AvLCB3fyPHdL+0y68iMs9rNlhQ5F9pxa3ryugwEv6y
	XppNFVqeeDVJW2bFK/CQKUEQAwBOwUCgSQ8IGfc9mhCljNAfOzWS8N2byEX+BhaPQZIxcpco7mKzg
	q7qlW5kMje7dAatRTVNzr9fBRwFUzot/qSSx++hnip+ND+g72gRc+2cJYDbl8N1aw6nrilz+omO9Y
	wxxoZQmkisnVaCRttmhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtoBL-002CcN-1E;
	Fri, 20 Oct 2023 12:00:47 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtoBH-002Cay-23
	for b43-dev@lists.infradead.org;
	Fri, 20 Oct 2023 12:00:45 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-66d0f945893so6305066d6.1
        for <b43-dev@lists.infradead.org>; Fri, 20 Oct 2023 05:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697803242; x=1698408042; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIKXyvCrPlJkXSUN3jOs1qukwDq8mum31g8U+4d5eTo=;
        b=XPp/UGT+5NDjFBO8WX2IYj1Hp1uC6K0u8pFjMBr44wQBVPpjjt9LfR1iFzWJg2XIm8
         Gl6HlpiSWeTGynua97zogD79d6apnQZsC/jmH8Jplqk8USiOcfeaxjwmIs3RiVtjXaos
         ok8I3vdPbbkzzq32Yf1Ke5hA9vC05FCDZd6MfI9O1v4EwuTezzMoR/yZDFdmf5B8y90O
         rUkiF3TE1eePCBgKSXq5F7Bi7oV1aVPpKrkokkMh0EKm+k7iOcRWnlQw6+hjhLNtKUTT
         88z7CzsLU/YwEQI3iTuX4aCOiGnAzRwNWYzW9ml12gQL5yy1ryV3LNEFmT7xhHRP5hyu
         0e+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697803242; x=1698408042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIKXyvCrPlJkXSUN3jOs1qukwDq8mum31g8U+4d5eTo=;
        b=fzVWvPVCK/5hZHzzfOf8YTGAl3ukxec+iW8PWshi3W81t7wAiuVvcMNTsY1RC3l7c0
         pvRyj706Do2gxbRGpSlHf2KQn9DSW7ngFUuDHAMqRCM2XnHOzHVNhZi9WLWaQZ6JhBsQ
         rt7AKpNCDKDLYgOkbMWBL81ym63us7pfKSzxhgpoVAsQIkM6G2YCwREYeAc5YN8CTAhR
         ZlhucyHhuB0LQledwZnkYN+O+Lp1rveP89ov172qmvXqtxPF8pZUjEorsRQFCxJVi6ou
         MY2RwizILFCge5pBq+NXBVHAzOF4RyC55KsHjOpmI3rUUMQJRsHiFWXFfI25hGS0tuXj
         PHhg==
X-Gm-Message-State: AOJu0Yx2CiMn7bPTHZedLhRFVSy6Ki0LtfSJ4hWx+7Lw7B9yYy+H6nNX
	9XZE60pa9LooBHyAABpCPv0aZIXq8V1hB6/WTAo=
X-Google-Smtp-Source: AGHT+IEPBLT7eZYqqWbTCOeDeMYDZ5Ubq3VZnMWDfjvv3NiAJGXOoHIw9t5KJMBFN666SPvrtv9GAD+Mqs5ZmrttVhE=
X-Received: by 2002:a0c:db8d:0:b0:66d:78c8:262b with SMTP id
 m13-20020a0cdb8d000000b0066d78c8262bmr2151113qvk.4.1697803240827; Fri, 20 Oct
 2023 05:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20231020092735.2565-1-bragathemanick0908@gmail.com>
In-Reply-To: <20231020092735.2565-1-bragathemanick0908@gmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Fri, 20 Oct 2023 23:00:28 +1100
Message-ID: <CAGRGNgXaKWS_2pfk1BBf2s3JZ2yF2v8m57VkZ_WgjEHGBzgmXA@mail.gmail.com>
Subject: Re: [PATCH] b43legacy: Removed unneeded variable in debugfs
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: Larry.Finger@lwfinger.net, kvalo@kernel.org, 
	linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_050043_716110_0A02578E 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
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

SGkgQnJhZ2F0aGVzd2FyYW4sCgpPbiBGcmksIE9jdCAyMCwgMjAyMyBhdCA4OjI34oCvUE0gQnJh
Z2F0aGVzd2FyYW4gTWFuaWNrYXZlbAo8YnJhZ2F0aGVtYW5pY2swOTA4QGdtYWlsLmNvbT4gd3Jv
dGU6Cj4KPiBSZW1vdmVkIHVubmVlZGVkIHZhcmlhYmxlLiBJc3N1ZSBpZGVudGlmaWVkIHVzaW5n
IENvY2NpbmVsbGUgc2VtYW50aWMuCgpDb2NjaW5lbGxlIGNhbm5vdCBkZXRlY3QgdW51c2VkIGNv
ZGUgb3IgdmFyaWFibGVzLgoKVGhhbmtzLAoKLS0gCkp1bGlhbiBDYWxhYnkKCkVtYWlsOiBqdWxp
YW4uY2FsYWJ5QGdtYWlsLmNvbQpQcm9maWxlOiBodHRwOi8vd3d3Lmdvb2dsZS5jb20vcHJvZmls
ZXMvanVsaWFuLmNhbGFieS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
