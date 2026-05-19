Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC4B8CD4F5B
	for <b43-dev@archiver.kernel.org>; Tue, 19 May 2026 15:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mEkmYPl1dx5/t1dELgcPGFWjp/0GMbpTKtMf4i2bHSQ=; b=GP7hGwS+iGFAFoI5RDM2kuhYWt
	9wT2SqbFM3R26jae+Nug1ioHNUj+khuos4ZZHqvcRWwkTUH4YkUzPhKG/CB+kJ4EZ5zcKitfY7wpn
	k888JM4qsnMq0IWTz5sNEafH4cLT0RrnJaqbzSyFSEn5qJ6A/ZIJh0+QfkBHF6PR/qOrQWG8ebOxM
	/c5qDje6e8JH1F8cUwBk5LtivY8aVFYYfhD3pbh92l+PFjGakelghY0obEnvktB5v8ads70pEdwlX
	3cZNtAvt8LuMqCFlo8Z0ITBfbQbfX5DRCVUapunt1R7xYalxtSBnCluTVXusS/8fi+C0IzFSrFJIY
	ZlC0RzVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMqi-000000029HH-3gqV;
	Tue, 19 May 2026 15:59:16 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMqa-000000029Fx-3bG9
	for b43-dev@lists.infradead.org;
	Tue, 19 May 2026 15:59:10 +0000
Date: Tue, 19 May 2026 17:58:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1779206344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xE0V16Qzx0fWvzNYJfiW2x7In3WXb/DTgVC+7eyRuMo=;
	b=LuMs4EzTp2RCzqW+4FV/HckoNzNEjb+XS2PJIN0b8V7Yet9WC72M8FDEg6Wj10dw74EGmW
	HdNbtDs9q8cn0/VTqSGyoGoKlpfi3tERp1ey/v7cwCV7mLFHzHokRUzItBoEJmMq4O8iaf
	XRvQYjOZniabAiB+OP6SEENSpniskU0o2z0hVoKDkU/f8ALMNHD1lUtvBMFZZobtLR/IDM
	w9/iwUM0/9Fyvc8d6tWp2H2RRpEKNGrKPHzOmsLLCCJOUyvmEc9cCwGaxUDo9YHhGIhriB
	GPM8gsf/PodiZ82200aKRb+fjjS2gqMTLwy7+VnicheNejqY9m1FjVeDA4N6Xg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Alessio Ferri <alessio.ferri@mythread.it>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 kvalo@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260519175812.7ce97ba1@barney>
In-Reply-To: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_085909_056847_4AFDB385 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: multipart/mixed; boundary="===============5165258515951322990=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============5165258515951322990==
Content-Type: multipart/signed; boundary="Sig_/d7_qXgZoj9=FyKV8KR5Ts30";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/d7_qXgZoj9=FyKV8KR5Ts30
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 18 May 2026 03:49:33 +0200
Alessio Ferri <alessio.ferri@mythread.it> wrote:

> This series completes b43 support for the Broadcom N-PHY revision 8
> paired with radio 2057 revision 8. b43 already supports the surrounding
> PHY family - N-PHY rev 8 with radio 2057 rev 5 and rev 7 are handled,
> and rev 16 with radio 2057 rev 9 is handled - but the rev 8 + rev 8
> combination falls through four dispatcher gaps:

> Alessio Ferri (6):
>   b43: add d11 core revision 0x16 to id table
>   b43: route d11 corerev 22 to 24-bit indirect radio access
>   b43: support radio 2057 rev 8
>   b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>   b43: add channel info table for N-PHY r8 + radio 2057 r8
>   b43: add RF power offset for N-PHY r8 + radio 2057 r8


In general this looks Ok.
=46rom the style I assume that this is AI generated, right?
If so, can you tell us a bit more about the inputs used for the AI?
What information is this implementation based on?

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/d7_qXgZoj9=FyKV8KR5Ts30
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmoMiJQACgkQ9TK+HZCN
iw4hHw//b+g96CuQX/r2P1RmZcVjZ6Z1G/3rC/9guZpIDSkoEYNM8Zguz3cus75T
aLCxnlR4F/Q7hTDfk97crBfNiCZ2EiZDRGZ1fpsAC99RTiJ2VNg3y5ibZ116Snjh
Zkv0otxcB5MwGOazvB2trImsYq1DxJ9mBLrksyZsrJX2+C/zYzz7JoQePBrk2dEi
z25rR59cQw050paTUVYIy4SJr0u1GqWJcaQ9zvRWgD5gYmNEnb1qd0TWOD+TBQ4K
KT56uJlklefIG8HzmP489/ILc+d21o2hJ13kuk/rIeomRUiec7Y09cqEI8VrO/kR
fd0Wo2qFhI5kNC60acKfmWCIO2yjfUY2B36owZHxi0I7CZaE4QlYcGAbaYA2POTp
1ftv7NfFSWnFSYVEkc+B7VEz2jAjVcKqVOXlXIqGeM4oKrUtvOWSptRaii8G5Jin
lFQCI0GssX6j0vGG3q067s0OTa0LGoELVjJ3Kn2VLw7iN6iQ5Dh344R2rDVY+l/d
Y5TzsNfS0wxJMQuo9CMIdNuy1eMTLKJrQTWsspz+2rgVXlf+N5wa0YcJBlZeoIxk
tOj7UsgwCFJOYNMX0EGO5XXxtJp4rcrnfuVhb0nZs8c53r1KmMBu7XmI0JFXYBRm
h+NQ5vUWSUuIkHlkops4sCnINawn4SDx2vYafNU/rpAX+X6iQOY=
=2SkM
-----END PGP SIGNATURE-----

--Sig_/d7_qXgZoj9=FyKV8KR5Ts30--


--===============5165258515951322990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5165258515951322990==--

