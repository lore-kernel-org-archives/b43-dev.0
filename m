Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEABCC55ABF
	for <b43-dev@archiver.kernel.org>; Thu,  6 Aug 2026 12:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cH+9AfcFiepyU6hcfwuNR37yI747jD0NOywb78HQ0CY=; b=DCav32/i5VjnPFp3H8Ggtv3Pou
	w2xVSp+E0grh9oGF2jJEI1u9Px2Xnx9exdVtzSMW1/iIACCd/yFV7kedh9+HqJJ+2Gs2Q6767S8jL
	2pTL6f/M9ctiEQRA7mAve5hP6YEWlgNLE8hSXKrOa8GzbXiw1daDa8Gm/7b9jbFn3v9tva1lpHADP
	3mcoPcaJEF4hpvsH1rcXI5ZhfHWyLZmis18l0VSyvWOf4xkM/a++2CM/zxPXj0A2tWu21+V4lSOti
	QQ3fpiWYC5bhrMo0b74GF8t1M6zyoIFDd9A46eMiMJQo8E+btNomlKcYMncA7Au0sesXpHalFbeur
	Ml4Y3eBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxKB-00000005nky-1pi4;
	Thu, 06 Aug 2026 12:35:51 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxK8-00000005nk4-1bu9
	for b43-dev@lists.infradead.org;
	Thu, 06 Aug 2026 12:35:50 +0000
Date: Thu, 6 Aug 2026 14:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1786019743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gh8qYDw9jbdJL2uu/+yf6ldgamPP3/84xm8uuD3RjEg=;
	b=EMjjTtK4vI1FSqoNDu3by+zmA8noF4Lmfqs8SfhJUboa/aT5HlF2uPSGAuV0FXNk4ipeTM
	nXHBqxrY7/ZnacRA3c1XeqckKYGyfRubkSLr7jw3DGM/ruBc1zWBC/cM6JVJWyyOWaFcGf
	tqKxC+9zD7eTv9dmyf//eZSgdiJwyiC/Ezu7o7mnEcUCiBhyJX/Jw0k6EB/+F4C4WCAJyk
	rjPqwq17TnrgqHiJlBsuVZjQQGtTdzW7BpkzeZqNyybBS3peSBiSdcfCkpQ+48rshb6fIB
	h6XzqY1gSp9hOHCckdzmGGo6lwWHn+nFA+ag1c92RwpsNHUbgf+qyW8lcBEXww==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Alessio Ferri <alessio.ferri@mythread.it>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: Re: b43: multiple parens bugs and double CORDIC_FIXED
Message-ID: <20260806143446.397b3f7d@barney>
In-Reply-To: <20260806104802.147ff076@DELL-MOBILE03.ad.smart.it>
References: <20260806104802.147ff076@DELL-MOBILE03.ad.smart.it>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_053548_608956_37A647B5 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============0064255669218422752=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0064255669218422752==
Content-Type: multipart/signed; boundary="Sig_/xM/0pmNqu5+3uZQy=etzJXO";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/xM/0pmNqu5+3uZQy=etzJXO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Aug 2026 10:48:02 +0200
Alessio Ferri <alessio.ferri@mythread.it> wrote:

> I developed a tool to capture io traces of proprietary wl driver by
> hooking on its io accessors and then started to check mainline against
> the captured trace, i already spotted 3 bugs:

> I'll send patches in a few days once i verified them on hardware, do
> you see any problems with the capture & compare approach?

Great. Nice findings.
Please feel free to proceed with testing and sending patches.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/xM/0pmNqu5+3uZQy=etzJXO
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmp0f2cACgkQ9TK+HZCN
iw5R3xAAyAKjRp0q50gHx79Xb0xLVRpTQyPK3w6xjbIL2FW967N5GKjgWlqlfFOP
RhtrDQwPr6yTGMpuCSnPrrqtyMAxkFNDAWGvMCp70oiEuKJV8StUI+T9WyTcIdd+
4aBQAsJWYKR4E6f5mU+n6apG0LsUxJ5/LaASiZdLEk81u+zxeWPsVMscmzfkAXEp
1TpoSeJQMgyWjx8HBVR/MBnS4DmMdkGpbuz6fQli3Ccntl3tbxHx5Czhfo0R+jmH
9M5WIINZNf7uqE/ycmt6fSS2ut5+dlRfK3M28X9L+2pcVDT0WeoWjt4W5GmV8wd4
gPgwVnWHPAwkoWPEwI/abXDpZUki6nf6MiIqB6k4vjH4mvenC4DdBmK58dBEYSFe
aaFcX8JydgOUGsItVFAQBy/ekgWRtgiEq+z/zsBiaKcysaEdOUWxWFB5fxpZJQ4M
49MdFt39R3tdsFm6NMUskIrI0DeemHlfvfXXnzvj7a6RiVT24Bjxu3v1NMHzN3XK
WMOgv0xtBFoerlhv9Sw05t7h3YxMsCvAG9JZfn9rlN76bLfuvaXg3Drf9k5k7vlh
w/K9k+KLQmzLeN/NfJqf5kaZkVdEHBdLTMHqSrHzls6S7FjxH+Ghe3/baAeaWZ8i
uMYP02/Vs+tR2wo+KYzMl2qw9OpZhuOMfLpTTG2f6HOlHwExM0c=
=Glk4
-----END PGP SIGNATURE-----

--Sig_/xM/0pmNqu5+3uZQy=etzJXO--


--===============0064255669218422752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0064255669218422752==--

