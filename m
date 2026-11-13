Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C11760A3830
	for <b43-dev@archiver.kernel.org>; Fri, 13 Nov 2026 08:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m92Ec4Zv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NeQcj7w3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=awr5b/6OWs8Ye8IlMHz1fgNS45nLEb+97WaZCCzut2M=; b=m92Ec4ZvwI8FwINPdzeuW734SM
	LGBDFMCAWw0H647dA19NkApu7a9b1/zjDbQy67HjqstMGlVf0TQmvyTUo6Nn6TYAfOcxbNHKqYRFc
	wKO0JXHMkSxu6yI8QJhi6dywvs4B3p2eY978xAqQO+f2VFH1ZgnnY/ZbRsEENTLRNnGertbTarNUo
	UgcQJiIWZucD8NUMvjlkrfqBfKEfxt4wAmSWZD/5PETr76zPOEOpuAfSePSsMVxMFAtjRqhMbh+Jh
	c3vF5ZIRpQFbWWkzZuPRqt4oy2bfRC16P3GdwvTHxBkOwhlwq8O5dtPh8j7X4UqLqELxb7Cdg6zBX
	EfhGQRPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmfE-0000000C3bl-1XAy;
	Fri, 13 Nov 2026 08:29:40 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmf6-0000000C3aC-0A5C
	for b43-dev@lists.infradead.org;
	Fri, 13 Nov 2026 08:29:33 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-91e8938fd01so13856336d6.3
        for <b43-dev@lists.infradead.org>; Fri, 13 Nov 2026 00:29:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794558570; cv=none;
        d=google.com; s=arc-20260327;
        b=YcEQ8ncMV+zmwP3R5ZG3Ox8NkN9FvAYr1M/ejbJywa+LzDUCdpupu+iBZIyW/6yoxv
         BaSm2dpmS92s/jRtFM9UENRY1Z+X9shomR48SRVuh78DoXKtjFEZeIyUe4OkomMh/C4g
         Vh/0yyWuz5URBpvL4mSg09j4cfHdfHPZuIWpCusuE66Zby9bpWBhwFfxubqfTN7fQpu3
         5KKdF4HXdWyQiWzkLCro3pjetPH4Ez5ggUieCx0Z5BxeeMEVM4BNJTXxG1K239U82l6n
         QspAl9OHvvPexMkZdy31JcHg8HInlphkD/8JXbKOH+ng5cCOW6e56eFVuCeoNbgxXNeZ
         YnpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P/VFBZuAGyJu2CUgSmYUwGxL2qE8W+WmTuX+htbAtBY=;
        fh=IRxeugtTfm42+pS6f8d2ZDrnBHm+G/uOR1r5Fzh56PM=;
        b=lds6yEWYQSWHUVoP5SyKsYyU0BsWitB4ntpWIsVeAFkCzEhXx7N4Le300dulnj+yxW
         SlGVWCu/smn1xfia7Oef0RotkzjwNTPBfEGDVd44sC0jav9pVXuzTV8SNLBqGJw22QYO
         uks6X9Zr4x/wiMTBI0PMiPJ7jQhEXXAp94GeHTBtXeMWGtktMSQ8A3BCqDfAwypfvlKH
         c+g3ehxUN00gNEQaNqIf/Imepv3GjZ/gJ95lfcVEDduLSdhjXne1QPqjevLrjCU5840o
         tfOsyraBBRkUvrHzdv8dUWinQl0PdguWaK3Xu7splLEwpPz9p16FK2na6IiTasgi53H0
         Ev6w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794558570; x=1795163370; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=P/VFBZuAGyJu2CUgSmYUwGxL2qE8W+WmTuX+htbAtBY=;
        b=NeQcj7w3HuvRJvOVi18jIF2o0ioaY9AwVQZ0HRN8FGOnngp361DlHWOOX6a+jF3lHb
         EYNhLrJQ5DR3p1iBBrMdZMNvrYH5P6lmecRnYZfP65CeGqQpNFUEmZQOotkW71Rh14N0
         N0O22OYZgPQ/rX84c94IN3msNIkvmqCIpv6oQUzZe3De26wqIwdmIx7SzLzttGBq6Dde
         HFxPO86g4PAjxVXpolV5P1Ihr21op1SOkP0k/AjuvRw9gOwTQKSISZdzYPqcx/Y5M804
         eOa+YL23GMrnDcBurAk95TZU2sngTIthsIe4+66QL4+8FArgxePaCfCSpzRw6njZmOjL
         E8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794558570; x=1795163370;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P/VFBZuAGyJu2CUgSmYUwGxL2qE8W+WmTuX+htbAtBY=;
        b=OA2sZlNOcexSRLp+XNp7TRZFIVDEou4LY2Zt/S9+SeE9mjrQ0bSUVd1uRKimVg9Etr
         w0NWbd9gQMvpv0hgM7K110EuiPxLCiYiAxtSlQ90aTHA6/6JSXrnY78xKZ1aD8mDQLMH
         VxC3gU/80bFp3bmu/pBn/9YajzlsXYejUqQciJzENGbBOqd+lgEIGSJTQop8GzOSbaek
         3GD5ogGvW5MBjCXvwRYHDP1Z0iziIz8EzNhGqU/ZlVcUmykIhg/ryVu3NzM5kL37GnGd
         5TH14N8B7syUeaMYMHYWwZL0m1ArWrpipy1eSqKqZOe56XRDA5P3VGmSFigYY0VmBGyL
         fbTg==
X-Forwarded-Encrypted: i=1; AL+hErFHnGdpicbNyPbJ/jkxiF0tvzb8IthrksygCfwd8T/3CN9EDec5weXghC/CJkHuBa2fpslBBjoo@lists.infradead.org
X-Gm-Message-State: APuU4Z8aKG/4ufQl9RhyHrrrS+NYJRwr3oh5QSOXvprRxrzDsj+Nz3PZ
	mzR3DO925HlHQ+ThGkgY84bCI+xzDhhQHpwQjq+iZs/+bCH8OAPlSiHkc1HLJnOG3Go7l7cdT9I
	cC/yDSwM4B4ULcIgZBOOJ7iE5Hiz5ngY=
X-Gm-Gg: AYBFou2OmfBgeDOmltT1GINioC3zxQp5oH/v1F3OBMM/ZQM3lLYwJdniMmyLh4u/J29
	PqvDnEWArYJ/nXz0Omz9yUEcvWBE+s21rW35y1nmGqPeoh2T71aR5v+LWRJDGTi46UqvuUZk/2d
	ApvDhrts5PFGP6ATYW3t3gzEBe3ocnggEqjXEW3Zl71FWCxkHxWv+doJ/GxUTROTSMaYE/UjO3E
	bOfQHqfmFrc+LrJ+e9nw9Et0YHRI2Er0NHL6v7DM4iMzZa0bZpLBLLVZtSA6usmpkMRh7M7JiFx
	cQ06poJKcsUjFF6fqyptOwsYmZiClYY0fioKnDuI/eM5d31se7+2+7uZbP72wUmNLAKiJdUPvSa
	qMmU/M2xIkcuB3Uij4sLudtDxrt+oxPsPa3UjMvuYgBM6rkq7nlIaR8+EIg==
X-Received: by 2002:a05:6214:c6f:b0:91c:133d:4916 with SMTP id
 6a1803df08f44-91f24258d3bmr27365136d6.57.1794558570089; Fri, 13 Nov 2026
 00:29:30 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112175624.40547-1-gonsolo@gmail.com>
In-Reply-To: <20261112175624.40547-1-gonsolo@gmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Fri, 13 Nov 2026 19:29:18 +1100
X-Gm-Features: AclHuK_22IBl1HM0EmP8TqULn6mARyFVsz-pBtAjutczCKWrwrUzs-czsdinmNg
Message-ID: <CAGRGNgVXgWeFVkTcFxYvGg-DOEsmpPQZ+atEF0fq4m=F+BHWjw@mail.gmail.com>
Subject: Re: [PATCH RFC wireless-next 0/3] wifi: b43: core revision 40 and 42
 MAC setup (series 2/4)
To: Andreas Wendleder <gonsolo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_002932_179435_FE75135E 
X-CRM114-Status: GOOD (  21.68  )
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
Cc: jpeisach@ubuntu.com, kvalo@kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQW5kcmVhcywKCldoeSBhbSBJIGJlaW5nIENDJ2Qgb24gdGhlc2UgcGF0Y2hlcz8gSSd2ZSBu
ZXZlciBtYWludGFpbmVkIG9yIGRvbmUKYW55IHNpZ25pZmljYW50IHJldmlldyBvZiBwYXRjaGVz
IGZvciB0aGlzIGRyaXZlciwgaGF2ZSBiYXJlbHkgYmVlbgphY3RpdmUgb24gdGhpcyBsaXN0IGlu
IHllYXJzLCBhbmQgYW0gdW5zdWJzY3JpYmVkLgoKQ291bGQgeW91IHBsZWFzZSBmaXggd2hhdGV2
ZXIgc2NyaXB0IHlvdSdyZSB1c2luZyB0aGF0IGlzIHNwaXR0aW5nIG91dApteSBlbWFpbCBhZGRy
ZXNzPyAoQWxzbyBLYWxsZSBWYWxvIGhhc24ndCBiZWVuIHdvcmtpbmcgaW4gdGhlIExpbnV4Cndp
cmVsZXNzIHNwYWNlIGZvciBhIGxvbmcgdGltZSBlaXRoZXIpCgpUaGFua3MsCgpKdWxpYW4gQ2Fs
YWJ5CgpPbiBGcmksIE5vdiAxMywgMjAyNiBhdCA0OjU24oCvQU0gQW5kcmVhcyBXZW5kbGVkZXIg
PGdvbnNvbG9AZ21haWwuY29tPiB3cm90ZToKPgo+IE1BQyBjb3JlIHN1cHBvcnQgZm9yIHRoZSBC
Q000MzUyL0JDTTQzNjAgY29yZSByZXZpc2lvbnMgNDAgYW5kIDQyLiBUaGluZ3MKPiB0aGF0IGRl
cGVuZCBvbiB0aGUgY29yZSByZXZpc2lvbiBhcmUgZ2F0ZWQgb24gaXQgKGI0M19pc19hY19jb3Jl
KCkpLAo+IHRoaW5ncyB0aGF0IGRlcGVuZCBvbiB0aGUgbWljcm9jb2RlIGxheW91dCBhcmUgZ2F0
ZWQgb24gdGhlIG1pY3JvY29kZQo+IHJldmlzaW9uIChiNDNfdWNvZGVfaXNfYWMoKSwgcmV2aXNp
b24gNzg0IGFuZCBhYm92ZSwgc2V0IG9uY2UgdGhlCj4gbWljcm9jb2RlIGlzIGxvYWRlZCkuIFRo
ZSBUWCBhbmQgUlggZm9ybWF0cyBhbmQgdGhlIFBIWSBhcmUgbm90IGluIHRoaXMKPiBzZXJpZXMu
IEJhc2VkIG9uIHNlcmllcyAxLzQuCj4KPiBUaGlzIGlzIHBvc3RlZCBhcyBSRkMgc28gdGhhdCBw
ZW9wbGUgd2l0aCB0aGVzZSBjaGlwcyBjYW4gdXNlIGFuZCB0ZXN0Cj4gaXQgbm93OyBiNDMgaXMg
b3JwaGFuZWQgYW5kIG5vYm9keSBpcyBzZXQgdG8gdGFrZSB0aGVzZSBwYXRjaGVzIGF0IHRoZQo+
IG1vbWVudC4gU2VyaWVzIDEvNCBpcyBvbiB0aGUgbGlzdDoKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC13aXJlbGVzcy8yMDI2MTAxNDE0MzIyNS44MjE0OS0xLWdvbnNvbG9AZ21haWwu
Y29tLwo+Cj4gV2hlcmUgdGhlIHZhbHVlcyBjb21lIGZyb206IHRoZSByZWdpc3RlciBzZXF1ZW5j
ZXMgYW5kIHRhYmxlIGNvbnRlbnRzIHdlcmUKPiB0YWtlbiBmcm9tIEJyb2FkY29tJ3Mgd2wgZHJp
dmVyIHJ1bm5pbmcgb24gdGhpcyBNYWNCb29rLCBieSB0cmFjaW5nIGl0cwo+IHJlZ2lzdGVyIGFj
Y2Vzc2VzIChicGZ0cmFjZSBvbiB3bCdzIE1NSU8gYWNjZXNzb3JzKSwgYW5kIHJlZHVjZWQgdG8g
d2hhdAo+IHRoZSBoYXJkd2FyZSBuZWVkcy4gUGFydHMgY29tZSBmcm9tIEFsZXNzaW8gRmVycmkn
cyBBQy1QSFkgd29yayAodGhlIFBIWQo+IGluaXQgc2VxdWVuY2UsIHRoZSA0MCBhbmQgODAgTUh6
IGNvZWZmaWNpZW50IHRhYmxlcywgYSBUWCBnYWluIHRhYmxlLCB0aGUKPiBGYXJyb3cgcmVzYW1w
bGVyIGZvcm11bGEsIHRoZSBWSFQgZmllbGRzIG9mIHRoZSBUWCBkZXNjcmlwdG9yLCByZWdpc3Rl
cgo+IGFuZCB0YWJsZSBuYW1lcyksIGFuZCBzb21lIGZvcm1hdHMgZm9sbG93IGJyY21zbWFjLgo+
IFRoZSByZXN1bHQgd2FzIHRlc3RlZCBvbiB0aGUgaGFyZHdhcmUgYXMgZGVzY3JpYmVkIGJlbG93
Lgo+Cj4gRWFjaCBwYXRjaCBjb21waWxlcyBvbiBpdHMgb3duIChrZXJuZWwgNy4yLjEwIGhlYWRl
cnMpLiBUaGUgZm91ciBzZXJpZXMKPiB0b2dldGhlciB3ZXJlIHJ1biBvbiBhIE1hY0Jvb2tBaXI2
LDEgKDE0ZTQ6NDNhMCwgQkNNNDM2MCwgY29yZSByZXZpc2lvbiA0MiwKPiBtaWNyb2NvZGUgODMy
LjEyNywgMiBvZiAzIGNoYWlucyB3aXJlZCkgb24gdG9wIG9mIHY3LjMtcmM1J3MgYjQzLiBUaGUg
QUMgUEhZCj4gb25seSBjb21lcyB3aXRoIHNlcmllcyA0LCBzbyB0aGUgZWFybGllciBzZXJpZXMg
Y2Fubm90IGJlIGV4ZXJjaXNlZCBvbiB0aGlzCj4gaGFyZHdhcmUgYWxvbmUuCj4KPiBBbmRyZWFz
IFdlbmRsZWRlciAoMyk6Cj4gICB3aWZpOiBiNDM6IHNldCB0aGUgRE1BIGJ1cnN0IGFuZCBwcmVm
ZXRjaCBiaXRzIG9mIGNvcmUgcmV2aXNpb25zIDQwCj4gICAgIGFuZCA0Mgo+ICAgd2lmaTogYjQz
OiBNQUMgY29yZSBzZXR1cCBmb3IgY29yZSByZXZpc2lvbnMgNDAgYW5kIDQyCj4gICB3aWZpOiBi
NDM6IGFkZHJlc3MgbWF0Y2ggdGFibGUsIHRlbXBsYXRlcyBhbmQgYmVhY29ucyBmb3IgdGhlIEFD
Cj4gICAgIG1pY3JvY29kZQo+Cj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9i
NDMuaCAgfCAgMTQgKysKPiAgZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL2RtYS5j
ICB8ICAgNCArCj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9kbWEuaCAgfCAg
IDIgKwo+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvbWFpbi5jIHwgMjQyICsr
KysrKysrKysrKysrKysrKysrKy0tCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjQ2IGluc2VydGlvbnMo
KyksIDE2IGRlbGV0aW9ucygtKQo+CgoKLS0gCkp1bGlhbiBDYWxhYnkKCkVtYWlsOiBqdWxpYW4u
Y2FsYWJ5QGdtYWlsLmNvbQpQcm9maWxlOiBodHRwOi8vd3d3Lmdvb2dsZS5jb20vcHJvZmlsZXMv
anVsaWFuLmNhbGFieS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
