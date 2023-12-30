Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C68CC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 17:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vnpv3iugjNDjkZvXodDfK8yvBSUO1PyijN3RxNjJpQM=; b=3KVJad35IaR2N9zNDnfkHeq+Zp
	jRX2SqCwHBy2zakWewJ/CtuLgwk3pgbYhw1LfAy06d09efbIpFBvKB/ZKhYzBunAZFTjJsAOk8C+z
	YHm1x5YjqS3C/f+SW9tE/3VCriJLCkL7/t4AdwcRbsuZqskzT46v0JpaE0m+yfz+5xGOhDwLK2j9Z
	ywKBELWRY5hs6v0lVgs6Z3+UixedfsGtuIIXIuP8j6PmuGZaSZIwZzLXr/pc1A2HnP8Lg9IRS/4ss
	wTSwBG9Btz3wYmyyTTd14F+DShFo87kmDTDvyOzhS1EAaOCx+9hA3y5b6syEKbVAmo71f6UZ2jdMQ
	4ZLxf5LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdLT-003E15-1K;
	Sat, 30 Dec 2023 17:41:59 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdLP-003DyM-1V
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 17:41:57 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJdLD-000Fqk-2g;
	Sat, 30 Dec 2023 18:41:42 +0100
Date: Sat, 30 Dec 2023 18:41:13 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Julian Calaby <julian.calaby@gmail.com>, Kalle Valo <kvalo@kernel.org>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 2/5] wifi: b43: Stop/wake correct queue in DMA
 Tx path when QoS is disabled
Message-ID: <20231230184113.3ecfed4f@barney>
In-Reply-To: <878r5bk3x9.fsf@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
	<20231230045105.91351-3-sergeantsagara@protonmail.com>
	<CAGRGNgWYLTmRfvw94Ok_FfcEVGPa0tRg-ELxkD8K6nxTTNZ9jg@mail.gmail.com>
	<20231230144036.7f48b739@barney>
	<878r5bk3x9.fsf@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_094155_502863_63129CB3 
X-CRM114-Status: GOOD (  22.12  )
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
Content-Type: multipart/mixed; boundary="===============5770779512707847788=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============5770779512707847788==
Content-Type: multipart/signed; boundary="Sig_/Uq+rLFv4DO4EPBBI8EmpMES";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/Uq+rLFv4DO4EPBBI8EmpMES
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Dec 2023 17:15:18 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> On Sat, 30 Dec, 2023 14:40:36 +0100 Michael B=C3=BCsch <m@bues.ch> wrote:
> > [[PGP Signed Part:Undecided]]
> > On Sat, 30 Dec 2023 18:48:45 +1100
> > Julian Calaby <julian.calaby@gmail.com> wrote: =20
> >> > --- a/drivers/net/wireless/broadcom/b43/dma.c
> >> > +++ b/drivers/net/wireless/broadcom/b43/dma.c
> >> > @@ -1399,7 +1399,10 @@ int b43_dma_tx(struct b43_wldev *dev, struct =
sk_buff *skb)
> >> >             should_inject_overflow(ring)) {
> >> >                 /* This TX ring is full. */
> >> >                 unsigned int skb_mapping =3D skb_get_queue_mapping(s=
kb);
> >> > -               ieee80211_stop_queue(dev->wl->hw, skb_mapping);
> >> > +               if (dev->qos_enabled)
> >> > +                       ieee80211_stop_queue(dev->wl->hw, skb_mappin=
g);
> >> > +               else
> >> > +                       ieee80211_stop_queue(dev->wl->hw, 0);   =20
> >>=20
> >> Would this be a little cleaner if we only look up the queue mapping if
> >> QOS is enabled? I.e. =20
> >
> > No. It would break the other uses of skb_mapping.
> >
> > But I am wondering why skb_mapping is non-zero in the first place.
> > I think the actual bug might be somewhere else. =20
>=20
> Right, skb_mapping is used to map to the correct software structures DMA
> mapped to the device. The reason the mapping for the best effort queue
> (the default/defacto when QoS is disabled) is not zero is due to the way
> initialization of the queues/rings occurs in the driver. The best effort
> queue is mapped as the third queue, which leads to this issue when QoS
> is disabled. Would it make more sense to change the mappings in
> initialization such that the best effort queue is by default mapped to
> zero, so we would not need such conditionals?

Maybe it is a good idea to find the patch that broke non-QoS.
That possibly helps to understand the situation.

Non-QoS used to work just fine.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/Uq+rLFv4DO4EPBBI8EmpMES
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWQVjkACgkQ9TK+HZCN
iw49Pw/+OSp4u8E/XFogM6vVJaqKJw9sYD9qgkn04hS8cv7d5h3WGups0qQiTyzk
OgcjjycPyt3vOkm7Lg4GcN6x6PApkgIBnLsA6VDs3kHAT/1z2OX/D9noghgABXik
S9puZtr1M6DnuqJgVNNRGrIlo0yikCURKsvxYFHHenv82NL1QNbZcxtTcpjKfqGL
T7MUn2kq3sc1aUt25WXpI268fpQFc09H7PpgIyKJODLEnG59ksjpKKSegMjnF1sq
CW5r9GEoKOAuLV0W0QFJmFikvez0hHfPTMDZ81iTsrbJ2Q/n3q+4lxi8zqzA1I+N
MTH+amHfEqqgFnaS18bD+Fr1pKgncC5WiUq75Sf178CbTpJs2dbPVPcWyQ77JlfM
D0X+9SxZ+pD8aUY5noEdPIxTUG0FpQPa0JdbmsnPacjEgftXoKYiiIKBGIiukXGl
uTQ2VjpE9inmCkBH2xdtM20EKon7MQ9hC1ex1W94QJKeJKJS8Zw4vPxWTMRd1ALv
gnMUXavjLZ8PkxJSNCFFi9fFCRmQ8ulDeIRlrNp+lVGYS2A0BkeiDqveYwhXM9lz
fzSki2tiOE36XJsYRi56xN0nuDKqioCqkRve5xm8ay5oK3ERV2N97W3QXz+enQCm
S3ZGBw0G6vosvXpJy4P4jjE18Ea2789IFCUDDSSSeW4EYhp61to=
=fL9U
-----END PGP SIGNATURE-----

--Sig_/Uq+rLFv4DO4EPBBI8EmpMES--


--===============5770779512707847788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5770779512707847788==--

