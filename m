Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01052C3DA6E
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 09:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OUAGT2+gUl71VDyFv7QeC6/ag+ZWoyfGx/rIzVS8/NI=; b=J0lh2Ja5+j77rumHcOB61oQcQG
	HaO10xkpqRbE5C0Lsl1JhseRI5i1hnx104vapamhrvkcBYyAXjnstlqDZGyFru62RkVIw4/apmios
	E+BIerhZIyDla5Zl5FMi50oc5ZQUDT29wxP1N89js4Kke2/kPjw0UnCtR3Zq7vWfrrqRp2okdtAA+
	z18+uIiMr6iEZY0h3i2T7D312CNm+IO6xbiEzARC/UpZoFsU8XfbpRbWLj9Z3C2H7KbHs+0wmu7qZ
	HU8Ui6MELPtDWXoHIpuDT0tC6Acb9efHjWcrsexVCIcyDzDn5sl1ONrj7BjI0ESrLTas9zqFf/Q9X
	AAxlBABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJsCA-004IKt-1O;
	Sun, 31 Dec 2023 09:33:22 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJsC7-004IKW-0j
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 09:33:20 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJsC1-0006qn-2M;
	Sun, 31 Dec 2023 10:33:12 +0100
Date: Sun, 31 Dec 2023 10:33:02 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@kernel.org>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO
 Tx path when QoS is disabled
Message-ID: <20231231103302.04cc37ae@barney>
In-Reply-To: <874jfzutm5.fsf@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
 <20231230045105.91351-4-sergeantsagara@protonmail.com>
 <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net>
 <877ckvwk5v.fsf@protonmail.com>
 <ca357d13-7da9-490f-9e69-4674c6ede057@lwfinger.net>
 <874jfzutm5.fsf@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_013319_287843_98F55B40 
X-CRM114-Status: GOOD (  14.84  )
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
Content-Type: multipart/mixed; boundary="===============0697059883049493747=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0697059883049493747==
Content-Type: multipart/signed; boundary="Sig_/r=5bS5OUpR0X2s9laKNCGGE";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/r=5bS5OUpR0X2s9laKNCGGE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 31 Dec 2023 00:02:32 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> > Unfortunately, it is very difficult to get the parameters for fwcutter =
from an
> > x86 binary. Some of the other architectures are easier. =20
>=20
> Just tried this with the x86 binary just because and ran into extraction
> issues as expected. I could not find other architecture options from
> Broadcom's download page, but I may not have been looking well enough...
>=20
>   =E2=9D=AF b43-fwcutter ./wlc_hybrid.o_shipped
>   Sorry, the input file is either wrong or not supported by b43-fwcutter.
>   This file has an unknown MD5sum 6889dbd24abf8006de5cc6eddd138518.

b43-fwcutter works only on known files. It has a table of hashes of these f=
iles.

But there is a script that can be used to create a hash table entry for a .=
o file:
https://bues.ch/cgit/b43-tools.git/plain/fwcutter/mklist.py

This probably doesn't work on x86 binaries, though.
But maybe by reading the script you can get an idea how this works.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/r=5bS5OUpR0X2s9laKNCGGE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWRNU4ACgkQ9TK+HZCN
iw6dXxAAjoFT8JXQctX2icj9/t4AVoMQ9kgs5Y6Ki2W1B1tiVD/Pdee1QRb2lKiB
zueFBGt7BCJ2jAD29LbgxUYb8BK2KVooAowFKG+m45bsB04PNccp0egbJ5hc62rz
aAV2+4sag0EhAWtEExBt+POZKoRg2f7E7mLsEoe74e4oD+KNxhPy3vgzKOcctWxr
Hecjv6VoDjDlPi5jMZ593tKUk1n9Tvel4zcSb/ThG/bInX9ZuqUCNBFwV9sRCLVH
V4//tDqiBLOLDdJwU0NmEX72t0yiOeIohFvmThVJvEzxx0VKXZgjVuzsjjMQABNg
1Hy1ITPhWcxkztIJGkSUaHBP7bZ+vzNg3PsE8MJ3gVhWa737UlQQNHg9oHO42xJ0
Tlg3Ay5qQpZEI/d5F9RKij7/TJhUBQfTrhsCUFxBg95bPGZmpJBdSdOzo8GY1mo+
5Kh2LTyoWID7X8rObDsoDyx8x2XIIVq0iwMQWyndaA0xC6ga5aIRkl+I3QMhN59z
o35QAviJrpoRSoJZKWM7DuwENnvlCTSmHs1Qe8MLc8eHnoDrkAbacCftdpgjH5ds
Q1kRhI7MLOB5KWBxoBIZD5crVUEBfWBW9uAk6elSA/W3FUoJLvbJqGDeXybu5hSy
fJYSkbGNowtEJVGTeCVCgs9nvy/YZXU0tx0l4nxZ8epZMU1iAx4=
=EDd5
-----END PGP SIGNATURE-----

--Sig_/r=5bS5OUpR0X2s9laKNCGGE--


--===============0697059883049493747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0697059883049493747==--

