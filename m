Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63412C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 16:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+LGzZUA14V8ALADezmTqtmjU1/+kp8BhOUN8Uw9kF4M=; b=riVtWxTg87r0wAYHorJNk+BaIV
	G5FyFEgsoqM/DnYO0OBd5LJqdXVtaml/N0NJQi09f91S5eO0Uc3lY4qU/mQoJJDaB6cQN+ipzwHjB
	/3IRu2PvdXcZ8RRkV2oTvY/LHUYMV1GWQhwKqYt5KViscYbKyGi4F66pWcuHA0z3hCMMPBwhFpTwC
	Mm6hB3a9mlFOVHS46WgsTOZq679pZOkHloKCOdDdCj3Aext1xqBBrijEzkHyuHnNAs2HWpFu0hbjB
	4kevpROlq3aSOVyxcLvHhqqzgAmHdCKFx2lri/ARCMEdT74aCnRqNDGhPN6UGOABwFR/fmuxmzM8V
	2zyDOK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFGJL-00BPYt-1O;
	Mon, 18 Dec 2023 16:17:43 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFGJI-00BPXP-0u
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 16:17:42 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rFGIr-000A6d-38;
	Mon, 18 Dec 2023 17:17:13 +0100
Date: Mon, 18 Dec 2023 17:16:29 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb
 drivers
Message-ID: <20231218171629.5cf95fd3@barney>
In-Reply-To: <CAKXUXMxh3rM8da9kJG_=Sy8fQqqf7f8xXaHDHPLvpvRiYg1e5w@mail.gmail.com>
References: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
 <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
 <87o7ensgjv.fsf@kernel.org>
 <CAKXUXMxh3rM8da9kJG_=Sy8fQqqf7f8xXaHDHPLvpvRiYg1e5w@mail.gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_081740_318470_DB36C68A 
X-CRM114-Status: GOOD (  12.76  )
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <aspriel@gmail.com>, kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, SHA-cyfmac-dev-list@infineon.com, b43-dev@lists.infradead.org, netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>, Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: multipart/mixed; boundary="===============8798769116170925412=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============8798769116170925412==
Content-Type: multipart/signed; boundary="Sig_/Q7GEDofx/o0YmJSgzfmcjUH";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/Q7GEDofx/o0YmJSgzfmcjUH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

thanks for your patch.

On Mon, 18 Dec 2023 16:03:54 +0100
Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> While reading through the code, I was
> confused on what the dependencies were trying to tell me, as the
> config symbols and conditions seemed to repeat over and over in
> different places.

The {SSB,BCMA}_POSSIBLE constants are defining the conditions under
which it is possible to 'select' SSB/BCMA.
SSB and BCMA are usually 'select'ed rather than depended on, for better
user experience while configuring.

> I thought it was worth a clean up and this was the patch I came up
> with in the end.

IMO this does not clean up or simplify the code.
It rather makes it more complicated to maintain.

The idea behind the POSSIBLE constants it to _not_ spread the
conditions all across the drivers. That has significant advantages, if
the condition changes.

I also don't see the redundancy in the resulting dependency conditions
as a bad thing. It's better if every option explicitly defines its
dependencies rather than expecting something else to depend on it.
That's fragile.

NAK from me.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/Q7GEDofx/o0YmJSgzfmcjUH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWAcF0ACgkQ9TK+HZCN
iw5l7BAAgpdZdzT7v2hPcLw7K9DpHS31i4y/GGlvC4rtJuMzznJNJQGs1MQDH5qM
xo1mioY+gzeH17iRop1VCJynuzBTwOkJNz0cKPq6Iia2dS1z+YNZWwaJp0jvF0aQ
0OQO+rzX+z2ydUmiE9jSbeS1CO9l1Pk9pvKBQhp/Axg/fq1Om+MOQSdngezPdH/7
pgJnhM7XYnEy5xyKEjB5yPzcR3LuCC5NPnq964J7/+Y4A5HfWGtQBKLO6F0+XWBF
xeUlNl7uvmXilz6MwSsQkiIoSmkQBJKQwpYXV1uXi4VXiz7man3cY+ZuayqlyuVL
JfgM0pbmldVPiiXTeL0ds+LuZm+1/xiXQtmoWNp4O1VxBR+XdPKoDxL2nkC4GB4W
Okq2+TA6n1WKPIrI4WAdhASvw+skaIx8HawIoM4jhGrc4tFaX93DA80gNOQuJ1Yt
PH752DI0wcM03qnYoPIrkcfYxrdX/h7sYEY8BCYJfetRjWwSsZT8y7CtVz47qszE
WhwU2E1sMSLM5rHV+W8t8RXmvzZEo2AUMNDQ2V1PFtn/FALO52cQ3HvwbOee1OjE
HZeMAJE3m2g5xxm2O/omOXSPwm8H7QE6DhPhA3JmrSSqjFv1vSVEx/3n/DuX8DmG
JkmrPATbaZbRYQFthprmECBBXcOgnAhCa4ZDDja1+/lL3q0ArCY=
=fqXM
-----END PGP SIGNATURE-----

--Sig_/Q7GEDofx/o0YmJSgzfmcjUH--


--===============8798769116170925412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8798769116170925412==--

