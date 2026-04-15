Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5423F42100
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 17:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wo5V6f9AXhlX54A9H6c2W5edJkYDZYal9TLteuCXQa4=; b=09lfZQWa/2vxipoXDLkf7nDoMr
	QcywodtGrIZ2z4aWsqHtRhMwXuHPw/qipEChY84alcvvq450u9pbSSQtw3JuzBWlKJBMwIGnuF6nD
	wMqQoCmCML0NS+IEieJHGXCyuQlYPi1N28CJjgPWQfti8erxK9V4RTqzZ0/AJ7+QpdxGlh9Xdriqd
	wHQsCq2YsqJp//Nzg3uyCiXBaX/LpGMEUm5KLNO7p2gkiP7JIjYYhBGPxJfp7/D6lZwfjrZKkeXfY
	a9cuqpc0ioiufax7InWzXbCgeJ/se6GFY3e7uKoGaSvmZKsnYjeMPaQvz2DUk+xK9rRl/j2I6v2T6
	klkOu4Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD4GS-00000001T9M-0Th4;
	Wed, 15 Apr 2026 17:43:00 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD4GP-00000001T8m-2AuA;
	Wed, 15 Apr 2026 17:42:58 +0000
Date: Wed, 15 Apr 2026 19:41:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1776274974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iMU8Q7tk0mzvGfxhQdx/C/pXwAGPrpTMzMu2PP4YAmI=;
	b=HOM3+atIPHRb4nfcOcS9numuJVQJCQtHAjo+ljFid+5XbI2ICaacgElaz9xAV0s4shEWPb
	2ssYa71UCKofBzWT4mayl6mpSecJ9MU4HyrNvhz8hiSMZ818j5A5vRqAZvl/fIHC2Qds+n
	hE13Np8rju1PojUPpujNFpnT41LeTC+/ZHQha3rE2iBR5eC8tiqrXJ0Iri4acAoO8/IQhm
	CuWZbj3xj/nJuL2wnXRSd28AjQNxGKSIxkbCuDrleKtCPj8SuImqb5l3Lo9QkvJHOUBDnU
	YPhygfkKnHqbMjbaUoDUI0egb5OYxwKZwYvCs20mADOgU/LL3NZkxPk/BXJPWw==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: "Joshua Peisach" <jpeisach@ubuntu.com>
Subject: Re: Firmware for reverse engineering b43?
Message-ID: <20260415194150.291dbe2d@barney>
In-Reply-To: <DHTW44HOVZLS.GFYBZTKJTMP4@ubuntu.com>
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
	<c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
	<DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
	<CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
	<DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
	<CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
	<20260415175748.61aa7993@barney>
	<DHTW44HOVZLS.GFYBZTKJTMP4@ubuntu.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_104257_697942_B3EB8D73 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: b43-dev <b43-dev-bounces@lists.infradead.org>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8805860031821820838=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============8805860031821820838==
Content-Type: multipart/signed; boundary="Sig_/5GlhseULoQivVP7Dmr.YsLG";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/5GlhseULoQivVP7Dmr.YsLG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 15 Apr 2026 13:04:40 -0400
"Joshua Peisach" <jpeisach@ubuntu.com> wrote:
> Well, if the regression risk is that high, then I guess I'll let it be.

> Sure. I might just make sure everything is using register definitions
> instead of hardcoded values, but then leave it there.

I mean, I don't want to discourage you from doing anything,
but I just wanted to point out that this is a lot more work than just imple=
ment
a TODO here and there.

For most of the code we don't really know what it does exactly.
That may change a bit, if you pull over some code from the newer drivers.
But I don't think the situation will improve fundamentally.

> So I guess this driver just sits here.. not quite pointless to be
> removed from the main tree, but not quite worth the effort to bring it
> up to speed.

Well, it probably still works well on the (few) devices it worked well on,
because it basically hasn't changed.
There are many devices which were never supported at all or were never supp=
orted
properly. It's not that just your device is missing to complete
the perfect picture :-)

There might be better uses of your time than working on this legacy stuff.
For example working on the microcode reverse engineering and tools and
get them updated for the current generation of devices is probably
much more useful. And I think much more fun, too.
Or something else altogether.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/5GlhseULoQivVP7Dmr.YsLG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmnfzd4ACgkQ9TK+HZCN
iw6hcRAAhtbf9pPiLjU6v5aNDqOs27ICOjU4ys4u4AYEUk1iYWSkY/oQTxbnX4r1
GdRFaRijhVwtxP2mzDGEbwi8LcjyZatA0ANhdPEO9h+UeXc1xjQAiMNgGVY2t3KH
56HllAN10+BgSQoFmysytW1jbxawzFvctetJ4mGWyX8SaoNn0MMCiACrWoP2rFH1
Wx5bTvImGPiR+KP8FV62gAsMHZ9tBw0WyvZ7fDFc17ePAMLFNqkYeWbY00fziRnd
9oLCTnu9k1Edky4+W30HaYSZdjCcM7Tx/bkyVFaKqhT61NsfubmZBI6ilw2lEbew
A0dZU/rTGaf2RczgTRK+QN4lAyykBFcb23VFYB05ybNb7BALXyD0NiI33rdrIoik
Lde/pe8KAME4+mLZCPBsIS8OOK5iQpIICneCvl3JjsLMTxZ5ejrPbqurDmgC9e7J
LUFJc71rpUPfstEbJ5N0t/Y7NThzXL6/uuyQ0GkPyyqJ5QeIaU4qFFa7GPrylsod
R+525VAMss0H2l7aO2Mog8P0bxYOmb2KpzxXe6icaNdxSgktVDMVkygAJh0IH1Ka
eq3sPCBMGmW/IBFgLyXiohW6uqU2WPWgCn7oTKpGK+hvrH/nivRbcMDPQw7wRDEA
3p0bU1uJ1L/xTSk9nUpc5cZX7OC+KCjVHfs3crE4WCPN0fMmXkw=
=BYmO
-----END PGP SIGNATURE-----

--Sig_/5GlhseULoQivVP7Dmr.YsLG--


--===============8805860031821820838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8805860031821820838==--

