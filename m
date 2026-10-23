Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A88606A322
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 20:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UvJIOGH0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bues.ch header.i=@bues.ch header.a=rsa-sha256 header.s=main header.b=PBI6pUzp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6jc3Yq8zamzsOMWovIoQSiI4UvYlWpmUO9juOUB3t/M=; b=UvJIOGH0NV3S2iwH1fVqpreJ5r
	YOTlj3dy4wu38qW6TDuiJ4p7fOWpBPSS8ixK8dCn2qte3S6FV2fpGQZ4R1J7w6pRxd0brZV3PU0DQ
	RJLJ1ccIve5TKyMJUQAWwurvqL3P3arGw3ubHWAeyXBwbLf4BMvg3uwwSzjvB9xKp6Ms/fqfxjwnU
	k76Bgsc6LTorjV8blkonZ4AumlgsR/17lp20KlUlq8XxxBarAL3x51wWLNid4wLXjON8/OLhRK2UF
	Drx7vWw94fRYFlOkJzXN5yICN/uAH3HMQeI2rI1viuFkvD5pGL4u1QwMxJrB0OaUwvE9lsXxTRmYr
	KBolB9Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKMLN-0000000GxiS-2EYu;
	Fri, 23 Oct 2026 20:58:29 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKMLK-0000000Gxi6-2vbE
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 20:58:28 +0000
Date: Fri, 23 Oct 2026 22:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1792789104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VW4kqp4jTMad/WOhSJaLgDopHrGhg40Y8hWd4zWrhIc=;
	b=PBI6pUzp9+L6+6myz44gMsYou2OInsbSs9sNZUrZwCjNUW8lLOt0MLCuuYbom02PEBehxD
	vBeMWfRHqM1O4MNm9TExHHI2zEdrCR7j/ak3yV4d7nLoPl2Rw9rDracptoT/e0EgpEqgXF
	cj8BPoEdxTbWdW8SvwtecmAoMSr7gXXxXmrzq/M5zsQjJxvpvRi7oaL1rhJAkN/uOeXtyF
	k3iqDFLOIwZFIoRVOvFKYOtC2fXG/Mto0fBR5MvMoW6F0+s2ass/GD774JtQVcMvlm6xCK
	sqKXMyZE12wvj03L4L7VElWALpktvH2+QfaBgjCJM5jwROgelqMaQmWJPefNxQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-wireless@vger.kernel.org, "open list:B43 WIRELESS DRIVER"
 <b43-dev@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers
 DMA_BIDIRECTIONAL
Message-ID: <20261023225745.696eef3c@barney>
In-Reply-To: <CAKxU2N_1XgjVPdSrCMYzZx4Rb6yjgEe7kBZYyG4RASyBv5BtMw@mail.gmail.com>
References: <20261023190653.70741-1-rosenp@gmail.com>
 <20261023221424.2722795e@barney>
 <20261023224140.465903eb@barney>
 <CAKxU2N_1XgjVPdSrCMYzZx4Rb6yjgEe7kBZYyG4RASyBv5BtMw@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_135826_912082_0AFF035C 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5007572005779122867=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============5007572005779122867==
Content-Type: multipart/signed; boundary="Sig_/d5ecz=YuuTctGtG389yzND7";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/d5ecz=YuuTctGtG389yzND7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 23 Oct 2026 13:44:44 -0700
Rosen Penev <rosenp@gmail.com> wrote:

> All code is tested on an Asus RT-N16. It runs on non-coherent MIPS.

Ok.

Describe your development process in human language during patch submission.
What has been tested?
What has not been tested?
What was wrong?
What has been fixed?
Why is this needed?
Why do we need bidirectional DMA and most important why wasn't it necessary=
 before?

AI is great for code generation, bug finding, etc.
But for patch submission, pull requests and commit messages it's absolutely=
 unusable.
Please don't do it.
Write your commit messages manually, please.

Please make your commit message be to the point and easy to review.
And please slow the process down.
You don't need to submit patches right away. Keep them in a queue and STABI=
LIZE them LOCALLY.

Please do a little bit of research whom to To and Cc. There are scripts for=
 that.

Thanks a lot.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/d5ecz=YuuTctGtG389yzND7
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmrbykkACgkQ9TK+HZCN
iw6Y1BAAqtGhwT/GhDkRGpMeSnSCZoR5N/CXbPiJ/b0vdeDIiEOuiAzB+drw1i/i
+0sB6+lXs3ZIqAQvCN1v0mCM1WKLO69xqAM3qBuDnOajw7XEMMxgXsNvgHmpQu82
y9lW1rNYQco6pLlAeJQW3pkGUbJKPyvcBHqIKy6TM+JEmn1QlaI/8/UasHxwlEU2
X5Rmf22A3OzY7Mdza1+x/WX+3s8/1u5GfXwVWKaXqcM/egivW7QoOQ6Cehcx6MoB
Z/Y9LRXNQ/TMgrsNOBYlpC3X43cVTCkR2R+VDRK+op5gu55YbgixygVIrUjtRtYI
d8zbVV4JxUkjC505Y/VK5dIu+OfomifJvoqdoJu12iEdjfMW+vk+/kPeUoiA6P/v
n9Ftjw+skt7bmNEvJ/uEupAC7C2GX09Hnx8S4s6p5vr37iBHGxArhdHKdmGFvFZR
PbElkLNAG/NrdOTYguBhQiolme1OkNtCJZlAbzaiMhSOZ4zYuWMSSezEHQoNw0ly
tqySBSkRu5qtMbVEpa+Ot5izFU3nzWViwAGOzoTETgG34h815orm57ThEGYWq6GJ
PqvBzMFfEfyiOBQroTfaQxqZSt1cZDtwfIB8sNBvL7SRld5kzu0b6tzdYCz/f+sm
l4MYfPEfWXlEQpnwfwAJIr27J+iubLS7oqzsAfSRIv70GSehBnM=
=EOXg
-----END PGP SIGNATURE-----

--Sig_/d5ecz=YuuTctGtG389yzND7--


--===============5007572005779122867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5007572005779122867==--

