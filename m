Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C7B7CD6E55
	for <b43-dev@archiver.kernel.org>; Wed,  3 Jun 2026 15:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=inVucwKiCEaEpgNHrKg7d1zszQB+rMQ+cinpr4uQBO4=; b=kdvlKxszlOXQLLhHd3j9PYMDlJ
	yG1PJPWJRSKgvhCkUyzrnFtuxOj43B3SmYkn96/kQl8ye/8jFgrCu7Vr0EtB2Ukfd+VO4HUqQlZLV
	LOP91lReDEwcbFl4GEQqtvDmpY3UK8JiDrAVIjdMYda2dEII23odcISNgMGJPOxckvJG8XWVqpYhy
	U6tUJEwilaWkvdC4wIsw9wcklY6Lhy367iPkv9RZv7K3RBuKrtEIF5/6teO8RFju9K2aMZVdqTwTv
	LBD0Wuob2WF+hJRHkLWR3n+31csF4DKH80i1VjLV2xx0R7Wg4UjlWkg6txrZJ7tfz9TMjOTBQ05Y/
	FB5nekaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnxv-0000000FTbA-19Vs;
	Wed, 03 Jun 2026 15:57:11 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnxs-0000000FTaN-46qR
	for b43-dev@lists.infradead.org;
	Wed, 03 Jun 2026 15:57:10 +0000
Date: Wed, 3 Jun 2026 17:56:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1780502222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zrNSRM1Z4CEXimJhWlKdTHX8Qi2VKmaYmJepC+k/Uh8=;
	b=LdRqLtvBCwu7MaAyQ4Y+4digiuhV8Mss/XeLrk8/j4X0oDmXjjWYklrdknUGNwT1SBOrQY
	OvHj3EoQcEWDM758+GoVX/4seeTGR47vvR0ojtnyOY5xjlsQio+X0fIOqfTKnSIDOeE0w1
	ciyd/lMGXziERPaf/ZXjKsgrfkxh0SOQ+fKvRpavQjMJlt76HpQLLV6VeF1iq+letpA27m
	9vOaKpoA83WXqMN8gvsC6oXM/me0IVLuTODofhtEhghAuv6L7+b2MgjB/hXfrM3kXE2doX
	bNMu1OQOkW4DmDpI0smlN5IERvQ6fVHPLaDVac06EcWddv+DeYcTMj8+p4SIQQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Jeeva Anandh <anandhjeeva215@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] b43legacy: remove redundant mask bit set
Message-ID: <20260603175622.3816e48d@barney>
In-Reply-To: <20260603125331.6310-1-anandhjeeva215@gmail.com>
References: <20260603125331.6310-1-anandhjeeva215@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_085709_214341_6009FD10 
X-CRM114-Status: GOOD (  15.81  )
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
Content-Type: multipart/mixed; boundary="===============0258639100835581276=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0258639100835581276==
Content-Type: multipart/signed; boundary="Sig_/DwH1_DYjyQLfw_tQzHJPZ2i";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/DwH1_DYjyQLfw_tQzHJPZ2i
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed,  3 Jun 2026 12:53:31 +0000
Jeeva Anandh <anandhjeeva215@gmail.com> wrote:

> mask is initialized to 0x0000001F, which already contains
> the 0x0010 bit. Therefore the conditional OR operation is
> redundant and can be removed.
>=20
> Signed-off-by: Jeeva Anandh <anandhjeeva215@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43legacy/main.c | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net=
/wireless/broadcom/b43legacy/main.c
> index 6b3e0b2bbca7..d32bffa6f009 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/main.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
> @@ -1904,8 +1904,6 @@ static int b43legacy_gpio_init(struct b43legacy_wld=
ev *dev)
>  		mask |=3D 0x0200;
>  		set |=3D 0x0200;
>  	}
> -	if (dev->dev->id.revision >=3D 2)
> -		mask  |=3D 0x0010; /* FIXME: This is redundant. */
> =20
>  #ifdef CONFIG_SSB_DRIVER_PCICORE
>  	pcidev =3D bus->pcicore.dev;

No, please don't just remove these things.
There is a FIXME in the comment, because the author already noticed that th=
is
was strange and that there probably is an unknown reason for this.
Just removing this FIXME without clarifying the underlying reason
does not improve the code quality.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/DwH1_DYjyQLfw_tQzHJPZ2i
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmogTqYACgkQ9TK+HZCN
iw4rIw/7BmJ/cX5IldAqIHP1+YokL2qpD0dZ5HPwnGDcMV0ftM0+akuzV2xtxQPW
jr31qZOMDOOlEJ0QivrsGKDpWI4iBKNYKygOfnztdHYCfjIesuz9Mx8zNroNog9A
3LlNyAmAk9xghW0dd0ehu71rGvshY3UATCZXxcyIhqNhsmODck5RWSfdYaUCI+s/
R/ns6t/A1cVgm6NqeSgWyEnUYtXXIiWrGL59O34pbxwIK6XsQ2n4p9XBqV5q56eu
bnISEdgaGSUUilfW1jHMIIvBA1OAr/ZMpp/MISWr04AnUQtpHKFQDUl+OoHpaBJj
J9rONGQdHV4LTJpOQyvS6ujIlEvdR8EtSxc3fKa9btjGMS1uoJJrqIAi9brrNfR7
myPzTjArQJFLVtplGLKdDwRvIYGIQ0HP8sD5+MRzL1Nnc1v6UQacmSwK+llMW8EM
O5Y/gk+S9lYRaVcjKtn5S0N82a4+gPWkVZ8oL0siGOJCCNMLQk2dW0xBS4BQiw2T
BUt6yzV+NTk9iqSyqkWGhY2ZNg/BvC/2M7Iyogy/f4W3/03JgoZH3tbKId93+1wB
eL2gyqfFezjuVuKMnUTS75ygkdEC9ea2octVN5OtTYcvKWlyJQORE/Uv2LJHKdpl
f3eSBLhlz2g0c96cXyw2HfWqOsYNnl8vEddu5x5VgBE2yr4DuG4=
=m2BT
-----END PGP SIGNATURE-----

--Sig_/DwH1_DYjyQLfw_tQzHJPZ2i--


--===============0258639100835581276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0258639100835581276==--

