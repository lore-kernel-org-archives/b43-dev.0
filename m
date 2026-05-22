Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E49CD5BB3
	for <b43-dev@archiver.kernel.org>; Fri, 22 May 2026 17:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lxTb+Y+yTWYDAPio6vffU6zAm47zGoGE2cjqtjMwVcw=; b=B4n
	fUXHDrmCErJGSSJJalRePvYiI2c74AMu6OngdDzHD8XRV6zLUBeZOuwxlAGfS/UVbw/qTyTjGvbHt
	xzlX7vs2V9NXS/e2kGSI39SvjHBbFR5YU4NHapV7tDxKb9FsMbujH1WMqnBCUQNmhEg7ZWMiSUtHw
	Btjq0FcFowTKksb59daAwMBwTyKZEq6wyaiGsrJNGZCqyOHYI9HB/8rzIUIhyGKVfFeyazHRUIIhx
	82G8+1zk8uvoqrScgYUKZ5RPzYqvq/2Hueuv2bdxJSFaRTvtGQH6GqTntK5b5YpWgti1C/hJYj3Xs
	1gmEltlKSnW5UZXEX+5+exCYJcouA1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTez-0000000BYOU-1pXl;
	Fri, 22 May 2026 17:27:45 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTet-0000000BYML-1D1K
	for b43-dev@lists.infradead.org;
	Fri, 22 May 2026 17:27:40 +0000
Date: Fri, 22 May 2026 19:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1779470854;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=wi1PP2b9lg2uO06/qGi7T4qMIv8H39CSgzlq7d8fsC4=;
	b=V1SSKAvL6jinSYzDkqg4XI9mYGRjMhncmjRCL0dphWiNSu9aqHPgO95lMCYKubEiLfBgNs
	iLt+nmXzWay4SOg4JNbSMfGmNQF1JLIOiNK4qhHXjbrFb1gbQbofanvty4ejBS+Lhc7PyP
	ImGHCt04USbaoIcQfK2MXWe3Uyay3cM+LgVDukX0MDmVDccEeUr1gJ502y1AVWBKzxafgH
	zPsSup16k/dyjEcmQoT9hC8BOSQ8xjCeYZM+6btpH95dbBDUB/5dPAOrTaEu+ocL1P+sEU
	ISGP7WIcd7rww3EZb3k59kd2z6jG/+6hDKDvo8eNC8LXkYwkjvUEOYa085nrTA==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: b43-fwcutter release 020
Message-ID: <20260522192635.6fa6f7e1@barney>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_102739_505573_7DC7AC26 
X-CRM114-Status: UNSURE (   4.01  )
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
Content-Type: multipart/mixed; boundary="===============7053632140158406621=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============7053632140158406621==
Content-Type: multipart/signed; boundary="Sig_/ee6ETjVos92Druhzf431Bpw";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/ee6ETjVos92Druhzf431Bpw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

b43-fwcutter - Firmware extraction tool for b43 wireless

It's been quite a while since the last release and a couple of changes have=
 piled up.

The release consists mainly of some new extraction lists (thanks to all con=
tributors!)
and compiler warning fixes.

https://github.com/mbuesch/b43-tools/releases/tag/b43-fwcutter-020

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/ee6ETjVos92Druhzf431Bpw
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmoQkcsACgkQ9TK+HZCN
iw4AZQ/+OlEQ1W0LnnkxOeEf6Xv3E84EVc7w627yQYjwyJRVZJU0O6nRem4V23Rn
OvCOATWTSpRUSXtn2wDuummxgO+JVJrJ0ZDiJLgbb5gUctCWVnAGTjs+m/FqRWyZ
6M6i0Xo6SgzTBqgs8iFYU1UQ+kpF4TXFUVxCVgclP6wnij9MV2E4+HCFRTEYgAz2
Gec1maUjvkrv2d0tF7P5qkKk/jSZZ4r77PocrjLXBrqT1RrRXYSJY06ap6GfiEcu
PKC0bRB3g6s3jys1/rkjtzMdTXtmlFxi5dZWr7WJKvWaRxw8YCa2Zgg9Y54u2rSY
hY0JkEDojThdHJvEvTzD94E49kvWoV9yugx+FGqFRHKhdm6bh4bu9dU1ksI/wvW+
uUwVQ1wC6kXRryHZ54GUwYdhDRjls1qVQH3Re/w59ERkGYmLxF1JGsdxNSCnxc0C
/R7Cd+RKLkBAZGpVzmDJpX68XyLYMgjrdjDHEo98eosEUyNY1iCnTVn59/an/VPA
MXVrTO3tdoNslcIjNgd4ZjOBIdWTldTlOn/TyAM7cUjtb4L4z9jBsiby07ER4pOF
U1yRSVK/KBnB4PhBlaa4YtYzAeZJed9sgre0O868N9NOMc2Qz/8ZdpHeu9U/0jYZ
UQEoLPR5V4CJnVh1DTwCzkiBzQ8wLGWCz+2kZGppDRK/jIVE22k=
=kvoY
-----END PGP SIGNATURE-----

--Sig_/ee6ETjVos92Druhzf431Bpw--


--===============7053632140158406621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============7053632140158406621==--

