Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B45C7618E
	for <b43-dev@archiver.kernel.org>; Sat, 22 Apr 2023 17:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kewe8mg03a1gqe1JxUDSCBCAQp3AqjwdzCou1VObqKw=; b=jcENkWZX/XJtMLyhihEBE9aWAy
	ELJRLxvrOxNT+Y4kp3T2t3ePVpaUQ3u4NgAOX4KjIXdH9WHfS7MFWvOmJ+1fl9wvzKwedtXT1NgFL
	KnijlLhnzcdSnA74FJxooJOE1O+nSDOKL7zxz3esNgA1Ch7gIfDcf4y0kb0owaXOvcFbaYRvxEx+1
	kkEKa1qfaFtDSfWlAxrkTdWb4iT1sP6M1JapKkGV7XKbUQ3tmjdrcon7cUdq7NtBp+rEX/JE2a3BR
	eT91T0Zw9Rr102KdGiOd3LwqutrmSwsg4nH/2u1zqpSyqo/eZPilzKhohv5IjSThjdueeM+VWXKME
	x6fIznXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqH3C-00DANO-0p;
	Sat, 22 Apr 2023 17:29:30 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqH37-00DALt-38
	for b43-dev@lists.infradead.org;
	Sat, 22 Apr 2023 17:29:27 +0000
Received: by bues.ch with esmtpsa (Exim 4.94.2)
	(envelope-from <m@bues.ch>)
	id 1pqH2e-0008h1-Tl; Sat, 22 Apr 2023 19:28:54 +0200
Date: Sat, 22 Apr 2023 19:28:20 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nikita Zhandarovich <n.zhandarovich@fintech.ru>, Kalle Valo
 <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "John W. Linville" <linville@tuxdriver.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org, Natalia Petrova <n.petrova@fintech.ru>
Subject: Re: [PATCH v2] b43legacy: Add checking for null for
 ssb_get_devtypedata(dev)
Message-ID: <20230422192820.59e8e423@barney>
In-Reply-To: <95cff855-cb12-cf66-888f-b296a712d37d@lwfinger.net>
References: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
 <95cff855-cb12-cf66-888f-b296a712d37d@lwfinger.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_102926_002338_51816F60 
X-CRM114-Status: GOOD (  13.68  )
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
Content-Type: multipart/mixed; boundary="===============3347534237815088593=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============3347534237815088593==
Content-Type: multipart/signed; boundary="Sig_/2UmYtPuo=8I_Omt_ytOLG9A";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/2UmYtPuo=8I_Omt_ytOLG9A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 21 Apr 2023 17:14:18 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:
> > (err) goto out;
> >   		wl =3D ssb_get_devtypedata(dev);
> > -		B43legacy_WARN_ON(!wl);
> > +		if (!wl) {
> > +			B43legacy_WARN_ON(!wl);
> > +			err =3D -ENODEV;
> > +			goto out;
> > +		}
> >   	}
> >   	err =3D b43legacy_one_core_attach(dev, wl);
> >   	if (err) =20
>=20
> I do not recall seeing v1. One additional nitpick: The latest
> convention would have the subject as "wifi: b43legacy:...". Kalle may
> be able to fix this on merging, but it not, a v3 might be required.
> Otherwise, the patch is good.
>=20
> Reviewed-by: Larry Finger <Larry.Finger@lwfinger.net>

No, it's not good. It's wrong. I already replied to it.
wl can never be NULL here and the goto-out path is wrong (if there
was a chance for it to trigger).

Please drop this patch, Kalle.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/2UmYtPuo=8I_Omt_ytOLG9A
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmREGTUACgkQ9TK+HZCN
iw5QnxAAsP4FHvqBSFyCpRPrOwj512Kwf4RtO4TYNO/FC3zv09UAgjzILHDVJFDD
nPmFfNaPsGiVqDUHTIfuPzBYFMdvDsZyibynDU4Fv24YFNXx9YkrytMAZH+Rzh6t
4cID7MG82odxIJJP3ERs7vA0MX1HhD2cKR2BA2g6470gf1M1+EEqGt+xiu8Q09ja
rJNpcZB616jmOd3kCxRtSmEVuksPZfVYFFm3Nj77MIUiO/DlIcn2abkFPDMGYpOf
9GGCHTLc0DSTlZ2vTxmmnYQW/Jqhe6DAjjdY2v7OAN8Ma87VCKVWsCdjIKEhUSyf
vKY8uxLK9mG5wE8NSD7MqKNALqBewpEcHJy9FyVsxPdq92FpbqfkQh8sWRZFPDC0
kOT+Y9YqFaec9Ffe+jrISqN/lflkspnvCv4DJn2616NoaFa97zVMv43Oz+o5DYps
H5TcuwMr/xGlXxHOTRYlxZUFPNMlarkkv6ZoXrhBJncjgZROTRvwjbzgsEeRSO1+
OPUzTIIobbScYn3XNmNz85Ag8uBx/LrXqSW7F+N4dKyEhXs/EGXKjx/PnZIxSDNF
s05UhkHRz6N624hRVSEIOS7R4HuZQxIg83usyAkhTT/o58UsHd9sjrK1Tv63m+wE
XqbKdiC5cKgaN4Mhoeil2Cz6AZsSizVV4PYsAN7zGuk/iGOhC1Q=
=vx0A
-----END PGP SIGNATURE-----

--Sig_/2UmYtPuo=8I_Omt_ytOLG9A--


--===============3347534237815088593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3347534237815088593==--

