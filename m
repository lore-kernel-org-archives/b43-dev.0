Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6882CCD98F2
	for <b43-dev@archiver.kernel.org>; Thu, 18 Jun 2026 17:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=klSGdZhZ3zRdvlShr0YqKvtBjtsKIswUrQzXbGP7gNg=; b=VNZZwNW5d3QsarWc2bs8YMIEKM
	MT4ACZMHc5V4Vcr9z/YXIB1IJMmx28DgrJH9KUSfsth4xKQa4tRhwYs5QkNIPUiqN99t5iimViMUY
	W85kLtxLHg453CkOgdq5eQxlXXtSIHSnn1flDLFBPvxP6cRyByCgNhYdFLA/PYdRDQY4OUewvOwJN
	4/B2HNVIGQsLY+LWY5H4ECao/xiQ/Y8X9PisPM5Y+OT9uSFFQiHVgxf6HWZbcFokd74O62jr08a5v
	MLaL3YZYPwxqgjcZ+eQ054e9AGqiD2lLhD9KKM+/y0x3Nk+QxnyVLNwky9pWSyepRZm9zRwtEe5eu
	p0t7ai8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waH0Y-00000001fa1-0rKD;
	Thu, 18 Jun 2026 17:58:30 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waH0U-00000001fZc-4ACe
	for b43-dev@lists.infradead.org;
	Thu, 18 Jun 2026 17:58:29 +0000
Date: Thu, 18 Jun 2026 19:57:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1781805500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Gf8+j9kDlIC5pkDl3pjv/qiQOKadn5JWHV7389C8mhE=;
	b=AgEqRZKKtpeSq3dFPD57xFhHMdEySYJDW/JT2zVQwjka4YZzn1YdZIa89TuvT0S9zKxACP
	KR2M9HNeHfYPRypfvXxDs+rLMlr7XJf09+X5rzmwX4hkjl95dncw3AspIZHph8a0kstV8E
	Zp6NyIOyfvJiuD1A3wXsVq9IO1EMbE85oWg34b4DcLbch3VVSozypP9cZSTkD1metj0wNE
	wbn/jsNv8OVJCOcIr2U7Ojornbja5Z79BB7kJSxXnf+YRJGG64HOn9QCaROSTw5B9A82zN
	5AEsImgoU/XQcg2gIDvb1U/M4h8lD4H6/xHX40cuuol1iqQh5XtmZH9h3XTIOg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Alessio Ferri <alessio.ferri@mythread.it>
Subject: Re: [PATCH 1/4] bcma: host_pci: add BCM4352 device ID 0x43b3
Message-ID: <20260618195714.5620e0ec@barney>
In-Reply-To: <20260617-b43-add-4352-wip-v1-1-c81323496720@gmail.com>
References: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
	<20260617-b43-add-4352-wip-v1-1-c81323496720@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_105827_246175_C43FAA80 
X-CRM114-Status: GOOD (  14.88  )
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
Cc: Alessio Ferri <alessio.ferri.3012@gmail.com>, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0447906573198514499=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0447906573198514499==
Content-Type: multipart/signed; boundary="Sig_/jAjpHEYdavIonoaH4M5Uz/v";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/jAjpHEYdavIonoaH4M5Uz/v
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 17 Jun 2026 23:42:08 +0200
Alessio Ferri <alessio.ferri@mythread.it> wrote:

> From: Alessio Ferri <alessio.ferri.3012@gmail.com>
>=20
> The BCM4352 is an AC PHY. It is missing from bcma_pci_bridge_tbl[],
> so bcma-pci-bridge does not bind. Add the ID.
>=20
> The chip identifies as BCM4352 (chip rev 3, PHY type AC); b43 with AC-PHY
> support handles it once bcma reaches the D11 core.
>=20
> Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
> ---
>  drivers/bcma/host_pci.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
> index 3dc2985063f1..f6cf722a3798 100644
> --- a/drivers/bcma/host_pci.c
> +++ b/drivers/bcma/host_pci.c
> @@ -298,6 +298,7 @@ static const struct pci_device_id bcma_pci_bridge_tbl=
[] =3D {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a9) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43aa) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b1) },
> +	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b3) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4727) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43227) },	/* 0xa8db, BCM43217 (sic=
!) */
>  	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43228) },	/* 0xa8dc */
>=20

Please submit this patch last, after the driver is expected to actually work
on the device.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/jAjpHEYdavIonoaH4M5Uz/v
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmo0MXoACgkQ9TK+HZCN
iw79/xAApSa8gie6f7YYYepTM2teMOo7lqt5rKHR0iK5rWqhgF8kca4QFukgP0gs
Ijlj5yyGZ/HOVA5l7bE0BIpJ0bPvjQBwOSbo4xpzNLPVN9dnJbqNu+HLsXRYI9Ze
10c5h75tkEpYq5acGzZ8wmq2hKRWWe24u553qfMm+4QhTDdJF8l6dtp6cQqDDfWI
sUeyfThcdd8YwVBnrLVhHLLPlL1qru/6QMIX3yNuKu5aneI6h3GOMhrMJMz+UH61
rhYmA4wABTP2dnwkvwAjy52K/w0M4Ykg7RKiEyvisJhm10d4ms9i+SywApjNaTUh
hGI2dVBBiRSyWkKtfeVwGxu3fbMsU/rW0wwD/SAMkxgtfvYlROilVQRjwk7WCD7i
JDm8HXq0cfBR7qnPAKr8gN2VsPO3XAHtzRebQP+Ew/SHCoEi/SjFzVVltvQcHrcf
NdY9gIVYY+6qDeDiq2fzCT/rEWSLpEe4aTd2HeFqXn5n3CU3SAYkDUOhPmbuHASy
sZb6AsKSYEjtCNQ4wLLgOnG+v1KlSnXqi74Bm6beTrX19ABP/bekM5n3AMBqIN2F
CHT+6mNjr3PBp1erXEB7XUMZU7xxEaRfaUjtBdFAljdKdLADP8HaJytLcUkrYY8g
Nz5ubxeLP7YM5qulAa7+gI0Vs6kDzzl+YLUxp4ShveB8JBZicJQ=
=htaX
-----END PGP SIGNATURE-----

--Sig_/jAjpHEYdavIonoaH4M5Uz/v--


--===============0447906573198514499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0447906573198514499==--

