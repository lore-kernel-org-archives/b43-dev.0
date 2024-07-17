Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC16C3DA62
	for <b43-dev@archiver.kernel.org>; Wed, 17 Jul 2024 17:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LY87/D0Hw1fwo6620iq3Mt171JC1o+yEKXV69DhWAUc=; b=gCDonBcJya16aSozVOiUyciF1V
	le6USJjn21/elYroA6sAG1M0I+9mzXnfP807Ts1Z7CK2S+R60TrHZulm12GpGHZtV3jd8zqSsRyKT
	9LmQTmJn3YHvI8IiWfBhbhseObIRG2sBaql4RmrK068DgtUnLgN80Oxks4AXBe6ylMtfSqoYmQIuI
	3ayUkJ1880HbE8yb5kwe3nucUc/LuvmSMxKHtND72ivXh9o8+wrGakUlcoQBGp39Rcv66yagdHqZt
	U6EcWfZKZJOIUkHWPTKHBhd63lwW40PUPR5jrMIFSGzSkKGzKqDXuQJUMC3F/T1W4PPDaVJI5kaDG
	dhWJc6iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU8vM-0000000EYAV-0hsG;
	Wed, 17 Jul 2024 17:58:44 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU8v3-0000000EY8m-3iQO
	for b43-dev@lists.infradead.org;
	Wed, 17 Jul 2024 17:58:43 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1sU8um-0007OE-25;
	Wed, 17 Jul 2024 19:58:06 +0200
Date: Wed, 17 Jul 2024 19:57:43 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Kalle Valo <kvalo@kernel.org>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
Subject: Re: [PATCH] wifi: b43: Constify struct lpphy_tx_gain_table_entry
Message-ID: <20240717195743.31bdb01d@barney>
In-Reply-To: <38528f48c8069187823b774a6b2a53088f6c9599.1721161231.git.christophe.jaillet@wanadoo.fr>
References: <38528f48c8069187823b774a6b2a53088f6c9599.1721161231.git.christophe.jaillet@wanadoo.fr>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_105825_942206_5EF2F24E 
X-CRM114-Status: GOOD (  10.03  )
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
Content-Type: multipart/mixed; boundary="===============5431683004458695361=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============5431683004458695361==
Content-Type: multipart/signed; boundary="Sig_/_1L7b6zKYTmbBsNJwFixW/C";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/_1L7b6zKYTmbBsNJwFixW/C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 16 Jul 2024 22:21:13 +0200
Christophe JAILLET <christophe.jaillet@wanadoo.fr> wrote:

>  static void lpphy_rev0_1_write_gain_table(struct b43_wldev *dev, int off=
set,
> -				struct lpphy_tx_gain_table_entry data)
> +				const struct lpphy_tx_gain_table_entry data)
>  {
>  	u32 tmp;
> =20
> @@ -2356,7 +2356,7 @@ static void lpphy_rev0_1_write_gain_table(struct b4=
3_wldev *dev, int offset,
>  }
> =20
>  static void lpphy_rev2plus_write_gain_table(struct b43_wldev *dev, int o=
ffset,
> -				struct lpphy_tx_gain_table_entry data)
> +				const struct lpphy_tx_gain_table_entry data)
>  {
>  	u32 tmp;
> =20
> @@ -2383,7 +2383,7 @@ static void lpphy_rev2plus_write_gain_table(struct =
b43_wldev *dev, int offset,
>  }
> =20
>  void lpphy_write_gain_table(struct b43_wldev *dev, int offset,
> -			    struct lpphy_tx_gain_table_entry data)
> +			    const struct lpphy_tx_gain_table_entry data)
>  {
>  	if (dev->phy.rev >=3D 2)
>  		lpphy_rev2plus_write_gain_table(dev, offset, data);
> @@ -2392,7 +2392,7 @@ void lpphy_write_gain_table(struct b43_wldev *dev, =
int offset,
>  }

These three changes look like they are not necessary.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/_1L7b6zKYTmbBsNJwFixW/C
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmaYBhcACgkQ9TK+HZCN
iw5bBxAArMV5z7DK4ihRk2DaDq4XdBhLERO3rXRBSQthMrWcbAq7Iqzyd/dPLKzF
NkDVf5Ids2daRDsmZIczjXb8L6IrGnkfrEvZ8x/No4OchgV9osiellRq1yVOOZCx
z7wvlylhgupjCkJ2tT4dZS4uKWlqRj6kh7eo+p48xgH4sxfHXpAWSTd9PtJIbJe0
I2a8QGgwLXzxKePsnpdt+OeH/UoFblhKtPvBYoBqzc4wl3FCQ4stZS+o0gumRakw
bZNP06PapMtVW/+fjby+iD8/21XQIEQoSCmeGizKYkiKhO6eXK9DxO7ETeVEO/y/
1lrvKf0dRh1MzgMq53LP1/XpLc3Cd71et7z8xwYCDI/mZuCfU7bhVEGRVNll2Y3V
Y7XQaz4WqdNeVQc9fctLr09rwB2o5Y3XNi/7pZ8phVTmKEUBgTH/Uaj83hoTDHwd
2c1OGKXhrMXMre4GFjyxREA7PhWovAkJmSxGmeaQk98yOZTuKGkFW8glq2l/6wYs
avXU/aGcAtF/+7/a56Hu3M1SSau7S1NlKiWM88wX/guHfzmY6bQE9YsjVOkkyoao
h/gADABg2SZsXoYXyvxV0KVGaXj5dXiLXhZ9agLBYKMG/yCE4NyvNgbE1VMjT89p
VKFSAFnXj/kzSfgi+2wLt2kZKZVa011PxsFerUVhFNGnUdFrEe8=
=J7sR
-----END PGP SIGNATURE-----

--Sig_/_1L7b6zKYTmbBsNJwFixW/C--


--===============5431683004458695361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5431683004458695361==--

