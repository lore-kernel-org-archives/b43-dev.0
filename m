Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E466C3DA6E
	for <b43-dev@archiver.kernel.org>; Wed, 20 Dec 2023 09:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oUJVTiRtkkKlJ6wTXMErSCyroJpHJzOSXhwdcwgd7fo=; b=LRJkcgRh4Ds29udSVMqq34Odcw
	4rXSweRbyhpSx7YKiptiC2LsxWMSkH6ZUNjSLoTr2MhAbUpDQiMj3wDksdnvZTkZ1sTCpoIHpsd1J
	GdCpq/GOxRPkhbAg+X/OA3Y8N7IStF+32+ah35LHf5bf51HnvSzjdXmWoz8Vy26wnogLxG4E7bT5K
	+y+4eUhXbZSpzKZMOpq6WIW5aUr0/Y3j1PTYmf3MaBmkfHsAAYtaFqWCKUSSQly0kSmyzoX3/8WlU
	HwSVP+EE0op8pP+ZzuFGOL6xGeZU9TSfVvVD1stWPVHbH+pCbkEvAWEFSjwWpu0rG2HgDFCk4BD4f
	lnOQU3UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsoc-00GjNT-19;
	Wed, 20 Dec 2023 09:24:34 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsoX-00GjMe-0C
	for b43-dev@lists.infradead.org;
	Wed, 20 Dec 2023 09:24:30 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rFsoJ-0001dV-37;
	Wed, 20 Dec 2023 10:24:15 +0100
Date: Wed, 20 Dec 2023 10:23:07 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Larry.Finger@lwfinger.net, kvalo@kernel.org,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH net-next] wifi: b43legacy: clean up some inconsistent
 indentings
Message-ID: <20231220102307.7dd1f187@barney>
In-Reply-To: <20231220011209.127586-1-yang.lee@linux.alibaba.com>
References: <20231220011209.127586-1-yang.lee@linux.alibaba.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_012429_098697_09A44E8B 
X-CRM114-Status: GOOD (  12.95  )
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
Content-Type: multipart/mixed; boundary="===============2274761614470354187=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============2274761614470354187==
Content-Type: multipart/signed; boundary="Sig_/y4FaB=q8xjAQErvJOYfvURh";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/y4FaB=q8xjAQErvJOYfvURh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 20 Dec 2023 09:12:09 +0800
Yang Li <yang.lee@linux.alibaba.com> wrote:

> Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=3D7783

This link is not publicly accessible.

> a/drivers/net/wireless/broadcom/b43legacy/dma.c +++
> b/drivers/net/wireless/broadcom/b43legacy/dma.c @@ -174,8 +174,8 @@
> static struct b43legacy_dmaring *priority_to_txring( {
>  	struct b43legacy_dmaring *ring;
> =20
> -/*FIXME: For now we always run on TX-ring-1 */
> -return dev->dma.tx_ring1;
> +	/*FIXME: For now we always run on TX-ring-1 */
> +	return dev->dma.tx_ring1;
> =20
>  	/* 0 =3D highest priority */
>  	switch (queue_priority) {

Thanks for your patch.

But actually, I am kind of annoyed by the constant stream of whitespace
fixing and dead code removal and other trivial changes to this legacy
driver.

It does not improve the code to add two tabs to this _ancient_ code.

And I can already see the next patch coming that removes the dead code
after this FIXME return. And then the next patch will come to remove
this function altogether, and so on and so on.

This driver has a _lot_ of such code, because it is based on reverse
engineered knowledge with many many unknowns.

IMO this just creates additional maintenance work and pressure on our
maintainers for no good reason.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/y4FaB=q8xjAQErvJOYfvURh
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWCsnsACgkQ9TK+HZCN
iw4Obw/8CbjI5T2OUyKj3zauqWP5vWhCTIrGTywS57QuhuSpqOqr8Tg6AGyyMNQO
PUpdDFtUku5QZP/Wpv32SMdS2DX+HL0tStHSFOifCBpeErcryBhh6O0fe9uiY9cU
Pbp4PWbE7wVYRckm6N+swumi6VXS17Sh1695W3WYUwoknGRJJO31bn7q1AS2pwat
vUbKDSXwA0qYSnk6OPyH86V+xPW4FPpNmjMos4H4H5iVob5ACLDdQoPlL+8UCtDX
orc8l50tqiPWxtBHTUh98E0OPLqFIsANfqgNoEmMFEwOQ2+40bttUQ51YnLeW1Xd
dZpZORtqNyiB/GWGXiAnzLB2hBaMhNLokV02lpntqFHykTitdcSZafQRNAHQPhMU
NFucT+Ydg1qr1QCcFmIOhwHsz5rdQ64PKPTM1+ikwz/P4wmMGHE9KZJeOUr/iXbj
FFr75+FzzQCfgziuA9fazuiqyec2rdvJHu83ytcVKhH8/lUv+SQoNmUyIk7aAT1t
WVmD6ipunBLQkZKUa2ZiifvyKkuXmf7K1mmiqPB/rfNjuy1gVuNMvIxhAkZwapoz
7PkUrg6BDeWZsLF9P8AAq9ZbvNvrULE7e3HR2XPHX3vSfkDP7b+ttK3TaUJfS0N+
HRxy1L5xBuMO1krzfl7SFoLy9QiuWYChUqj8eIKx0TC501yHslU=
=wt9n
-----END PGP SIGNATURE-----

--Sig_/y4FaB=q8xjAQErvJOYfvURh--


--===============2274761614470354187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============2274761614470354187==--

