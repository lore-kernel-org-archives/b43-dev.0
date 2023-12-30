Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C44C46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 13:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DUTchL461kxMbw7FrTfh0Ghv+rsV+9d1ce40xgYstLc=; b=xVQE6/S8T/l2+rpcmW+t66i6sR
	PfJByaFLkuHvlVkwv3NyNKEuc1Mt7OKnSdf6On3L3V90NNa6YnZ/RTG/6+S3FpndRIGze/ooV/lJ5
	kqKoji1L8IxctZHtFMtUPEoTS29WNWp2dsnq/8tKU8fRlnLQ7+IH2ONdIJTiI8zua5HfMOBoPTzEQ
	iTweQ3RpdXfy0vPnFS4SCj3xIxgFFEoqLsujltEhpBW9y+Tj0plnsIANE1L5b2S3jxf6bSgRM3tK4
	UcfzS//D5qlGN0N5IT89Zgqcw5/7nEeyZnsv3BIcFJVv2d2lNJ9c7ZCl7Cel0qByGXJMItvkSbp5D
	okFNaTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZaQ-002r6J-0v;
	Sat, 30 Dec 2023 13:41:10 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZaN-002r5n-0R
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 13:41:08 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJZaI-000BEm-05;
	Sat, 30 Dec 2023 14:41:01 +0100
Date: Sat, 30 Dec 2023 14:40:36 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Julian Calaby <julian.calaby@gmail.com>
Cc: Rahul Rameshbabu <sergeantsagara@protonmail.com>, Kalle Valo
 <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 2/5] wifi: b43: Stop/wake correct queue in DMA
 Tx path when QoS is disabled
Message-ID: <20231230144036.7f48b739@barney>
In-Reply-To: <CAGRGNgWYLTmRfvw94Ok_FfcEVGPa0tRg-ELxkD8K6nxTTNZ9jg@mail.gmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
	<20231230045105.91351-3-sergeantsagara@protonmail.com>
	<CAGRGNgWYLTmRfvw94Ok_FfcEVGPa0tRg-ELxkD8K6nxTTNZ9jg@mail.gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_054107_198501_9A86A05F 
X-CRM114-Status: GOOD (  12.18  )
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
Content-Type: multipart/mixed; boundary="===============7499530923351750172=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============7499530923351750172==
Content-Type: multipart/signed; boundary="Sig_/TCfuXrtMG=ku6EJFF1A=u3k";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/TCfuXrtMG=ku6EJFF1A=u3k
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Dec 2023 18:48:45 +1100
Julian Calaby <julian.calaby@gmail.com> wrote:
> > --- a/drivers/net/wireless/broadcom/b43/dma.c
> > +++ b/drivers/net/wireless/broadcom/b43/dma.c
> > @@ -1399,7 +1399,10 @@ int b43_dma_tx(struct b43_wldev *dev, struct sk_=
buff *skb)
> >             should_inject_overflow(ring)) {
> >                 /* This TX ring is full. */
> >                 unsigned int skb_mapping =3D skb_get_queue_mapping(skb);
> > -               ieee80211_stop_queue(dev->wl->hw, skb_mapping);
> > +               if (dev->qos_enabled)
> > +                       ieee80211_stop_queue(dev->wl->hw, skb_mapping);
> > +               else
> > +                       ieee80211_stop_queue(dev->wl->hw, 0); =20
>=20
> Would this be a little cleaner if we only look up the queue mapping if
> QOS is enabled? I.e.

No. It would break the other uses of skb_mapping.

But I am wondering why skb_mapping is non-zero in the first place.
I think the actual bug might be somewhere else.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/TCfuXrtMG=ku6EJFF1A=u3k
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWQHdQACgkQ9TK+HZCN
iw4Dgw//UdhkJsEMI+LxdCItWs0laiTytoyk135y6K81oXnImGPWuN51vh99z/Fd
s5cjPp0e8IJ27FzDxzyM+0mo0+uqUPqPE1nO6VM4vgt0wgVl+iA6ulkbk3Xr0LkI
4CoIk0GZZkFsuubT6yF71gSImSvSoIFP/GJMOlWrjecGAOtRbvpi1o6rIcRYQTLn
MQ6kHNASJbhbbNJd5/XCOro27YdO2OkKRq3xs4YOfd6bV567j71SPEQN8f5I6/UZ
uiAd6MhP6noVsXepzz/QA4exUAW9RhPHwVmh6QHnbEoXfHWM+lSrvlv/fcmtbh7o
Pfxg9df9lftT+2WMSfcpr3rks7d/idx9XqPA1T5ndDB7vdP4qLofzzgXG3Ig0KUH
tu0SomIfu4xOemEfPTIFIL1EGPOdsNYWcL4yX2GMZuti9dtfw0jf6d31qa08IfoC
OEqIx2+WbluTwFaeGwPw2/xmtA7q8wK2dgeN0feNDSZHPN1/PrYyL9tvjuZCkIR/
LCs9HFMwVb5HwNvIvCY1sAFIzIsup7XhZVfPRi0d/qYA66mlXG4mWFpQMC1ko/Ze
43oahhSLaShjrmYPJ0ZN/fAmyJo94mMshrqtbtFGqsR17ue7zsfbLpjT4IVmsCv0
ShKV2hWciHCKo5xxoe6GD9PfRhC3bnnIb81aY5ks2tPx8+RvPHo=
=5i0z
-----END PGP SIGNATURE-----

--Sig_/TCfuXrtMG=ku6EJFF1A=u3k--


--===============7499530923351750172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============7499530923351750172==--

