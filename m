Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E2F7EA852C
	for <b43-dev@archiver.kernel.org>; Sun,  8 Mar 2026 15:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oTDqRvamY0ZytcrV2kWKvidg+42KH4xGho6+kxy6yhs=; b=LxjyafQAkRT1wl1l5m1BeYZm4Q
	XArh1CTIL7lRZ2KWv+XjcfIqJ5tPt8h3eykvYqt/Om2Hy7GlX2uJuxpzlKr6f09LGAIj887GXxexX
	Rz8croYVhRjnoNc/zrdnlE7150d0YwYVChEIzcUGc8gVHJvpKaX4EtIKUrYb7QTQ3bJ67sDMUgSBa
	lOUSu9eaZHVmnXLLfBn5NknZlR4cUSthPbKo/Rxl/iqTUy/MmlORJU/mSr3rXwGU21mYw+D0iumy7
	5dEUYJwk81csuNEF0CQlhbNiexUf+elXtq2fSJCTEObhwb6KIO6Twm06x7YCz8btGzA0DvK4cxhky
	wPDeskAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzGOm-0000000693U-1Py8;
	Sun, 08 Mar 2026 15:50:32 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzGOj-00000006934-2PoJ
	for b43-dev@lists.infradead.org;
	Sun, 08 Mar 2026 15:50:30 +0000
Date: Sun, 8 Mar 2026 16:50:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1772985023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ol9BeCZAQq4A7ib2l3MAH4Azy3kgUQyH8nvQOy82geY=;
	b=Bn47Aa0fmfMwXr87pkqRFoWh08+rZcLRQdtH7UPaGaMzZ9wre19UeM0i9H9o8fOx53TZzO
	2DpdKmOeqDwAbb1Lu8Fuzf9J7zdkqUwLKNv9k2Qx1Zw51feKckSf6Aimx68ljV6Rtioy/h
	2ULC4jvMPHgj1D9L2+++EkCxEQnZLcrxF8zpvoSboDRVJdAtAeGkvnNlVQPN8eloyrfcMk
	QGoSRUtMYnTks57tNER34tj7zMwFSVVcwsEL2q0yo5R0/N3SE8/iPJzAf2Jtek4Xu4SAcq
	Od0qbzwmjd9X+jUDiS9etMHogXvTXBDUT9+Oa9upCQfMpKhgNzPlbQ7tFyVgDQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Joshua Peisach <jpeisach@ubuntu.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Francesco
 Dolcini <francesco.dolcini@toradex.com>, Johan Hovold <johan@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Subject: Re: [PATCH] wifi: b43: use register definitions in
 nphy_op_software_rfkill
Message-ID: <20260308165005.20ef9b23@barney>
In-Reply-To: <20260307170135.167460-1-jpeisach@ubuntu.com>
References: <20260307170135.167460-1-jpeisach@ubuntu.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_085029_790145_8022CE2F 
X-CRM114-Status: UNSURE (   6.36  )
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
Content-Type: multipart/mixed; boundary="===============3265839957599667497=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============3265839957599667497==
Content-Type: multipart/signed; boundary="Sig_/6X=jnq=CXy4.QK0L0rb9BSL";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/6X=jnq=CXy4.QK0L0rb9BSL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat,  7 Mar 2026 12:01:35 -0500
Joshua Peisach <jpeisach@ubuntu.com> wrote:

> Replaces uses of hardcoded register addresses with proper definitions,
> for readability.
>=20
> Signed-off-by: Joshua Peisach <jpeisach@ubuntu.com>

Looks good to me. Generates the same object code.

Acked-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/6X=jnq=CXy4.QK0L0rb9BSL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmmtmq0ACgkQ9TK+HZCN
iw4crBAAykOe7tIE+BQLd+zMiiv6NqN0krUWBfgXBU6cgnOsWuP3VW7w9ra81N9f
JCT5a5ZE/m+NpMLWIjMIxlxx+YU/cSlUl+1hiAWCRmHoobGj9cjRsc6OTokTQgEe
i/wNiLycxFthhmrgimtN270IIJ9tfi5LjtfliexG4NZ9rJvzEqJll3flFnPJm08A
HXiupCyNHmKvL9CoX96+IZkwtjUjQUJ2pwGHw3XMGn/NZySNCF19we0HTSVDnXzf
RjAyTSBkoZ+d9ZPQyGNT2H2iuBaz0dlEdzgIsRW0hX9SMskXjLNgGX7yRsHoDGNt
t7LLpIPXc06DPsBkaGM1DTqoSl2rqGwjAKNG/aOtximiZd5s7Ix+BXAJFn+J6fAa
37MFd9cMM4HKQHqGbfYA0b/NFMQQjDJUIXMbOoV0Zdiz8X07U+uFnJwSic9wb0Sk
5719fmpTOSA65MbuMMqTrUbt68B8fD8j9hKlQeYLEU4J9ggy7EsG8FbZKojnI90b
ORSgsWIlEUnmLkya4C6wTPKtWVI6syI8fv0ii5nmNUsFDt8nEqGO9vda4HOI2sTd
os54Ap7Sy0io5H3ktXDyf/WlddzYhoytwJb/LhFh/gKNp1sPjDEr5oLaVytqUqNB
GTWODa1XC/H2HYbOo8s6z+CIPFCGDD8slGf4CMe0E6JlXZqCbyI=
=blyG
-----END PGP SIGNATURE-----

--Sig_/6X=jnq=CXy4.QK0L0rb9BSL--


--===============3265839957599667497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3265839957599667497==--

