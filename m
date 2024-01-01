Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3A1C47074
	for <b43-dev@archiver.kernel.org>; Mon,  1 Jan 2024 08:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myVZOHiT6V2c6/97LUSN3SO1ugJm2ilJKXEBcLZu73c=; b=LEQG3Fcp0StIW4
	T4KVRyHkeYp7UaGovGx+/ThER9yfF2lmBYRBKfu4K7F2LMjBi0yA50ntuc/z78L1F6xNgnpY14AsT
	j5iSYwTYkHY48AsXNqcyH3bjo+vcNiVHjNrKMI33ODr7UYUMxc7eSfkwqgvoLRNIV4ijvJS2nL4Um
	2r8qRKdbzeGpriP1Q/JLrJHaX3zUqPBuW9aArD8pchYw/SDJ/MRquGnvVKGLVcrMZg/AEC6N7MJLL
	inSX6KvF/dE3aIUpSToR/Vw1HQM2b5lw2CXPaddQsYD1nPnYXo504uWSJIpiflCfs8vhDW4x8x76n
	LBJq+C9HnSPIM2jaIsvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDHC-005lFn-10;
	Mon, 01 Jan 2024 08:03:58 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDH9-005lF6-0F
	for b43-dev@lists.infradead.org;
	Mon, 01 Jan 2024 08:03:57 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3bbf67d619cso966372b6e.2
        for <b43-dev@lists.infradead.org>; Mon, 01 Jan 2024 00:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704096234; x=1704701034; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9kdxVqD5VCjAB4SwhpnTXRY8LiR8uitsc2iJ8kVJiE=;
        b=hHEmJjIQK1Iz0xFAPsvmvI+bwDnQwmX86rtdUDYZFsbvt/ATWQ7Ftl00uukXdOJwyi
         frX0rXjzcGPKNPnBUajeIFZrDZQqy7RACTGH49I/ABmUlYGbvRN+rtyVTO6RnDcSjtjI
         CKOYyL5E1azJ4hpVz4uHe8SzC396iyGQPm+YGw7yrwJyxvUEmM4i/MgEUms+rl/uglRy
         q0StN9lEiT6czAwd4LpJsqocdRpN74VRiMOreOMVHvla9Ylpb6YKhhR/wwFMWC/biA8s
         Q+DdFHGyevDyN+4aih9spWFM9B8BFxNy4dPCjeeT0MxfN3SCLBPdPHz57y1ZgJU8plh0
         WA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704096234; x=1704701034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9kdxVqD5VCjAB4SwhpnTXRY8LiR8uitsc2iJ8kVJiE=;
        b=WpK0eIkUG20l9cwAh7CLVMxN27YWB2flf1X4RYI//o1uUU1fE348IFumXGdpCRXIb9
         1u/S1kpCuwoTDabS3uriS7SYZYYvrn5nVySUr//cLTIapctimmpVp37R2SARMrAmSCJg
         HNNDOznBFw90nddA1hiMcXDIZdyziUjUafkd9gvA9ggkcx4/Z3zbcrNv+Cjcc3ZOvKc1
         PH327cfHjiLbxSVsN2Wllo5LKqzhT6DRA/09gGti/p1bRHOWifmfTymxyGmkadHVuQvX
         8GZb9O0cfPZlMWtYjfyJ3aCBPn85YOzXp9OEuU6mInJWaTuSpCGHSLTem1ecbTVyO5xW
         Gl2w==
X-Gm-Message-State: AOJu0Yy7X7Vov4JXq2DK1AIZr9cmTtnsJ/hpO6HEXIz77KhzMttLVD9f
	vPdISVQM3ltu2Ely22xkePgEsWxbc7CXpEh4TUM/Qq27W6rSQtbB
X-Google-Smtp-Source: AGHT+IECEZcRRgCmn2z5h+dyqAA7jaVrlSAPXeM4x1GnBY3ninqD722b7aSDtNox3a8IDQWW91+ddkkqfMyxoqt+3hw=
X-Received: by 2002:a54:4190:0:b0:3bb:c649:9869 with SMTP id
 16-20020a544190000000b003bbc6499869mr6327541oiy.79.1704096233889; Mon, 01 Jan
 2024 00:03:53 -0800 (PST)
MIME-Version: 1.0
References: <20231231050300.122806-1-sergeantsagara@protonmail.com> <20231231050300.122806-4-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-4-sergeantsagara@protonmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Mon, 1 Jan 2024 19:03:42 +1100
Message-ID: <CAGRGNgVGJLoksSbuT5cr37HYQ+ik7NP5StxevVLN=UFz+6D8xg@mail.gmail.com>
Subject: Re: [PATCH wireless v2 3/4] wifi: b43: Stop correct queue in DMA
 worker when QoS is disabled
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	=?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_000355_499807_F9EEC690 
X-CRM114-Status: UNSURE (   9.92  )
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

SGkgUmFodWwsCgpPbiBTdW4sIERlYyAzMSwgMjAyMyBhdCA0OjA04oCvUE0gUmFodWwgUmFtZXNo
YmFidQo8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4gV2hlbiBRb1Mg
aXMgZGlzYWJsZWQsIHRoZSBxdWV1ZSBwcmlvcml0eSB2YWx1ZSB3aWxsIG5vdCBtYXAgdG8gdGhl
IGNvcnJlY3QKPiBpZWVlODAyMTEgcXVldWUgc2luY2UgdGhlcmUgaXMgb25seSBvbmUgcXVldWUu
IFN0b3AgcXVldWUgMCB3aGVuIFFvUyBpcwo+IGRpc2FibGVkIHRvIHByZXZlbnQgdHJ5aW5nIHRv
IHN0b3AgYSBub24tZXhpc3RlbnQgcXVldWUgYW5kIGZhaWxpbmcgdG8gc3RvcAo+IHRoZSBhY3R1
YWwgcXVldWUgaW5zdGFudGlhdGVkLgo+Cj4gRml4ZXM6IGJhZDY5MTk0Njk2NiAoImI0MzogYXZv
aWQgcGFja2V0IGxvc3NlcyBpbiB0aGUgZG1hIHdvcmtlciBjb2RlLiIpCj4gU2lnbmVkLW9mZi1i
eTogUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+CgpMR1RN
CgpSZXZpZXdlZC1ieTogSnVsaWFuIENhbGFieSA8anVsaWFuLmNhbGFieUBnbWFpbC5jb20+CgpU
aGFua3MsCgotLSAKSnVsaWFuIENhbGFieQoKRW1haWw6IGp1bGlhbi5jYWxhYnlAZ21haWwuY29t
ClByb2ZpbGU6IGh0dHA6Ly93d3cuZ29vZ2xlLmNvbS9wcm9maWxlcy9qdWxpYW4uY2FsYWJ5LwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBt
YWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
