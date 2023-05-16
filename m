Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39835C77B7A
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 17:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ofrOcdGCCY2PxHTxIFV48rl0IJZah1usV3k9JBKj+o=; b=VUkhpgpY+JV+2LM29cr5XXJe2J
	ymxbKfHyk3gm3A3Ctm+bsPvBX3+hwxvSVXWnIx7TuN0FisyFe7bSYW0QhjxZtNjSnEQxD6DWIbDqs
	eTcISl3t5pbQ5+KR8/IUkgsS468inatrj4dLK2mwI9DU/Ql/FtoBPNA3WjjBpCymoIdLz9FvDSxLA
	VyNd/0kVUyvXw5lytP4dZigmhu9IgHs6UdO8DWhKSiog+LayzlQ3KETr9k0js7aQKYhH0APnd/ixW
	hPn5vbrAvGoYj+t+kq8xzzXtnt7Av5nEkvviBZAljlKkwgFx+2LdEJgELtSvrUSMKBsy8STXBdNZP
	cU1uePVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyFI-006akk-12;
	Tue, 16 May 2023 17:13:56 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyFE-006ajU-3B
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 17:13:54 +0000
Received: by bues.ch with esmtpsa (Exim 4.94.2)
	(envelope-from <m@bues.ch>)
	id 1pyyEo-000LBs-4Q; Tue, 16 May 2023 19:13:25 +0200
Date: Tue, 16 May 2023 19:12:45 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Kalle Valo <kvalo@kernel.org>, Arnd Bergmann <arnd@arndb.de>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Nathan
 Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Tom Rix <trix@redhat.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] wifi: b43: fix incorrect __packed annotation
Message-ID: <20230516191245.4149c51a@barney>
In-Reply-To: <20230516074554.1674536-1-arnd@kernel.org>
References: <20230516074554.1674536-1-arnd@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_101353_040795_66CA4CBA 
X-CRM114-Status: UNSURE (   8.75  )
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
Content-Type: multipart/mixed; boundary="===============2737058638221686443=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============2737058638221686443==
Content-Type: multipart/signed; boundary="Sig_/h3eF.NMb8zN_PF_aekVVTvG";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/h3eF.NMb8zN_PF_aekVVTvG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 16 May 2023 09:45:42 +0200
Arnd Bergmann <arnd@kernel.org> wrote:

> b43_iv { union {
>  		__be16 d16;
>  		__be32 d32;
> -	} data __packed;
> +	} __packed data;
>  } __packed;
> =20
> =20

Oh, interesting. This has probably been there forever.
Did you check if the b43legacy driver has the same issue?

Acked-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/h3eF.NMb8zN_PF_aekVVTvG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmRjuY4ACgkQ9TK+HZCN
iw45gw//YtREyc0Ll9Z5mUYuRQuRvClsfk1NDerPQUm2m7byxHpwFBpMxNxvp234
ywnZHxD5RDFM2XjhYW1SpU1ewr2z8ElvbNMERX5ZoXDLwo5sxuYDz6bAEwd4Ka69
VdQ3aXYm2xexI+s68fhZQuKKMSLI0zd6/IPs0pJidFnPM+Q4xhtkGlEr3gXQwbfL
cPnvN1plCaxsndV0gkaulfKdfRgO7i6H7jfLpqgQx1PLrgDLsdycW4AXURTn7N1K
XZbgXBdR62fJxxKhGddYOd+bVBIkQ0al2GPHQZ+YSYf+N9XR7tUxCnfRU7inQlDE
d9cH949KJBeoUz/Fz9ulnAadtvh10+81Kdtc00X3OL+NWtU24NFUmqdiOM9PfDBT
j30mny47L6o1GlwaY3/narr4nNHGuHnHEljFDsMJa4RC8gmRpOR2x6FemD7CU5+Y
ZYcgShzbYVmfsIE5XGO9LNBOciIZpyzaMlPIaOSb2hnrvwKZRQSYlj7I+tRsdvnE
OEZxEzM8PE5M1jaw5YR+3dxbXbjLBRMm/F5IaEjoxWPymMt0V1AWGtkA2bPw06sz
WUDMN3c4UecHrOUBFiU7GdVO8M9pjIWuZVOyv2dTCXCqpALusWSie3AcOLrrw+kS
TGPi0uYmKg/Td+5vTwRVuqZ8Z5Z11VqZXxI79xVUR3wV0WSXUPI=
=kQU1
-----END PGP SIGNATURE-----

--Sig_/h3eF.NMb8zN_PF_aekVVTvG--


--===============2737058638221686443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============2737058638221686443==--

