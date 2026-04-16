Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8605EF8D762
	for <b43-dev@archiver.kernel.org>; Thu, 16 Apr 2026 16:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z542dW/dQBR+ZqFBG48N4suKurk+BT03ile8yXAhtp8=; b=bSDlDwoWEnvIu9bsF+IGvv4wMt
	45+wzXJSdkC4bm6o6NeypgeGKLBnQmYh5yCEhRMfx1emnlFUHajrzwtL/Z3VpjuJkO3wXIQoZ9/NG
	VOh7FT4A/ZeeaAk2+vlaadVTaYK0KickYGNYjgntGT3pprR3oqoD39Rgmtd+7wdVQoclA9mT9czJK
	3c/L3edguGnkqJOqLoFvs9Zn+6s4V6XX2XxoxZemi4m9hWWyqHg384gsCgZSvTq8NFLTXJLpiKUFr
	3sHt2gXARdwF1H9c/aKfvq8NNUX/XPchHPr+nPjOaYVnfmiiQVhBybRHDli8LeahRUkM34DBR95/+
	O7HIUKNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDPhf-00000002fjj-06Hz;
	Thu, 16 Apr 2026 16:36:31 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDPhX-00000002fit-345B
	for b43-dev@lists.infradead.org;
	Thu, 16 Apr 2026 16:36:25 +0000
Date: Thu, 16 Apr 2026 18:31:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1776357379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ipNuGZ81J1vY7nz3iiCuJyXey/PAzkfHRI0oapcyXmQ=;
	b=CfJRUuzRl3qf+VbSFyZMbXfFYcA1dfyzwYhpyoqEliiaLssxRlucRSgLrKbQ9CtIoR/Nsf
	LO1HPGYRvDK4J9+ZAV6j6kRNflE1AD84zdsGIADWmXZRKCF757Aos1WVmL+0i3BA6ah2eu
	r5Q6VJQ4altkpjbFVbT5Et3vb6VK/b0nPFJO9unhmno/GTpfUYBtMLl1BACkku9RFLhe05
	+dytShRJh6n5mFBwSHTniV60PfIMqxxeO9apHYn6gtrNkdc2Fx4bnwZzVpk25qVgI1alQ2
	sq2EDf0mI6dx2k33SZTMBe3pJ2Ilw150dYK64NTX0JYGnzavkfyfq2DZ6zVScQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Jonas Gorski <jonas.gorski@gmail.com>
Cc: Tristan Madani <tristmd@gmail.com>, Johannes Berg
 <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] wifi: b43: fix infinite loop from invalid
 hardware DMA RX slot
Message-ID: <20260416183100.154ca989@barney>
In-Reply-To: <CAOiHx=nuUvf31J5khj4e4Kzv2wK4++TeZevXu3Z53qB66RagdQ@mail.gmail.com>
References: <20260415222425.1544638-1-tristmd@gmail.com>
	<20260415222425.1544638-2-tristmd@gmail.com>
	<CAOiHx=nuUvf31J5khj4e4Kzv2wK4++TeZevXu3Z53qB66RagdQ@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_093624_004168_062989F0 
X-CRM114-Status: GOOD (  10.81  )
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
Content-Type: multipart/mixed; boundary="===============4683018667449842658=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============4683018667449842658==
Content-Type: multipart/signed; boundary="Sig_/XcuoM4WBcXaryJQ/pBrWOW/";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/XcuoM4WBcXaryJQ/pBrWOW/
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 16 Apr 2026 08:34:00 +0200
Jonas Gorski <jonas.gorski@gmail.com> wrote:

> > diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wire=
less/broadcom/b43/dma.c
> > index XXXXXXX..XXXXXXX 100644
> > --- a/drivers/net/wireless/broadcom/b43/dma.c
> > +++ b/drivers/net/wireless/broadcom/b43/dma.c
> > @@ -1693,7 +1693,10 @@ void b43_dma_rx(struct b43_dmaring *ring)
> >         B43_WARN_ON(ring->tx);
> >         current_slot =3D ops->get_current_rxslot(ring);
> > -       B43_WARN_ON(!(current_slot >=3D 0 && current_slot < ring->nr_sl=
ots));
> > +       if (!(current_slot >=3D 0 && current_slot < ring->nr_slots)) {
> > +               B43_WARN_ON(1);
> > +               return;
> > +       } =20
>=20
> B43_WARN_ON() returns the condition's result, so you can shorten this to
>=20
> if (B43_WARN_ON(!(current_slot >=3D 0 && current_slot < ring->nr_slots)))
>         return;


Acked-by: Michael B=C3=BCsch <m@bues.ch>

Please also check the b43legacy driver. It may contain exactly the same cod=
e.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/XcuoM4WBcXaryJQ/pBrWOW/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmnhDsQACgkQ9TK+HZCN
iw6mJA//Xnlm9AkM3Gk9OrGU02FsfwgrjG7JgULGL0H13Cua7z1s0YhDERMyxjmm
J6ridsu0twsw3IYW0ptzi/drM8cGLWTFdx3BANQFFUOOt06hSVU3h4wfgOCU5r7S
QuZUo6d33KB68mwX09Iw2TYBei3XEnafX5JuIS9u7mqffAuYLs4nyL2ulmQYoCfR
I47dOBdzpjH4kKGsrcJL0NWzilVp4uy8K+y41DhI/EYxHBn9HQYGKHMgxXIzj47L
mAMMiMQ0eiHer9OXyn8QJmXx4vz85dwMl7BRaVTf39j41SF4sO8jU+2R04xZQmCO
KgcmWCbtiu8CPBK9QMhBD2YmH8ng5DZGSuuE2GKVxl9orGKN4ONKWhayeaP8J8Yp
PRQLWd64GdzguWEYFIlmUYM6jniat6KXdPXZnbPEp6m+XjTM4ARrceXklf69Cndd
npYLD0hNpb2ZrzP6URMkaQv3IdtEdu7z8KdI42GiYcSj1qv7Q/uGLIAoilyB62cx
JgPrP3bgQ1u8T21eUrlxFqOsgz6pLrsCl/Rac8hiuFFxL0mcjgL1BSBv5w1E5a0w
VGR+NxRNLAqdcTv8WfyVyonc9rFBBxf82WmTRpeasPcn4VxRpM1SpgBev8lbJDoI
f1LNiiLH5I3qr9JDqJElxaJk5Ivwd1M3igAvGVzrOzCEP6O0D74=
=VKY1
-----END PGP SIGNATURE-----

--Sig_/XcuoM4WBcXaryJQ/pBrWOW/--


--===============4683018667449842658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============4683018667449842658==--

