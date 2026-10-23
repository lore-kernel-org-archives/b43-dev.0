Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834B5606A31A
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 21:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S9h5dy0Z;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Nniog8Et
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=L0k5TzOmJhDCf3iYIunFjTZ6Pb0bUS4TrKx4uGTP4gE=; b=S9h5dy0ZAK72wZ+P4pxV83CTa7
	8eNIMuOzEo7+ugnw9P9Sqy868fWXZ9/rch1ZNZApHB+q0opzbqT2tJqUOqje1rUCp3G52CrLg0r2F
	cJOOatgJ0NoBpEQcni5y+9H2KfO3lNzT9mzMryjrdXp93cDOfYVITBVNoM7RDVO0ZBj5BKDDc+0S6
	PqLzZmmyDtkO+Ej+ywvxwIWVyh9vKNVU9+e9mFmN8hfnuUDLC8zvGGi2g59fCNdClyxlZIGX4AWtC
	n8+UCzrD9LSBKXxXdZJhtp3egvQAp/ul5jr5BZpFJx/b+2LD1OgL4/Yot89bX4h/XwcLVx+vKDfIb
	I+QO2/WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKMj2-0000000GzRA-0TR0;
	Fri, 23 Oct 2026 21:22:56 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKMhq-0000000GzJs-3P5F
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 21:22:24 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6b3dd83e779so2098055a12.1
        for <b43-dev@lists.infradead.org>; Fri, 23 Oct 2026 14:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792790501; cv=none;
        d=google.com; s=arc-20260327;
        b=CuEdqPYbIzlAwHbBxHMbTz+IEjMyL1GqBwwwdE80/X6AGMvI0d1NYfOushZOw8y6rz
         0Dvjz8vo0F2a54FOsr8bxQq7EbMOXJ2mxv7s9ysjwXj2+CUywhDu0YJmf49XV4ls0SHb
         yo2RniThfJMlr/erMqbr8tNRklZIgxNBdX3545I25gptaZEuklkgBu+bNxOQlCC+zZJ5
         MgLnRNfg1x2FIzdRWkZQIqYLb+qARN/lzuKGe7g4d/5Ebjy3akA58twqs0oRlccPD8fX
         T8Vpg7/iodM5LM7nP9tqCimj1vevsdmoMvgiwPe5C5wzz2WvYadI/YpVr59SY6Vxmy54
         f8nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AE0GbBfNma+sNfNfxTvMZspamc+IJ62E4ebI4HKJzHI=;
        fh=v+vIMdYwAv2ekD3MMMY6GIl0Pk87KqUDIH6LoLrmgCE=;
        b=mZJ6z6vYT//nkd5wf2L/5D0eva7rwMzKPTSKjv1pQd9xzdH0MGlEvPQZ/OIJeCXPeb
         svIo0y2wD18ypPrkb3hEZbK6H68seOplNDEfLMWDZQlZ2GNFlbWHBY0s4phZEfbpCVQj
         QZFHKFoaYylPa2g8XsoHoc5z4pmWn2Tjy4zPhJE0+COsOWfuB05L5zRmaflUb9q0CnTw
         puG1AMG0sFOikf71Tl6ZpZ4TxT9jiOm10XsYyPsnp8IY77WqwKmC8usNcD984KIUOgAn
         i5V3MC+J54mlqINPIwH2QV2RWhPVYpaq8eZMmOfpy1JiMHXfend0dE11NfB3NrvkX7d1
         gSXg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792790501; x=1793395301; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AE0GbBfNma+sNfNfxTvMZspamc+IJ62E4ebI4HKJzHI=;
        b=Nniog8Etxd9baeRMdB2zr/CEAJbyW03AOU9IQtI5UlPYG9x9M63CxIJuSl3fOsckEj
         KMzLK9gkMEQhuSM8SQoMwt3AWDLB27KRGaRZE12CvioOcJaHanTFpTZRCv16MDzata9+
         cSRgm7F5lrVnIWNaztW1bkbgB4GmzwV5cMtOVT14cDajXwVDzy0bw4ekSklU1X4seUf/
         cxla1NdGQ8pc9bAl7BWtuLvj4RkXO6VHQjpRtgkfIRnnUTqpYG5EC/4vCNWxHEd8+ZBc
         NFNhK0qbQH0Iy1ITEZDXSSWVwd//O06POUCC21gCrlbzmCMw7UfT0ZQuH/41i4onQQqD
         i31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792790501; x=1793395301;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AE0GbBfNma+sNfNfxTvMZspamc+IJ62E4ebI4HKJzHI=;
        b=OSEgv5MMYlTIMp+BOz6efn/9rb0+lswuYCPCb7id4pq6eMhaWsBoD1ZF5gLmvkHGTl
         xDxq/0+lieX1UwjhXb5jUA67kYf3qEvjNq9weTwTvtEPiHL9LQ7vjUmxS+L0vcoXJLpG
         HEIrTbcT1pey406qW+3eMSCrau1YUNjZ/m+Ys+Lk+50+l7JjSSRUDyPf3lBy8GHJUUMP
         R/ygfFpru/lk9t1Q9BrmHk7AyJy1GLDS7ZvHPzEgDq2UsImp3LYMdm1to7gHmmusyX9Z
         BXxwy12CeSTrRl/1PSLKAvicaGX7jyRHM7ZQUehzu/Dt63E3qHKt+rv92PdFh/TmnK8X
         Jh9A==
X-Forwarded-Encrypted: i=1; AKwUvBzPkCjFaZdE5kXkcAKdAsT7nQ1OgVLkEnQVSaQRX6HbBaQpncCtCtbH8sOTQd3+f28PryX28YsM@lists.infradead.org
X-Gm-Message-State: AFq9FYKK8moDKZzQyap9x2+R71PbnIylZ19D5wuPz7O7WvfvbOrG4a7T
	mFpXFxGOgdAHY4EAqNB3yusg7t2IHLOR4uul4HQmOgOFuke+pOoWvhHFdzLDzvCkaDkAMN88T95
	9wlFscnAZhVH8WxovL00IVGSNJUnLWII=
X-Gm-Gg: AYBFou3bIPYK7RTU3+GZSbItRYVSUzy0nzJYhDNrfUJIDDwhTFWuEm8pBRAztBxQIdh
	8xwlDTkTQxRo2LdGUJ5f4TOwgwYEOx5e/Xcs8apgfmtRjkJ21/Ep8eBI+REAfSqHSYOIrFrqmfd
	7w65+0PaVWTleO/Pi4wMOh9Exgm4s2qseAehqkdhbvBs5XWiahKwoeqTPnsvoROvgV4EyYWENRJ
	AizXU8jdlbTTJjUmFWMOaCVJo2dEvzUTED6mnRl8aGTxoIY+bAEi8CPRrXQ3qfT0i+sEAnVxyXL
	QhCeI72F7mkOgz0kDW/XKWaxaIKuvrxSHCK9+A1Zn9GPJlE40gCvZLgN3qTl/S56TqtOjddr69u
	lGc1JP564OhtfEh9D3f2VYAVyN4+Ue6EgUXN9gk8Ucj9CtMNYgx8tuF/d8YvueRH5p2tvPSf6cu
	u4O8Yzh+qK4TBpTA6weSuTbdmp7LLd+dEnNaYqbFj0Y9T74RiZAU2QZmNPnadCkoM7cA1m/lW0g
	FWSr66VbTV5/LwIkg6gCiJCXQ9tF5T0lVd6OZk44I+dpBenoQ==
X-Received: by 2002:a05:6402:1cc4:b0:6ac:bd53:d29a with SMTP id
 4fb4d7f45d1cf-6b442a80c06mr508793a12.3.1792790500756; Fri, 23 Oct 2026
 14:21:40 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023190653.70741-1-rosenp@gmail.com> <20261023221424.2722795e@barney>
 <20261023224140.465903eb@barney> <CAKxU2N_1XgjVPdSrCMYzZx4Rb6yjgEe7kBZYyG4RASyBv5BtMw@mail.gmail.com>
 <20261023225745.696eef3c@barney>
In-Reply-To: <20261023225745.696eef3c@barney>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 23 Oct 2026 14:21:27 -0700
X-Gm-Features: AclHuK9GRIFtl9lqIXhWNWjMucByyfNnLezcnXbef4n3dCMQ4w9XYcqaCpFWgVM
Message-ID: <CAKxU2N9i6Dn1yKmd-_9DvET6P_GNctTywWgOBXYd2tWoWKY=Sg@mail.gmail.com>
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers DMA_BIDIRECTIONAL
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, 
	"open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_142143_549028_E3F619DC 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBPY3QgMjMsIDIwMjYgYXQgMTo1OOKAr1BNIE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMu
Y2g+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMyBPY3QgMjAyNiAxMzo0NDo0NCAtMDcwMAo+IFJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiB3cm90ZToKPgo+ID4gQWxsIGNvZGUgaXMgdGVzdGVk
IG9uIGFuIEFzdXMgUlQtTjE2LiBJdCBydW5zIG9uIG5vbi1jb2hlcmVudCBNSVBTLgo+Cj4gT2su
Cj4KPiBEZXNjcmliZSB5b3VyIGRldmVsb3BtZW50IHByb2Nlc3MgaW4gaHVtYW4gbGFuZ3VhZ2Ug
ZHVyaW5nIHBhdGNoIHN1Ym1pc3Npb24uCkkgYXNzdW1lIHRoYXQgd291bGQgbW9zdGx5IGJlIGFw
cHJvcHJpYXRlIGZvciBhIGNvdmVyIGxldHRlci4KPiBXaGF0IGhhcyBiZWVuIHRlc3RlZD8KPiBX
aGF0IGhhcyBub3QgYmVlbiB0ZXN0ZWQ/Cj4gV2hhdCB3YXMgd3Jvbmc/Cj4gV2hhdCBoYXMgYmVl
biBmaXhlZD8KPiBXaHkgaXMgdGhpcyBuZWVkZWQ/Cj4gV2h5IGRvIHdlIG5lZWQgYmlkaXJlY3Rp
b25hbCBETUEgYW5kIG1vc3QgaW1wb3J0YW50IHdoeSB3YXNuJ3QgaXQgbmVjZXNzYXJ5IGJlZm9y
ZT8KQmVjYXVzZSB0aGUgY29kZXBhdGggaXMgbm90IGZhdGFsLiBPbmUgb3IgdHdvIGR1cGxpY2F0
ZWQgZnJhbWVzLiBCaWcgZGVhbC4KPgo+IEFJIGlzIGdyZWF0IGZvciBjb2RlIGdlbmVyYXRpb24s
IGJ1ZyBmaW5kaW5nLCBldGMuCj4gQnV0IGZvciBwYXRjaCBzdWJtaXNzaW9uLCBwdWxsIHJlcXVl
c3RzIGFuZCBjb21taXQgbWVzc2FnZXMgaXQncyBhYnNvbHV0ZWx5IHVudXNhYmxlLgo+IFBsZWFz
ZSBkb24ndCBkbyBpdC4KPiBXcml0ZSB5b3VyIGNvbW1pdCBtZXNzYWdlcyBtYW51YWxseSwgcGxl
YXNlLgpJJ3ZlIGJlZW4gYnVybmVkIGJ5IHRoaXMgbWFueSB0aW1lcyBiZWZvcmUgd2hlcmUgbWFp
bnRhaW5lcnMgYXNrIG1lIHRvCnJld29yZCBvciBtZW50aW9uIHNvbWV0aGluZy4gSXQncyBub3Qg
cHJhY3RpY2FsIGFuZCB3YXN0ZXMgZXZlcnlvbmUncwp0aW1lLCB3aGljaCBpcyB3aHkgSSdtIGFs
bW9zdCBiYW5uZWQgZnJvbSBuZXRkZXYuCj4KPiBQbGVhc2UgbWFrZSB5b3VyIGNvbW1pdCBtZXNz
YWdlIGJlIHRvIHRoZSBwb2ludCBhbmQgZWFzeSB0byByZXZpZXcuCj4gQW5kIHBsZWFzZSBzbG93
IHRoZSBwcm9jZXNzIGRvd24uCj4gWW91IGRvbid0IG5lZWQgdG8gc3VibWl0IHBhdGNoZXMgcmln
aHQgYXdheS4gS2VlcCB0aGVtIGluIGEgcXVldWUgYW5kIFNUQUJJTElaRSB0aGVtIExPQ0FMTFku
CkkgZmlndXJlIHNpbmNlIHdpcmVsZXNzIGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBtZXJnZSB3aW5k
b3cgdW5saWtlCndpcmVsZXNzLW5leHQgSSBjYW4gc2VuZCB0aGVtIHdoZW5ldmVyLgo+Cj4gUGxl
YXNlIGRvIGEgbGl0dGxlIGJpdCBvZiByZXNlYXJjaCB3aG9tIHRvIFRvIGFuZCBDYy4gVGhlcmUg
YXJlIHNjcmlwdHMgZm9yIHRoYXQuClllYWguIEFsbCBvZiB0aGlzIGdvZXMgdGhyb3VnaCAuL3Nj
cmlwdHMvZ2V0X21haW50YWluZXIucGwKCkRvIG5vdGUgdGhpcyBpcyBhbiBvcnBoYW5lZCBkcml2
ZXIuIEkgZXhwZWN0IGZlYXR1cmUgcGF0Y2hlcyB0byBnZXQKY2xvZ2dlZCB1cCBhbmQgRml4ZXM6
IHRvIGdldCBpbiBhIGJpdCBlYXNpZXIuCj4KPiBUaGFua3MgYSBsb3QuCj4KPiAtLQo+IE1pY2hh
ZWwgQsO8c2NoCj4gaHR0cHM6Ly9idWVzLmNoLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YjQzLWRldgo=
