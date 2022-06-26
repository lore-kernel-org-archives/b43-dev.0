Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37241C43334
	for <b43-dev@archiver.kernel.org>; Sun, 26 Jun 2022 11:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+pycSZLjVhDdgfL/p7uS/2AqU+1XbgOTOojocAvNXg=; b=Xw5JmGjDmQ4c7ndmBviLneXfJA
	O8pRmXgZ48ORBHrfgTrZJCiKp/ohWmNwSJf3Er67CVKpOJYjo4Mh3TXGoaMoNC1RrUQLIk0ewl1zd
	QoiTDH6AQ1TcNjmJonHCWVsISX632VaVjBmgoGDHcKkNjHJO+27LzuZySogYNly/Hv78szM5RVpRA
	HsbFXQFrTuNEEeuAOqANpO+Bdw0u6jIJYAgxCgnL3egL6HFC1BJLR4bXiU5UCZ9MBD5Xbvcd7u5oY
	wfkmdVPy+jtakl0Wd9Dd1FFuOqBboeYlW3i+2MtYkbqPANuOw/bS85jzwQHM8mjQAIFj1wGZGC/S+
	OhAwX4YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QIc-00BPqI-48; Sun, 26 Jun 2022 11:19:30 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QIZ-00BPoE-12
	for b43-dev@lists.infradead.org; Sun, 26 Jun 2022 11:19:28 +0000
Received: by bues.ch with esmtpsa (Exim 4.92)
	(envelope-from <m@bues.ch>)
	id 1o5QIF-0002eX-RG; Sun, 26 Jun 2022 13:19:07 +0200
Date: Sun, 26 Jun 2022 13:18:37 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Cc: Praghadeesh T K S <praghadeeshthevendria@gmail.com>, Kalle Valo
 <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, praghadeeshtks@zohomail.in,
 skhan@linuxfoundation.org
Subject: Re: [PATCH] net: wireless/broadcom: fix possible condition with no
 effect
Message-ID: <20220626131837.622a36c5@barney>
In-Reply-To: <458bd8dd-29c2-8029-20f5-f746db57740a@newmedia-net.de>
References: <20220625192902.30050-1-praghadeeshthevendria@gmail.com>
 <458bd8dd-29c2-8029-20f5-f746db57740a@newmedia-net.de>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_041927_105692_995DC101 
X-CRM114-Status: GOOD (  18.05  )
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
Content-Type: multipart/mixed; boundary="===============8770905697686979194=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============8770905697686979194==
Content-Type: multipart/signed; boundary="Sig_/gLIzHQzsO8pBgS_8XdvwdPb";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/gLIzHQzsO8pBgS_8XdvwdPb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 26 Jun 2022 13:03:57 +0200
Sebastian Gottschall <s.gottschall@newmedia-net.de> wrote:

> Am 25.06.2022 um 21:29 schrieb Praghadeesh T K S:
> > Fix a coccinelle warning by removing condition with no possible
> > effect
> >
> > Signed-off-by: Praghadeesh T K S <praghadeeshthevendria@gmail.com>
> > ---
> >   drivers/net/wireless/broadcom/b43/xmit.c | 7 +------
> >   1 file changed, 1 insertion(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/b43/xmit.c
> > b/drivers/net/wireless/broadcom/b43/xmit.c index 7651b1b..667a74b
> > 100644 --- a/drivers/net/wireless/broadcom/b43/xmit.c
> > +++ b/drivers/net/wireless/broadcom/b43/xmit.c
> > @@ -169,12 +169,7 @@ static u16 b43_generate_tx_phy_ctl1(struct
> > b43_wldev *dev, u8 bitrate) const struct b43_phy *phy =3D &dev->phy;
> >   	const struct b43_tx_legacy_rate_phy_ctl_entry *e;
> >   	u16 control =3D 0;
> > -	u16 bw;
> > -
> > -	if (phy->type =3D=3D B43_PHYTYPE_LP)
> > -		bw =3D B43_TXH_PHY1_BW_20;
> > -	else /* FIXME */
> > -		bw =3D B43_TXH_PHY1_BW_20;
> > +	u16 bw =3D B43_TXH_PHY1_BW_20; =20
> Can you check if this is a possible register typo?


I think use of this name was intentional.
The code is marked as being incomplete with /* FIXME */

This change removes the FIXME. Which is bad. It doesn't improve the
code. It reduces code quality by removing the
incompleteness documentation.

Please leave the code as-is.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/gLIzHQzsO8pBgS_8XdvwdPb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmK4QI0ACgkQ9TK+HZCN
iw6qfg//Xz4FgwF/d8Elx8vDBrIjZS+3IeOuZoLP3Ljiz/YHjDRKdcZHG8fcm4c5
zsxT27VyXc466fOKCM+dV7ArdXGdkAPBT+8G3Z0v7EBoBxbj91prW+dc2Oa8mdxH
o6YDR0cqjXT+/3tMO9hasuMoembusnmhMoiWkIm6Lc/s8MzvKPLRVxRqknhNMR1o
wiamTMmM8cUyBcalQWg1rJ0E8WWy7gq0RHb51vaqVpMe+KmfCQLKIm5q4YbOEXb2
ol5dC/RFPeCNgF2zQEJGrqnNPbAVgncsaA21W4D1lLlXNmz0FO+LwVuK5tIK7/5z
oDIBBIcbQsHR15j5fkmpe5ykhJfIs4q7XwauYTvaVwTC/eX+/0jPT3MuKplEEK/m
D6FGvVkvmnzSns/m1DOZB/gpuPZvf0qLi1X+AH4gtxp4PbLRTIgPkS0I7YNpdEju
xjc0IVK6a5LKwrseAZKCkT9EC9zPPkg1gN0VMNlP4H92UT2/CCOeIuDgdJitVkE5
waItsFQpIIvAcnkcYe5BEW4toqkFtD1snbKPHinDDpD6OmwvpQvdILwCmkOFBuQU
0W+F2d0BTcbVvJl8m/Qj9jv43FF5PUu5WsbGN7VKdOnFXFcnsyn+t5166P3tuy1n
wH6UR+MWJ+eo533M8jq9pZdv59A7S+rJlQ115di4Pa4YffWQ8z4=
=dwmE
-----END PGP SIGNATURE-----

--Sig_/gLIzHQzsO8pBgS_8XdvwdPb--


--===============8770905697686979194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8770905697686979194==--

