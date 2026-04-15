Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02313F4384E
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 15:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y9eGAvGUu50HgG0FwZwEhMJc9CjiO2SpEFI/DdWs1/Q=; b=KOAkZC9uwBs314TNNkqHnD21TV
	W4tdcsOxPbN09QDRov0jC4V8XnjX+buMwFvZlitnhcCfQ+jTuHYL/649GMA/6txFcXUYSC3hyl4v6
	JduHl9I0t4A8Qf7OmpMQHqh5wjT6K4L0eDJEYAoFgXBWmKx++NsYFWt2gkqFIlkVc3cHPTbF6XBye
	VEcQc8YXHb2ljgWAMKOdCCmWpgi+2pfkok4VRGs6LvWUl/hjfop9LxV6CTBzBuyg18+EBtKZttoVI
	QfAZshL171PelQjoj19Ly6YMZ1o6pJfJPb1cSLxIzaIptOdqYFtc5MFZ7gTq+mE0MSRqYMos5dQdY
	0+VhcV0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD2d8-00000001M4I-2BvL;
	Wed, 15 Apr 2026 15:58:18 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD2d6-00000001M3w-1pFp
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 15:58:17 +0000
Date: Wed, 15 Apr 2026 17:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1776268691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=J/J/rHcH80SrKxja8htcH+s0y97ceMSk5zZnzhnKpkI=;
	b=BN5wFWY3B9u47kWoWHKih/s7VQ1i5WIU8pZ6Qpup8hBLQx6+nq7T8QqdRDu8mlVBPYhTOP
	gyb7RwMuvYPlE4Vt4ue745CpKycVYC8lq4n2O8IHH2xPqi73w6Fx7YNfAxL+uRwbNcFXVe
	pTQfaG1fYNVcFq3qsPYDamF4S//GBLmxrYpWfr6/05kuXL6pX4egpwSfXpyBiq2P2dNJKb
	rWs8DhCXx6qy7WXcBW/leVRuyhpBJGYdbeiON39Og+88BHBpns+iHfKxBbMCWm101NNJSS
	1W7BFuoFhP2ABQtFaZAIEyBYpwLhq+mOoMxpOqrXbJ4EyX6RPv9AMYr8xFQuQg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Jonas Gorski <jonas.gorski@gmail.com>
Subject: Re: Firmware for reverse engineering b43?
Message-ID: <20260415175748.61aa7993@barney>
In-Reply-To: <CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
 <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
 <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
 <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
 <CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_085816_672660_93B49353 
X-CRM114-Status: GOOD (  25.54  )
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
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8454131688624629010=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============8454131688624629010==
Content-Type: multipart/signed; boundary="Sig_/lPMAN2dntsU+fJbqlNm7P6y";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/lPMAN2dntsU+fJbqlNm7P6y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 15 Apr 2026 13:54:31 +0200
Jonas Gorski <jonas.gorski@gmail.com> wrote:

> On Wed, Apr 15, 2026 at 1:44=E2=80=AFPM Joshua Peisach <jpeisach@ubuntu.c=
om> wrote:
> > It does appear to be similar - even the current brcm80211. So much so
> > that I sometimes need to think about whether b43 is actually a
> > duplicated driver.
> >
> > Since b43 is in an orphan state, I thought it would be a great place to
> > start for kernel development. 5G doesn't work on that iMac, some of the
> > PHYs, like the AC PHYs appear to be incomplete - it felt reasonable.
> >
> > Because I'm one of those "there's always room for improvement people",
> > I was going to try to improve the driver, filling out TODOs, fixing
> > hardcoded register numbers, etc. But if it's best left alone.. then I
> > guess we can do that.
> >
> > That is, assuming b43 is actually supposed to be a separate driver,
> > because if brcmsmac basically has the same code, then maybe we should
> > focus to centralizing everything? But then there's b43legacy.. hm... =20
>=20
> It is/was intentionally a separate driver: Broadcom didn't want to
> maintain support for obsolete chips (anything SSB, anything older than
> BCM43224), so the decision was to have b43 support all the "legacy"
> chips, while brcm80211 supports everything never. Since they were both
> based on the same driver, they are (more or less) the same
> architecture.
>=20
> But now that Broadcom has essentially abandoned the softmac part of
> brcm80211 since several years, I don't think there would be many
> objections on unifying it with b43.

The hardest part in the b43 development always was not to break already
working stuff. There are many different types and revisions of the hardware
out there. Probably in the order of many dozens of variants.

Please keep in mind that changing code means mostly testing.
Which is hard, if you don't have the hardware variants and basically no
users exist anymore. Just implementing random TODOs and missing pieces
will break things. (e.g. not doing some HW calibration or workaround might
be better than only partially doing it or doing it wrong).

I would personally not touch this thing anymore, except for security fixes =
and such.

But if you want to work on the code, long term, I would welcome that.
We could even arrange that I ship you some hardware.
But keep in mind, it's all almost 20 years old legacy stuff.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/lPMAN2dntsU+fJbqlNm7P6y
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmnftXwACgkQ9TK+HZCN
iw74gRAAtog6Qh+8376tiB6lfcrpQCa5Y8kjAKSUuHYWJdoK5d9tDZz2G10FuBCx
IjjGrYd2FRHyhA9RFHe4XpLdcAwNUhUs2Z6cuaYhE0VkasowyfNEhsBEWfOeW/a+
llN4zzD1m/A2tPkylqderJt1Fere/y7glhyNDGeCz761ljQKIRwXed6MYfsbHoc7
GF/FDLizkWcdoPlIgInPeqwzA8kHe541lm5sUaQVNKJshLItFY9OGGAYKvm6zO1i
geSxjctnDcRo9XUYANplQBZ9eB7su7GqNmdVacbNOeiie61bWsMpXapuqDSK95aV
nR2ZvCUysPMUVbZrQW9+p+sknongYrk0kY557zdrTzxaWwRzZeCTbqLZLm3FygPt
JwO1mA4vUYa6mNLbuFo0A0YwmnosX43VXW1FBhNB8uWFUF1QUQbo1jKj5N/KFh5v
jXkfyp4OTSMfde5629q3Q5BSrGydMsp2vqtWq2Ql2yIdWnmayF3ZNbDZt1WgsTRn
dLmJLwuP2pc+o/0tL3VjcNsriqMNmShSX96poPckJhK+ikL7V83pXHRgIYN/XgjD
OUkjT0mZe6qh3hylszcW6028ekH+/NyaYLPtzr0GLVstLmChTxQm9st0bnmkMw7T
cIjVFemphPEq4tpu1Ww3RMwe54uGkKgUygL5Ok9uVk5idxGkN64=
=kr47
-----END PGP SIGNATURE-----

--Sig_/lPMAN2dntsU+fJbqlNm7P6y--


--===============8454131688624629010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8454131688624629010==--

