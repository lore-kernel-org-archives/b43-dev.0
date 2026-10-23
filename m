Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC15606A322
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 20:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FzvKtwLK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bues.ch header.i=@bues.ch header.a=rsa-sha256 header.s=main header.b=C5WH1fbR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jWg5DZ2dJQtzfv2HdirPyNEQ7AK5I/MIzLGVqF5xIZc=; b=FzvKtwLKYYc5nLP4oJzecA6OBb
	jjBjQVDwXuLNKumiqjR610wP2QoNfmJVhaTszdM7zyoU7KsoMJFg+1eLZmmXiZ/c5jDXkxEKlLqog
	qbAgDQA8Q3hlSyWzYlQyK7XqLyMHytn5TlrwissGejJPWO1NMtcz33G5KEul24bmKskdKVAnl2z26
	X6G53SNptZrHOGI9gUoPKbqZR3pHcu624NXefaYLEYPfPiEpE+czitbfqR1UFR+GRZ3RbrTJNBO8h
	kSrXaaOQheV+QUCwRLMPEuam7+tZVG9qrpyInnG0xWtjSaVzRRmHiiC9gm9Vs/t8nSmFQcAwRPz20
	pon/0k9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKM5r-0000000GwAw-2mAc;
	Fri, 23 Oct 2026 20:42:27 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKM5o-0000000GwAE-0oJS
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 20:42:25 +0000
Date: Fri, 23 Oct 2026 22:41:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1792788142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=COpiAirfJW1xxVg1u9cfsoxdrpIGBM2kVJHRlSGDvkg=;
	b=C5WH1fbROxWG8k5bo3Oorcq018DJ/1QAQ3sH98NBUe/W+mNyvOlP5NwTiah9H4yO7deKiA
	AptTBgxGQSVlkqHOVt73MOmNXftzsJaOCLE945+Ep+1HPYUsQ9iDCfSWB5Q9NnFSYtkKXx
	sHpgvAWSelL39NEH46bEUfkgiHKIymYS5gEAQ9E+aJLIUGs89qTx0p/q1l5PmFCiApLFRm
	kFLnr5+ynYqYpxRlZDj0jvQx000ULbJemAND1d97N2v5a+j/HGXMgbJTiW9DYfAlaMB9YE
	isqW1TMtT7JKWkhRrXY+kh/M8f3SuO1VbvlTzx5F0pwQNxm83Vh1g2Mq+IJSvQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org (open
 list:B43 WIRELESS DRIVER), linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers
 DMA_BIDIRECTIONAL
Message-ID: <20261023224140.465903eb@barney>
In-Reply-To: <20261023221424.2722795e@barney>
References: <20261023190653.70741-1-rosenp@gmail.com>
 <20261023221424.2722795e@barney>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_134224_588105_BC97F588 
X-CRM114-Status: UNSURE (   8.12  )
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
Content-Type: multipart/mixed; boundary="===============8889918611626445384=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============8889918611626445384==
Content-Type: multipart/signed; boundary="Sig_/A+dZC/cF/CkDIhpzPpycaYS";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/A+dZC/cF/CkDIhpzPpycaYS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

To explain this further:

- I might be wrong, but this patch looks completely bogus to me.
  Why would this be bi-directional?
  If this is accessed bi-directionally, there must be a bug somewhere else.
- Please provide a HUMAN WRITTEN patch description.
  This is really important.

I am all for using AI for development.
Especially for such old and legacy code.
HOWEVER, there must be a human present and understanding what is being done.

Please slow down your submissions.
Think about your patches before submission.
TEST your code before submission and send evidence of your tests.
Untested code is to be rejected.

--=20
Michael B=C3=BCsch
https://bues.ch/


On Fri, 23 Oct 2026 22:14:24 +0200
Michael B=C3=BCsch <m@bues.ch> wrote:

> Quite honestly, to me this looks like a lot of AI slop is sent to b43 the=
se days.
> Can you please slow down your submissions so that actual people get a cha=
nce to review the stuff?
> Thanks!
>=20

--Sig_/A+dZC/cF/CkDIhpzPpycaYS
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmrbxoQACgkQ9TK+HZCN
iw4QPhAAi17mINLOEeqDnVvjz/BSwRowOsI4dK9+hEjvuleukzqvk0T2kSNFrU/9
ROF7PHAiOJeT3ywsRBiR9LI2ik5WvBaRWlJXnBZ42Z7Fl133A+YA/Ixh4qwro/1h
S3x7xFtqOhy/2v8ZppvW1FPc+w4GCevTfYwj+9bvfy0WHbu5VozQwUdIjY5B6vLm
hGaHlTIeL5Bs4K2+Rvp4i1r4nGZ5uSD8Gkd+PZoj0m/4fpaDsOJLJVXd25HdrPi5
XZQUlN3I2AJJL0t7EXqX60CopYEDVKMjQVrjRj4QJr51BLDMZVMOmaqpY7aNCaJ/
zGhp+94+EltJr39uhyjhZoDlE7MKb/XK3hyqUdJyLp2FvosrCYjiyt3oCdp0Q6l0
PqrBOmErIttstglW2IA7kDDdSH84lB6mig7z/0E4W8v/iAbbQBxNXAEqJaeV4cv+
fWzguyokIrn7tqlSpHCqqn8mNYKxnunjRPODmmXeTA02YWJhf0gH5vxKtu4dAKpc
7PDfg7gSx6N60S+mXtmaZOmLUrMmrmV09jGB9VKqO2kjDj5pOtAUqnVlIQdYFVx2
4DpN7yORaE+IvMVADn9dhvqzJ/nhDJFXwgAgTynNAzvCJAyDBTZX/AddsYhVCL+0
GmmpshB/urhaR5e1siORgsGMIzY8xzaVJ0/IWdcKvpbvCK59pKI=
=Xmwj
-----END PGP SIGNATURE-----

--Sig_/A+dZC/cF/CkDIhpzPpycaYS--


--===============8889918611626445384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8889918611626445384==--

