Return-Path: <SRS0=OdlP=O2=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1DC7C433FE
	for <b43-dev@archiver.kernel.org>; Wed,  6 Oct 2021 16:15:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A78861130
	for <b43-dev@archiver.kernel.org>; Wed,  6 Oct 2021 16:15:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5A78861130
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bues.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wKAKiy3OXgRd1jhgekXK8TuN0GxZx0g0l/bWYkocZ+g=; b=LUD3iB1AZMEffusEBaB8RHrspl
	8BjQo1oxJ12X0jk24jO6m5U+3ewMQYM2uVZv+pyyUOBEwdoyEjFdumQ05t1z+L5xvVbEx3HXCPBYV
	VHB/xoj8ClAGm7yQLDOoj/YWrOJ8WWNa0xBc1Tcr4Q3MwGpQyhhL0Qxrs/wrBfDwRSBEnm/vyHRxu
	rXSt9NDXsw7TMKIQ+1HEanyTkVtz2ZetM1v5bTOW9PrKCZRgALquY4VOFIWMAtUsxcnj240tpA4eg
	AWbvSIOrZ81trJVb2eFz5bP5QvLBnxTXPc8ugeIxzxYvpcJKGowx3pmQtqPn2J1bZijLxnes30Wn5
	F3EEtKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY9ZI-00ExqK-VL; Wed, 06 Oct 2021 16:14:57 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY9ZD-00Exmw-QH
 for b43-dev@lists.infradead.org; Wed, 06 Oct 2021 16:14:53 +0000
Received: by bues.ch with esmtpsa (Exim 4.92) (envelope-from <m@bues.ch>)
 id 1mY9Z0-0002Y7-VV; Wed, 06 Oct 2021 18:14:39 +0200
Date: Wed, 6 Oct 2021 18:13:58 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo
 <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH 1/2] b43legacy: fix a lower bounds test
Message-ID: <20211006181358.67a23e18@wiggum>
In-Reply-To: <20211006073542.GD8404@kili>
References: <20211006073542.GD8404@kili>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_091451_874737_03CC2C7D 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: multipart/mixed; boundary="===============7794990960836364628=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============7794990960836364628==
Content-Type: multipart/signed; boundary="Sig_/goiVgRssi9A8ba=rcm/gfDw";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/goiVgRssi9A8ba=rcm/gfDw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Oct 2021 10:35:42 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> The problem is that "channel" is an unsigned int, when it's less 5 the
> value of "channel - 5" is not a negative number as one would expect but
> is very high positive value instead.
>=20
> This means that "start" becomes a very high positive value.  The result
> of that is that we never enter the "for (i =3D start; i <=3D end; i++) {"
> loop.  Instead of storing the result from b43legacy_radio_aci_detect()
> it just uses zero.
>=20
> Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy B=
CM43xx devices")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> This fix is correct, but making dead code go live can sometimes expose
> bugs which were previously hiding and is always carries a slight risk.
>=20
>  drivers/net/wireless/broadcom/b43legacy/radio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/broadcom/b43legacy/radio.c b/drivers/ne=
t/wireless/broadcom/b43legacy/radio.c
> index 06891b4f837b..fdf78c10a05c 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/radio.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/radio.c
> @@ -283,7 +283,7 @@ u8 b43legacy_radio_aci_scan(struct b43legacy_wldev *d=
ev)
>  			    & 0x7FFF);
>  	b43legacy_set_all_gains(dev, 3, 8, 1);
> =20
> -	start =3D (channel - 5 > 0) ? channel - 5 : 1;
> +	start =3D (channel > 5) ? channel - 5 : 1;
>  	end =3D (channel + 5 < 14) ? channel + 5 : 13;
> =20
>  	for (i =3D start; i <=3D end; i++) {

Nice finding.

Acked-by: Michael B=C3=BCsch <m@bues.ch>


--=20
Michael

https://bues.ch/

--Sig_/goiVgRssi9A8ba=rcm/gfDw
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmFdy0YACgkQ9TK+HZCN
iw5iWA//Qsq+DuoC10lMYoTH3WkopAMR9mKhwbe5FTZUUe0eWQM3r9a7uGKGKOX2
LW47biXVl/9u0PiUulvLWklyV2Kg6QKCewOLmUHbZB7XBPW0PVf/67KRL3Y4Iz7p
0nZhcOzkv00cyoQ5wIOBcjrrqwK9+u0BgK1VUDRWd8yblOyK8jPTaIEf6x0E1VPT
1Ve7yeETJzioF8xeTCgBoY2SUUGAfZ91C/w5dtctfPkuW8RSHwqFH0553f9QICQS
z9XDBvESlPY7GLzDSXv/TulyRPqK3K+jZA5zuiOlW5XJpXiOax1xdNyq/GwcGpV7
a332WOmx4Q0Edc/183OUpx1xoIHFLQiMfs6kpmkvgoaqWdCdjzF7yTr9xXOcM3S7
YSR3Be18aarCLhGR354xz+Wbvb69IIS7hEwK7lBZwD7u6Jd/KyLU+3k77D69gdzl
y+33iLFxH1pWtsw/wGwZrPH1hl9LUE18s3S4vfKpJ4EqJ20+nIGIPgf2EPGhEaEW
IUnA5es/jscNcYdCTvfffyeKRwyo1NZhJHBslqVqF6InC+MMilFHBZo+2ZA3Swey
NBdDueAsTFF/XAdep9Y32U1l1aiXfUoVROXPFQtGnX1V7qP3Aucx1Kpt9ZPiqk4Y
QI85MyfpA7WDWEYLjBP9APcX2uI29nTHrRsztGJxx+SDycGymWU=
=mGEZ
-----END PGP SIGNATURE-----

--Sig_/goiVgRssi9A8ba=rcm/gfDw--


--===============7794990960836364628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============7794990960836364628==--

