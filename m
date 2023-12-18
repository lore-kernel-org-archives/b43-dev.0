Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AD15C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 15:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4CW61A2PKNkdk6/DS09iP13V2VeNinRoSqzxXyOZn4=; b=3f/LnW650QpbcR
	0nDtT5553VP0j5XSVgsBhY/srC2sjeX+j7y2GB6LtEDrnhDRboE3YP/rsY6wvfziDfA1e1f/PmKKj
	BcN5TRc6OY5yB8wR4LYEakqTk7PGlMmcMIkNXh2oLDq35zF3AFEejfJ6Yb6QDU7HYW/hAgNNri9b4
	IQx5uSd9aHBI9jwKTgwJWbIisgpyL6nb1989FUOk5rsF9tXVFao71q4JouGcIh3njQmf+xOLxl9YV
	GrpEHSyIRCCtL0B0Cet5OvTJCbns0daJ2wqs5N1KOZnWJSiDTCn/1Rgj3upGIBi1+Eqa7nXT0pY9g
	OtVsF0KnJOMttbAMChyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFAC-00B8iu-2f;
	Mon, 18 Dec 2023 15:04:12 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFA9-00B8gn-0C
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 15:04:11 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a236d77dceeso23989566b.2
        for <b43-dev@lists.infradead.org>; Mon, 18 Dec 2023 07:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702911847; x=1703516647; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6foNHtyZRIJvWBTng3wISgU2MfZKVaXRv3N1MNnrMQ=;
        b=Veh52tpTtN8ba7QdUcOQqQAnkx50ZhZt5sdB1EDQb28hVZJ+gMAj1KdsMibA6tQ4G0
         RlFE/gCUlvqZDgpDnh7cB28+eBFVzNbFemB63U179QIuIfGh6hg+eUh09ErSvr7WkVwX
         38yV9htt3FqqNcpIzfPpTO1hYtp5ABJIsQD3k4bDBwCcLh9/94f+Gaeo/sUCrcimHFLV
         UMTbnJZkxrheb4LJgtEkl2L10/MY101CJ0lPbIxZk5ygnMdk3Ka0vXI1TJG8BhtZj6Du
         4mNJc1vrvzV7d2P9vCk9vn6K7fLuy8hcYtmuiYYrpAPtuUf1HiZQA5KpsC2b9Ue94IIF
         HruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702911847; x=1703516647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u6foNHtyZRIJvWBTng3wISgU2MfZKVaXRv3N1MNnrMQ=;
        b=h/vwnSMoNfISZQp+/gcTZg3q7e/Hj3DDc9neh+ANxsUdb2zWZHkgfLPRQo+ifnqqvR
         7+jimA4A7pgrE4judFuB4l2yiQI5UhbRggn1M18NQFLXYggbjQmaVSBur1S+c9EvGvzC
         xpEfNPik18iNK/Y89YIN4IlVLu7cpaiGNFkBUDOF+QXD+jIzY608W7JtUF5qVPdMSnUn
         2Nx2DysjVfDZWwK5Id8KUzkPFsgO5mPedTCyfj2Ml954Ag1/pRuJ7VR7M381QGpoEHAB
         7pv86WIoFLO/TKmdxP7qkEI11wfAmN99uzKCD9D2BBdm5e0/V9l/jy7Qr2DcYdcnyvfI
         fjIw==
X-Gm-Message-State: AOJu0YzfF7krXqvMZ+Ag2m52EH2B032bA5+H44GcBonzR8afOauMeW/Q
	bE0QBQralw8XSerjAeW8YgkJ9VHDosGwY1PDguY=
X-Google-Smtp-Source: AGHT+IGpphjTUnAqLE+hQAj1yH6sXJlSe/0XhogaISq5mrc01gwsmD6+HxIIpJz2iD0xeckt1xV5LbaknP1N/+M7VSo=
X-Received: by 2002:a17:906:b203:b0:a19:a19b:424a with SMTP id
 p3-20020a170906b20300b00a19a19b424amr5114987ejz.181.1702911846667; Mon, 18
 Dec 2023 07:04:06 -0800 (PST)
MIME-Version: 1.0
References: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
 <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net> <87o7ensgjv.fsf@kernel.org>
In-Reply-To: <87o7ensgjv.fsf@kernel.org>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 18 Dec 2023 16:03:54 +0100
Message-ID: <CAKXUXMxh3rM8da9kJG_=Sy8fQqqf7f8xXaHDHPLvpvRiYg1e5w@mail.gmail.com>
Subject: Re: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb drivers
To: Kalle Valo <kvalo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_070409_118290_B1EFBDA3 
X-CRM114-Status: GOOD (  21.92  )
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <aspriel@gmail.com>, kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, SHA-cyfmac-dev-list@infineon.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>, Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMzo1OeKAr1BNIEthbGxlIFZhbG8gPGt2YWxvQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gSm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5l
dD4gd3JpdGVzOgo+Cj4gPiBPbiBNb24sIDIwMjMtMTItMTggYXQgMTI6NTggKzAxMDAsIEx1a2Fz
IEJ1bHdhaG4gd3JvdGU6Cj4gPgo+ID4gRHVubm8sIEknbSBub3Qgc3VwZXIgaW52b2x2ZWQgd2l0
aCB0aGlzIGJ1dCAuLi4KPiA+Cj4gPj4gKysrIGIvZHJpdmVycy9iY21hL0tjb25maWcKPiA+PiBA
QCAtMSwxMiArMSw3IEBACj4gPj4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
PiA+PiAtY29uZmlnIEJDTUFfUE9TU0lCTEUKPiA+PiAtICAgIGJvb2wKPiA+PiAtICAgIGRlcGVu
ZHMgb24gSEFTX0lPTUVNICYmIEhBU19ETUEKPiA+PiAtICAgIGRlZmF1bHQgeQo+ID4+IC0KPiA+
PiAgbWVudWNvbmZpZyBCQ01BCj4gPj4gICAgICB0cmlzdGF0ZSAiQnJvYWRjb20gc3BlY2lmaWMg
QU1CQSIKPiA+PiAtICAgIGRlcGVuZHMgb24gQkNNQV9QT1NTSUJMRQo+ID4+ICsgICAgZGVwZW5k
cyBvbiBIQVNfSU9NRU0gJiYgSEFTX0RNQQo+ID4KPiA+IFsuLi5dCj4gPj4gIGNvbmZpZyBCUkNN
U01BQwo+ID4+ICAgICAgdHJpc3RhdGUgIkJyb2FkY29tIElFRUU4MDIuMTFuIFBDSWUgU29mdE1B
QyBXTEFOIGRyaXZlciIKPiA+PiAtICAgIGRlcGVuZHMgb24gTUFDODAyMTEKPiA+PiAtICAgIGRl
cGVuZHMgb24gQkNNQV9QT1NTSUJMRQo+ID4+ICsgICAgZGVwZW5kcyBvbiBIQVNfSU9NRU0gJiYg
SEFTX0RNQSAmJiBNQUM4MDIxMQo+ID4+ICAgICAgc2VsZWN0IEJDTUEKPiA+Cj4gPiB0byBtZSBp
dCBraW5kIG9mIHNlZW1zIG1vcmUgb2J2aW91cyBmb3IgZXhhbXBsZSBpbiB0aGlzIGNhc2UgdG8g
c2F5Cj4gPiAiZGVwZW5kIG9uIEJDTUFfUE9TU0lCTEUgYW5kIHNlbGVjdCBCQ01BIiByYXRoZXIg
dGhhbiBvcGVuLWNvZGluZyB0aGUKPiA+IEJDTUEgZGVwZW5kZW5jaWVzIGJvdGggaGVyZSBhbmQg
aW4gQkNNQT8gTm93IGdyYW50ZWQsIHRoZXkncmUgcmF0aGVyCj4gPiB1bmxpa2VseSB0byBfY2hh
bmdlXywgYnV0IGl0IHN0aWxsIHNlZW1zIG1vcmUgb2J2aW91cz8KPgo+IEkgd2FzIHRoaW5raW5n
IHRoZSBzYW1lLiBMdWthcywgaXMgdGhlcmUgYSBzcGVjaWZpYyByZWFzb24gd2h5IHlvdSB3YW50
Cj4gdG8gY2hhbmdlIHRoaXMgb3IgdGhpcyBqdXN0IHNvbWV0aGluZyB5b3Ugbm90aWNlZCBieSBj
aGFuY2U/Cj4KCkkganVzdCBub3RpY2VkIHRoaXMgYnkgY2hhbmNlLS0td2VsbCwgSSB3YXMgd29u
ZGVyaW5nIHdoYXQgdGhlc2UKY29uZmlnIHN5bWJvbHMgd2VyZSBkb2luZyBpbiBteSBrZXJuZWwg
YnVpbGQgY29uZmlndXJhdGlvbiAodGhleSBhcmUKYWN0dWFsbHkgaW4gZXZlcnkgY29uZmlnKS4g
V2hpbGUgcmVhZGluZyB0aHJvdWdoIHRoZSBjb2RlLCBJIHdhcwpjb25mdXNlZCBvbiB3aGF0IHRo
ZSBkZXBlbmRlbmNpZXMgd2VyZSB0cnlpbmcgdG8gdGVsbCBtZSwgYXMgdGhlCmNvbmZpZyBzeW1i
b2xzIGFuZCBjb25kaXRpb25zIHNlZW1lZCB0byByZXBlYXQgb3ZlciBhbmQgb3ZlciBpbgpkaWZm
ZXJlbnQgcGxhY2VzLgoKSSB0aG91Z2h0IGl0IHdhcyB3b3J0aCBhIGNsZWFuIHVwIGFuZCB0aGlz
IHdhcyB0aGUgcGF0Y2ggSSBjYW1lIHVwCndpdGggaW4gdGhlIGVuZC4KCkx1a2FzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
