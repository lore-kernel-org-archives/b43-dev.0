Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19251C02192
	for <b43-dev@archiver.kernel.org>; Wed,  5 Feb 2025 17:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eOjJnkwNjr2EusWrJDU37prC+RASQ2Eo6ZwUsTYhe5E=; b=tEHfVYSTaEPhKcm5CODpFu00JL
	o1i/kC6v+MVIrBmjTO/HKb/aBarmaK1HSaakLmP00OkiL1WOMKjj25VNUkAnNGZg8OmaV+/9KfTGm
	e+ggSwp8pUCPoWDAZDhEy+co/hrUqmXo1FJNi/5CK0Odz5qfaG6xUq9o4+xpkatFd1Yr6tAM7JwBa
	0qD8j9AOPn1lz5IIPW0G3dCMvlG/1opVj8WbhVHTb0SUx1Si983/kHzHWnjK5GxlMXs/YBWCdut78
	ABktVEt6eBwTbbyhHCOg5R3euXvlQ2GTXrU5C6p+V3CYQjIoa+wy1pwEDOHxCcol5ut9P3ped4PXU
	oUwhcaWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjNB-000000047mu-2ojv;
	Wed, 05 Feb 2025 17:39:37 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfj8C-000000045TM-0l7C
	for b43-dev@lists.infradead.org;
	Wed, 05 Feb 2025 17:24:09 +0000
Date: Wed, 5 Feb 2025 18:23:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1738776242;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jXHa2sqBdx5kl+URkaqFGorX131D990W5SanQ/p4o1k=;
	b=QSaC9KZdyLhpEGGWBCi1SxDSKvk/gQWhHj/GwqSvLTNQQdndAigeCDl7A4AhRU8V72rDtW
	UbsB+Fa5gg6TwIUdYgshdhRO+X4rx5F81BrP10VbdrSZbNDFczw509rqi9tjZVDmrC/svr
	69eRX2mdbPCNWK58J2yfwVoonixzmkX2R/RsLDbhqlMqOMJKOkvLB1EgPh7SnHV+xeb0I+
	0vmlmZUWIUK3gWJNG2fN8MN9CWqNpuW+wmOmZwQZJy2jOacLdIq4DBH9S6H3VipsR9tgUq
	u5JtttZ5xICxjiI9p6deypa2QqdXNfbhNCq+XXxy2AFvAWKE1QK99t2sy90U3w==
From: Michael =?UTF-8?B?QsO8c2No?= <mb@bues.ch>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: Johannes Berg <johannes.berg@intel.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drivers: wireless: broadcom: b43: Replace outdated
 firmware URL
Message-ID: <20250205182325.5a38c736@barney>
In-Reply-To: <20250205110614.216958-1-carnil@debian.org>
References: <20250205110614.216958-1-carnil@debian.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_092408_517702_F9B475E1 
X-CRM114-Status: GOOD (  15.34  )
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
Content-Type: multipart/mixed; boundary="===============4664562760428418559=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============4664562760428418559==
Content-Type: multipart/signed; boundary="Sig_/uuMKLn01GWEcG6Sbf8AZzW/";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/uuMKLn01GWEcG6Sbf8AZzW/
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed,  5 Feb 2025 12:06:14 +0100
Salvatore Bonaccorso <carnil@debian.org> wrote:

> https://wireless.wiki.kernel.org site now redirects to
> https://wireless.docs.kernel.org/en/latest/ making the reference
> information for the b43 firmware inaccessible. Update the URL to the
> current location.
>=20
> Link: https://bugs.debian.org/1095062
> Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wirel=
ess/broadcom/b43/main.c
> index 25b4ef9d3c9a..7529afd24aed 100644
> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -2166,7 +2166,7 @@ static void b43_print_fw_helptext(struct b43_wl *wl=
, bool error)
>  {
>  	const char text[] =3D
>  		"You must go to " \
> -		"https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware =
" \
> +		"https://wireless.docs.kernel.org/en/latest/en/users/drivers/b43/devel=
opers.html#list-of-firmware " \
>  		"and download the correct firmware for this driver version. " \
>  		"Please carefully read all instructions on this website.\n";
> =20

Acked-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/uuMKLn01GWEcG6Sbf8AZzW/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmejno0ACgkQ9TK+HZCN
iw5FtBAAsu35avxN0BF/zlRtr8E4sVnqfLRz1sfAFmVTYr6zrEMmv/wZ/7SAfH5o
pBq/n4jLFRSZAh+DvYOcH+W0y1lAKOAgAeTrNVWblVXcqOCzwrFsi2KbKlrzyc+b
MQ2MpKKW9T62YS/mYtgIaNHKXjdWKkVqCIQM6VuBs6OokwWs70IyESDhY4QHTK7M
oZONxaWnR2O5lAvenvILGMZdK+nEu3MMwAVSC/ckyLVv326RMOKhTTMcpcVlAb8l
8TJFq70upEQIFEULAcyuHBqy3mwUNHJIKW5k2HzJ6UCN8OqZnBCQE8HVdyzZzjNm
W1S2ZXZCtC9Z8Td6gveEv+ZjEg8W5Jsxbc0d4vG0oDrE1LtCNbN8ofMjmg/UmvW2
7YfEuKuQ+RiSahYAGKdarAOe2dMlxQaCcx/iC73pZM5I9eaPU62tJ9DsVAzU7hu1
neZeVJUzXCo/dpyw98yU+xnM6fsmYRaXgvNTFPk8BNabRMv9nxt6Ne731pFxwN97
0sirlPmEhBT6aGkm47gOIY79xD3Swoo7xFpelCPFLBAOEEkuwii+RnL8hWyVfbb9
oxVcFUWpTZOY+TCQ1rqqTc6b2xj/mN7Na25f2C7HIwB8ByRRu3jPPcLznK5XB1cS
1tQLN7vaL9OWFg26pDuhcb6hdeaUkKolwclyyOgb39sX9o92kNg=
=8mHz
-----END PGP SIGNATURE-----

--Sig_/uuMKLn01GWEcG6Sbf8AZzW/--


--===============4664562760428418559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============4664562760428418559==--

