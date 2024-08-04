Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB79C3DA64
	for <b43-dev@archiver.kernel.org>; Sun,  4 Aug 2024 08:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QcoXYo7bsSdDvFXcU3elaYLsiKlHiEW4nJrE333Z/KY=; b=Vk1WdCtVmKlNRlb0vHHtIDb+Mp
	S52dqQfTpTBlb2YnEQCltji3PkTNuvUNAPgoGST0F1kRzX8mzMD98tFB88ZilOue4nuthCZx6NPod
	qFMuQJGKqb/l//m4XJ4e03EWu3WZAL25nlF3om1l5xCaIRLhGK4Ludm+ZByYAbZ6knUigWzO686o+
	c9VtMj76+PVVW17TBS7SnYn2qWxW6Tz4oxNCnVpp/M9bnhNVEdWHn0U8ss83WR2FPcUPSCSMXZVnH
	Vur9vVdYFqNvJQuy7V+q4YyT50QcVJDcAaH6CqLJBlXoxgqiYKEnKWrJmDXFy7EmaB1avdTrYmoVj
	HsAlJAEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saWG7-0000000Csdp-41eT;
	Sun, 04 Aug 2024 08:06:31 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saWG4-0000000Csd4-0ZLl
	for b43-dev@lists.infradead.org;
	Sun, 04 Aug 2024 08:06:29 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1saWFo-00049Y-33;
	Sun, 04 Aug 2024 10:06:12 +0200
Date: Sun, 4 Aug 2024 10:05:26 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Kalle Valo <kvalo@kernel.org>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
Subject: Re: [PATCH v2] wifi: b43: Constify struct lpphy_tx_gain_table_entry
Message-ID: <20240804100526.19942fbe@barney>
In-Reply-To: <e33bc9e6dff4a5b6cd8d0ab5399aa1abac5bef9d.1722753127.git.christophe.jaillet@wanadoo.fr>
References: <e33bc9e6dff4a5b6cd8d0ab5399aa1abac5bef9d.1722753127.git.christophe.jaillet@wanadoo.fr>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_010628_199646_DC792660 
X-CRM114-Status: GOOD (  13.86  )
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
Content-Type: multipart/mixed; boundary="===============3355900429715312667=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============3355900429715312667==
Content-Type: multipart/signed; boundary="Sig_/UpsqFUdF5AJEbJWQ0oj=SGZ";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/UpsqFUdF5AJEbJWQ0oj=SGZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun,  4 Aug 2024 08:32:44 +0200
Christophe JAILLET <christophe.jaillet@wanadoo.fr> wrote:

> 'struct lpphy_tx_gain_table_entry' are not modified in this driver.
>=20
> Constifying this structure moves some data to a read-only section, so
> increase overall security.
>=20
> On a x86_64, with allmodconfig:
> Before:
> =3D=3D=3D=3D=3D=3D
>    text	   data	    bss	    dec	    hex	filename
>   16481	   6232	      0	  22713	   58b9	drivers/net/wireless/broadcom/b43=
/tables_lpphy.o
>=20
> After:
> =3D=3D=3D=3D=3D
>    text	   data	    bss	    dec	    hex	filename
>   22305	    395	      0	  22700	   58ac	drivers/net/wireless/broadcom/b43=
/tables_lpphy.o
>=20
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Compile tested-only.
>=20
> lpphy_write_gain_table() and lpphy_write_gain_table_bulk() could also be
> made static and removed from tables_lpphy.h, but without knowing the reas=
on
> why it is done this way, I've preferred to leave it as-is.
>=20
> Changes in v2:
>   - remove unrelated and un-needed constification   [Michael B=C3=BCsch]
>   - update numbers in the commit log


Acked-By: Michael B=C3=BCsch <m@bues.ch>


--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/UpsqFUdF5AJEbJWQ0oj=SGZ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmavNkYACgkQ9TK+HZCN
iw59LxAAx5uah1po1RFYdhFEMNeDkZRN/vjPNfykHH+zmBb1qeL6ZlqaWkS8ja2u
lAMOsBdIN60E9xO2opbn6KV3Ag1ti6gVtL1inIOsdNKnIvjINe3lm7mSgiyTdMUz
oIY1halx6umYdV5CHNi/91Zrp9wcysvAfc+Uu0dWs0Qp2sZWrJQSa8ZdIf8kNyII
j/MeopgVWHHV3V8Pyugaps2bQvc1dDRnfq1hbxfAWG+QUQPzIoOvA3NqX/aImcnf
dLeoAuWxeo1v9JzEOtvIH6MFojUWHw1W2X9FPB8gDckELi8XeYwiMLi38Hark6Bg
JVAzgEx8JN9weaOpgcA8kVflKMLetSo3T73DgMM3d8E+8E4hzbVGPStL5MP4wYON
o5lyk7AswaxK3/0SZ/L6EH5anDgoJZlv/yHlzoe8pLXMk7jlM3GM0pYq1UfPh35l
SlcW6sAl12dNEGELaZqqHD189Wtm2Pf+1HP0YoJw4VkLLifY9Txf0uIFoyNWVoMw
s2kZ0JnsU7uyMjB009+BM/Dt0XCjyM/m8gMxkSVSu9zen2EbU3M1wmJ4bo+Lovqm
ffxPyx3MroDvgcLMyL40LNv1Tbjg+ynTKrE2lC7JC54YlX98bI+NUEF3FVSQUsM4
ATS47ibyPZhmzWsohHe5+NROCK5AI+GJNrVMKcBpXQBs/tRl+8Y=
=+81O
-----END PGP SIGNATURE-----

--Sig_/UpsqFUdF5AJEbJWQ0oj=SGZ--


--===============3355900429715312667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3355900429715312667==--

