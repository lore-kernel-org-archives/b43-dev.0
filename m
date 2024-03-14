Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B373FC54E60
	for <b43-dev@archiver.kernel.org>; Thu, 14 Mar 2024 18:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t6jSyffuH9f6ZydL9VEh0B2lJ0Y6epYVXS+cEL9wgTE=; b=Nk9d9lenB7aMS0GPZ4/47vgizm
	Ubn1/jyMgCLuIPHAy32bRGjdpnjcMTcIdmlDxqMZ9CpXIglNrXwU8EHgdpknoHlKcfmgh4Dfw4N0g
	E8OnPHlR2grh3EkuPqzSMYLhHgFBfnzweTGSMT6Hqd3UAuG1uqqEBhJVIP7bJH/QliHRqnIMV0ijV
	OsLMg//lWsLFVnBkA9x8QKCFucd4pL68OsEzqRfavPy7f29t4qAOmDXaQjVHQznyP0Jynb2MkZFwN
	SJ+D9LerR1z2aqPVlsrpTyhsgW7xhhlcXEkV77euGxLNQKxwidmI4O9QO1EKGG6wpAATzyx0xcGrS
	HNGV5hyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkptO-0000000FK3p-0NUV;
	Thu, 14 Mar 2024 18:33:26 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkptL-0000000FK1s-1z1O
	for b43-dev@lists.infradead.org;
	Thu, 14 Mar 2024 18:33:25 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rkpt2-0012GJ-0E;
	Thu, 14 Mar 2024 19:33:03 +0100
Date: Thu, 14 Mar 2024 19:32:15 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Li Zhijian <lizhijian@fujitsu.com>
Cc: linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>,
 Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
Subject: Re: [PATCH 2/3] net: b43: Convert sprintf/snprintf to sysfs_emit
Message-ID: <20240314193215.74aac927@barney>
In-Reply-To: <20240314094823.1324898-2-lizhijian@fujitsu.com>
References: <20240314094823.1324898-1-lizhijian@fujitsu.com>
	<20240314094823.1324898-2-lizhijian@fujitsu.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_113323_537133_7FFFFB84 
X-CRM114-Status: UNSURE (   7.36  )
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
Content-Type: multipart/mixed; boundary="===============3545970955380634420=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============3545970955380634420==
Content-Type: multipart/signed; boundary="Sig_/lQpcmYwR9PeRUh3dx42=9yH";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/lQpcmYwR9PeRUh3dx42=9yH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 14 Mar 2024 17:48:22 +0800
Li Zhijian <lizhijian@fujitsu.com> wrote:

>  	case B43legacy_INTERFMODE_NONE:
> -		count =3D snprintf(buf, PAGE_SIZE, "0 (No Interference"
> -				 " Mitigation)\n");
> +		count =3D sysfs_emit(buf, "0 (No Interference" " Mitigation)\n");
>  		break;

>  	if (wldev->short_preamble)
> -		count =3D snprintf(buf, PAGE_SIZE, "1 (Short Preamble"
> -				 " enabled)\n");
> +		count =3D sysfs_emit(buf, "1 (Short Preamble" " enabled)\n");
>  	else
> -		count =3D snprintf(buf, PAGE_SIZE, "0 (Short Preamble"
> -				 " disabled)\n");
> +		count =3D sysfs_emit(buf, "0 (Short Preamble" " disabled)\n");
> =20

Please either leave the line break in place, or remove the string continuat=
ion.



--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/lQpcmYwR9PeRUh3dx42=9yH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmXzQq8ACgkQ9TK+HZCN
iw4/lg/+JasVyWxAy739KHA2FtfgNev/rh0gwiIISYBJd72k164TItI6CoOK/vFE
RaufsC77oYVzcIpuGitLAgyGnl0voXywJPnMSsce57eqqXnjeblJpXP2IWmpykGv
2VBmXKY8SwwtOwjvYfRxCCT48n0uRNCtflLrbIlD5nVYVLDGwcDpFAz1Eas27vfy
xHCf3FtCL5Hu0kC3y0Y0GZHTNRH/fOd8dVJ/6QBjRyB8i7f7FpTdRW8t9M8TJbW4
FcfiVnisM8WgC5T4dTzsZ776EaUHsxHM2XV78oywcfEr/Shj8OOQGoIqbAj7oyRI
4QgdMmQjJnTJkJVUpIxYxm+nUmGK8zz3HhNyX3dBTUi2wfidOSs2H2b8NI7VZLeB
1FD3sc7CR7OQFhfsoDr6oDHNDug1ryun67hXK1AY+Qtr35Mz+C7l1YfiyzSKc8og
bTJAyFsBttDjbMYsHqxY9PEKrmRC9ubZWAcfz6/6Ir9RC7SHh8WNrX8F7v3BIWxy
N5BUVjjppQw5SiFgYUny1fNM1gHvzy9IScUIiv21zMb1ei02GmU4qw/pAe0oIKCP
pQFV4BJhHtBgI7aL3vIXe2yYRO9fNdxt5h4TJ6ZWVD1QCFzKbC7MihxHCtLZakma
nzc+UwY/uniy5LtQmwQirsrBr+5Zc2WSrVvziK2sD0tzYFRp9w0=
=1+TG
-----END PGP SIGNATURE-----

--Sig_/lQpcmYwR9PeRUh3dx42=9yH--


--===============3545970955380634420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3545970955380634420==--

