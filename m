Return-Path: <SRS0=OdlP=O2=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1D87C433EF
	for <b43-dev@archiver.kernel.org>; Wed,  6 Oct 2021 16:15:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B14261166
	for <b43-dev@archiver.kernel.org>; Wed,  6 Oct 2021 16:15:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5B14261166
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bues.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GWbbp6veyj67oWNO2O5we5FXj8pFpZupfMrJrDamhW4=; b=gHgj86DMOvWfH6ZvTAPzLKWpVM
	NYRPXEmcdyUZlmVhMnncMtIbgzicXtCqjiTgRJYSeFmkBE7ihLwe2tl0A/yvSnnAygwWIAmGsPt4c
	3T8g5PG4FL/x6T2hs/O01mwXt+SdEUdqfyfRyg6rv8KpQ4miWx28J73kOz0Rgf+Hc3OfxDJGJTJ4w
	DiROZybXEWxKhLNnT3sRUNfPqfbx4RZPZ1f/JF+4A/cO70XOU7F3MI7e26izyogj28slZR9IFRJSP
	EItGfBvi+xgudkVyqgWUPpbnQUHMvafyzE/RwA+Rjyu+dnSnHNdypaSV2u88Qbryd9A4JXtG8fZiy
	ngQMmPDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY9ZG-00Expr-9a; Wed, 06 Oct 2021 16:14:54 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY9ZD-00Exn7-7B
 for b43-dev@lists.infradead.org; Wed, 06 Oct 2021 16:14:52 +0000
Received: by bues.ch with esmtpsa (Exim 4.92) (envelope-from <m@bues.ch>)
 id 1mY9Z1-0002Y7-Es; Wed, 06 Oct 2021 18:14:39 +0200
Date: Wed, 6 Oct 2021 18:13:34 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Subject: Re: [PATCH 2/2] b43: fix a lower bounds test
Message-ID: <20211006181334.621ac10c@wiggum>
In-Reply-To: <20211006073621.GE8404@kili>
References: <20211006073542.GD8404@kili>
	<20211006073621.GE8404@kili>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_091451_292222_238202EA 
X-CRM114-Status: GOOD (  17.84  )
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
Content-Type: multipart/mixed; boundary="===============3722356132380843427=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============3722356132380843427==
Content-Type: multipart/signed; boundary="Sig_/QqtpiT/CB7f5fqDpH1ja61U";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/QqtpiT/CB7f5fqDpH1ja61U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Oct 2021 10:36:22 +0300
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
> Fixes: ef1a628d83fc ("b43: Implement dynamic PHY API")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_g.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/broadcom/b43/phy_g.c b/drivers/net/wire=
less/broadcom/b43/phy_g.c
> index d5a1a5c58236..ac72ca39e409 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_g.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_g.c
> @@ -2297,7 +2297,7 @@ static u8 b43_gphy_aci_scan(struct b43_wldev *dev)
>  	b43_phy_mask(dev, B43_PHY_G_CRS, 0x7FFF);
>  	b43_set_all_gains(dev, 3, 8, 1);
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

--Sig_/QqtpiT/CB7f5fqDpH1ja61U
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmFdyy4ACgkQ9TK+HZCN
iw4crQ//YkcAD+VIJxm2yzxA85cp8FKUG68UeFSuTudaxcEmwNxvgoM29sYjEk0C
zT2gP0KOGrJ5WcjSEVeHs0x8MNJ0mjby9YYGJ30ggM4Mz/jWABF9SckOs4Vou2XA
ssWJGPu9Qp44BbQrrJpds81piTlEjPtBuzAusYN58NfnHnI3jSOT+gPw59sQ17Re
X7qRCRdNkTejmyE7FtZ19/r0zHhtxJ/cVeSewYRrPdrXr7mIMbXIQeQffRczoGER
4ntZUyHSOTamVrwDNr6X1sg7+p2jYwN2PmQyhH53NYQZcdHEhWcPa9iFBIdBCUyb
CXRVP+uZ1nmQ/muZ+tf85Wbm651RN8B20y3eoABozHOVST0wZAs0t5Ql7H1CJsWh
3160MN9nzRG2rCuuXq5MIHzHv8QvPEIH5oev2lzBzH+O4iAjY6J07SKc1ajJtvlt
fsfw3WsenslRrUE33js3mM3M8ZMxG0uV8QGbDsIY+xQo6zumN2hja5qaonYnUpkt
ZRZM2kA+qTkNvsq0ZaRwiGQnCPpPGT5GCPsZ61woeL1NLPlAq1/nNsPG9skP38Om
3FiwBuz7jbawgO+FOeizDmC1/rz2shzcQ1MLsHa2AvIYPQF9Zmg8VoNpCIBwddgo
s6GbKK+1Mt0MOprjl8vAh7IaP02JYtecWFN0E5r9L5gGLqHRP5g=
=o5Qg
-----END PGP SIGNATURE-----

--Sig_/QqtpiT/CB7f5fqDpH1ja61U--


--===============3722356132380843427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3722356132380843427==--

