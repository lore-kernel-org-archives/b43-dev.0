Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93537F8D763
	for <b43-dev@archiver.kernel.org>; Thu, 16 Apr 2026 16:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bemsMpECeWoH7Shh6KwewhsAAwRfBxQ6KnnKjqr89Qo=; b=1PZ29xHZXgVKiYX5LkQiywH+AI
	Ng6auiTMEuhH2/n4OzQK35fp0XeSTHPTe0JIXkQsCyvMuiZ9pORiwaSj/r4kDiRy97XL1rD5edC1P
	4tNaHFFBKoUe2QHElIRuQSoCZwdGFCgsS4JzB3Ye70K+W1gGvmJZ8m4wJVLblLsTfMh6Z+bWwd5Br
	lGWXQ0v/CuWzeAeSAWDSk2WR8qWu7tHNost48uAeRPeK8GdCpi6KfFHuzV2Mh92v1yqoJkq6kCk2W
	w3BKiyZVOmCJP0HcqTa0YauCw1Y2d6RwlVVKFec8Q6z4stsVN6Saxg3JfWkFIWhsqPe0b/PIR9FJb
	AndBej1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDPhf-00000002fkA-1JlM;
	Thu, 16 Apr 2026 16:36:31 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDPhX-00000002fis-3NxQ
	for b43-dev@lists.infradead.org;
	Thu, 16 Apr 2026 16:36:25 +0000
Date: Thu, 16 Apr 2026 18:35:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1776357377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=q3CDEh1VgXgv3KOhGWKV0nNIAi6Fa7Zf71mDyzP+GSk=;
	b=lRa3qkpRGG4ugG7ZRqg+lHrvlF84X+IXDvAFPnvgIJ1yOxEkGz01f8/4Qvv1HkbdU0PvoQ
	3LSvx1Y/Av0nSL8537YMz7pbEacBmMspL8dgerZuKlvMDUrxbBLv+mTMLdh/b2jxCDbkro
	5jTE1pCKtQMeW/Tf21GeZScz5aDA9fAdCYRkov7Jz8MoOI4s7KIjpcrWa7SkXf6v6QxRxa
	vj+gXEb9STgVsAZPQ+PQvt6rFM0J+ZrIrptmf5MlXn4tYSl4oFmHsTYxIHxEOEfhQ1fzSQ
	Uk7QrwqbHGbAf6HKEVfe2aw4lefkEpfKa7znHds0yFMQhuwCn6YYmFQ4jW1axA==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Jonas Gorski <jonas.gorski@gmail.com>
Cc: Tristan Madani <tristmd@gmail.com>, Johannes Berg
 <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] wifi: b43: fix OOB read from hardware key index
 in b43_rx()
Message-ID: <20260416183554.7add6b06@barney>
In-Reply-To: <CAOiHx=kpVH3jq_XuDKp==13yNx1AMcvVaRe4R2-bScOo5otMaA@mail.gmail.com>
References: <20260415222425.1544638-1-tristmd@gmail.com>
	<20260415222425.1544638-3-tristmd@gmail.com>
	<CAOiHx=kpVH3jq_XuDKp==13yNx1AMcvVaRe4R2-bScOo5otMaA@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_093624_034361_CB2DED09 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Type: multipart/mixed; boundary="===============0901829195834179257=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0901829195834179257==
Content-Type: multipart/signed; boundary="Sig_//0vg=Mq815_JCc8zFztXnZk";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_//0vg=Mq815_JCc8zFztXnZk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 16 Apr 2026 08:34:11 +0200
Jonas Gorski <jonas.gorski@gmail.com> wrote:
> > diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wir=
eless/broadcom/b43/xmit.c
> > index XXXXXXX..XXXXXXX 100644
> > --- a/drivers/net/wireless/broadcom/b43/xmit.c
> > +++ b/drivers/net/wireless/broadcom/b43/xmit.c
> > @@ -704,7 +704,10 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff =
*skb, const void *_rxhdr)
> >                  */
> >                 keyidx =3D b43_kidx_to_raw(dev, keyidx);
> > -               B43_WARN_ON(keyidx >=3D ARRAY_SIZE(dev->key));
> > +               if (keyidx >=3D ARRAY_SIZE(dev->key)) {
> > +                       b43dbg(dev->wl, "RX: invalid key index %u\n", k=
eyidx);
> > +                       goto drop;
> > +               } =20
>=20
> B43_WARN_ON() returns the condition's result, so if you keep it you
> can shorten this to
>=20
> if (B43_WARN_ON(keyidx >=3D ARRAY_SIZE(dev->key)))
>         goto drop;

Acked-by: Michael B=C3=BCsch <m@bues.ch>

Please also check the b43legacy driver. It may contain exactly the same cod=
e.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_//0vg=Mq815_JCc8zFztXnZk
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmnhD+oACgkQ9TK+HZCN
iw4+gA/9Ff2iU8x3O005D+JjdnNz/4hJt9UxhdmH+177BDDCD9R4F7nsEKqynN+1
cecA+FYiPkR8LeaesdIjK9FiI3mVilHKPEBNJzRRzCld+mvkOQXQBJ+ElshKXVZW
oc1g5tBlIs16vZjzdBnSagJNrkwV1jKxLwvSjgGdIGhh15nIGZkBO+ZydIpSEUUY
/83voqDUPsQuLx8OyQpuf6ehmpe//vuTBN79CuNhFN/V6Aja96Lz10LgzfmUYaW4
Wti6/HL83pEeWaBGbFJMOFisgJrHbbsJlZphKRI/FqV7+Mj0Mr7euRmg+jE3W5Tu
lzC13gB3FKIy0Mqq8gwwDVrQllHZ9bvkWBAcXy6mWoc7rZrRqB08pR6F+Sfnsrrc
7nvk7q+2RknOPOr6vMNnu4wksXsMoL99UGN8u7ux6Wb7hGmuPO7dLveyUe6yzWdc
0nv9YBjOH64sItAfDIovpX4meEU32uvP/BDk9cMl7QcyuCTzg1Mkh9c6ksBP9b/z
+eYdx7H+qeopuEZ+o4PymRV2uoMzryQKTFaEP1icjBPgwVCMD4KrPslPopb2yase
99k04lggNYkCnrH6QF4+gIEBSwj24Bt8sveFcnOCb94vEakXLWLN313ZOjhhC8a2
mV6IQq6EwQJcy+LE+mHd+Ew6HkFFCg9TXvvvm7+rA/4bYj1PKaE=
=0xKO
-----END PGP SIGNATURE-----

--Sig_//0vg=Mq815_JCc8zFztXnZk--


--===============0901829195834179257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0901829195834179257==--

