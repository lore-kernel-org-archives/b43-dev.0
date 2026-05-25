Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 302B6CD5BC9
	for <b43-dev@archiver.kernel.org>; Mon, 25 May 2026 18:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F+TD8B4tmtnBiBA/KnLbNVh9eD9RVojXaozRcT9JAN8=; b=E3eqpdXFOebyhhe+Fcw9j7C5U9
	k7YYvwVHzZhrQePfdID3f58g6L+vjanqfW+YGqYlO1s3qbmKu00xyzlzZc1v3wiX94mLL3et9E7F5
	D/sBvUYGAdYvfbnysKlvjORN71X5Ek2ZdaDve25qSC9QlFJgZWpPxbL5758CnDK3sxhHdtKNJtOvv
	bvmcnyfGyuppH1S1IchC6kGccv7kr8uxjQwzlqh4+c9tXYawTNviYkg/tRQrPbB1bs8FeEUFWtWSQ
	DUxbbxhueG3C8B9Lw8nZch5WW1UQzsNs7Fm/zt48rJQEFjnWJ0cagQMx+i+Hh9VNMhZ7PfA9hl8g0
	xxeGIeZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRZoy-00000000CjI-230w;
	Mon, 25 May 2026 18:14:36 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRZou-00000000Cie-1C6K
	for b43-dev@lists.infradead.org;
	Mon, 25 May 2026 18:14:34 +0000
Date: Mon, 25 May 2026 20:14:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1779732869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0WA2do2ECCCRZbPd27JoUNSPxv+tcgUGqeDNxEx3+EQ=;
	b=bZbyYGXJsQNMNGNk2BdYmHRyHzcPQ1QtXvX8JBiBc1tygHDK/weZFmRfU2kmzAm2rWCwkc
	M8MQ1gF9/QbhHV07ut870FA/yYcuNGgSnHPe3Wuze8UowjxZ4H5SNpc2o27TIdXJpbpY3Z
	7akFqDeTevF/DzQtfo7/FUHsgoN/bOvY9BJ9hZN1WglthjOpw3uAypFnqwlRTdyQqOQjTv
	FovlMeHWP9Uf6tDzfNnSxkTVRbPEVMPuvxCRTeMK3rRNQxy4yQRY7yPBEJTLk1sm55fxzy
	sdIdGmlszvbf4gGwv7BMhUrYVxn/g0jF9hL2MekEvuIQ7ZAG6r7xV+Z0C/98pg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Alessio Ferri <alessio.ferri@mythread.it>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260525201405.6c60420f@barney>
In-Reply-To: <20260525140438.265975e7@fedora>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
	<20260525100752.16cdb59e@barney>
	<20260525140438.265975e7@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_111432_494436_CCC7B8C8 
X-CRM114-Status: UNSURE (   8.35  )
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
Content-Type: multipart/mixed; boundary="===============1380192152534054193=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============1380192152534054193==
Content-Type: multipart/signed; boundary="Sig_/.MYp7wzPblDhh=wv0hor/qw";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/.MYp7wzPblDhh=wv0hor/qw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 25 May 2026 14:04:38 +0200
Alessio Ferri <alessio.ferri@mythread.it> wrote:

> Please clarify "full expected wireless throughput", HT is
> not supported by b43, so it runs only with NOHT in g-like speed:

> Enabling HT for N chips is out of scope, also there nothing to
> gain and a lot to risk, so i won't do it.

That's fine.
Just wanted to know if there were known problems.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/.MYp7wzPblDhh=wv0hor/qw
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmoUkW0ACgkQ9TK+HZCN
iw7hQRAAwWCeB2FMbkjfyCYyLJYKhQqWf8RHho76CgqYNVazM/pyfwQ0any2pUHX
NMdJvIuDlMRMmYLWulKlFlOZpQpq8tzbscfJQZpjhfJQoX4BqZXaLeWaT9Vx/iq7
6MgHMms7EY/FSPigQj93h7OToAJq2UYeaFppph9VAFT6xixqjDhG0fRJhiqss4AJ
MzC+zJCqepH5PUEiKuOF0RQU+z7lv3fCsZkbebprysSkKmGqmqlJ/sSbGW9CUtz/
YzYkBFSaS2eEhMYxFDP8ZBLQ3N0U0KOZICTtEfRDhRV+jH7E6jSW5UeQ9xe7XoOs
81pHPVvgVlL9kpGJEnHjoitUbF9HG/+Z6hEcSqRBAa7+Hc8XI6/NT2lpOYvHPgyf
3CPd5yoCuaKwtZvZxGDO4HEFVvqFSWqY6JIVkTxx/gDg26fjV7MD+Yk89waHVglf
EjGDgwJ6IRk/5iTt0B+bQIIhWq0KHtlITtrPAXd5xNecMfaO0zhnhBCT9ktGGFq/
e18h8EWzFZbgXRBTupY/bOvhEtDOjXUUwRQ75etDvw/gXO/61G3D+eV6BS5KfnX5
1VhOI9z3opZDVSq/mH583BNmRhGYzxre6p5TfE3vctrrS+shZf5uzd4Z/oA94Zee
EyoC4RGgvrmH0E6mgeZtlUxuQYgc836HcuwvtCPEfHjW0t9ljpA=
=tc0Y
-----END PGP SIGNATURE-----

--Sig_/.MYp7wzPblDhh=wv0hor/qw--


--===============1380192152534054193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============1380192152534054193==--

