Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77F2BCD5BBF
	for <b43-dev@archiver.kernel.org>; Mon, 25 May 2026 08:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oYrUxdCaNePP8oXbN97mKWgZStkQdMZtEQ96mTlp3pc=; b=EkHXvlXTl5d8gRqC+A/vxHki8G
	zQ5KUc8v189Wqk9GOd87dUy0CEPLM2j/vmQfhG06tl2sdut+Klzea3SCW3/aCXrhrT4qZYGXBMup2
	JTUWldk+KEcic7sgFUdkRQn//XE208hWX18sGKb9AwOrE7yDgFr4G61vRv8UYuBzf9b8ttop2yJCy
	Wh4IUqANxI5Dy9aM/ZzPGjgVZoLdqladCvdUEk8lf0yS/ekmYIRWr5X+MhM/58bfjSNoNtHkBEBPi
	eRKKbj/vWiVjM2L709ADkmlTjJDZujnTISCu0y0dSgenqJvdfDRWTgesLO9mkgzlG73U/SB0+NgXj
	uQebFtrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQM7-0000000Gb8O-3b6V;
	Mon, 25 May 2026 08:08:11 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQM5-0000000Gb7o-0HT6
	for b43-dev@lists.infradead.org;
	Mon, 25 May 2026 08:08:11 +0000
Date: Mon, 25 May 2026 10:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1779696483;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ivGnYQGwHypA/E82Fk3MIbZRzRtPVXV32W0d+O471x8=;
	b=KRG1fQQvbcUtKDtnKxtLcBMpJiYpE8vHGCAWe47TVMfpBxnfn8LBp4I6b3kcdiU9xXjprp
	1Rv4SUh0qaK4VCChBCxwD9XGHo7rXdXOHMrf+BWNIqcHp23eZsYpnI2SP677gSussNpzqd
	0GU/LHoXD0mxCrMHJWIkq9nsxKPaK1ykVEEGo5tl1xWnU4n3u2aNDuSxguboPO4y3JP0dW
	5XoLE3ommyBi3hHkM+N+emUK4GdJO2LBtWKMgDW6MCG58hT8klghIa25+51BNuMLMTGJBy
	cyfeaVmIbpCLIfnKdSu7Vju1fDNAWdeVuuE2bp692JqHSD51jxxyzhFCdgxvGA==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Alessio Ferri <alessio.ferri@mythread.it>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260525100752.16cdb59e@barney>
In-Reply-To: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_010809_275959_3FF668B3 
X-CRM114-Status: UNSURE (   9.28  )
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
Content-Type: multipart/mixed; boundary="===============8253107167044584790=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============8253107167044584790==
Content-Type: multipart/signed; boundary="Sig_/5s+bOMwc0HHsEDOgBDTv5Fv";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/5s+bOMwc0HHsEDOgBDTv5Fv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 24 May 2026 23:56:17 +0200
Alessio Ferri <alessio.ferri@mythread.it> wrote:

> Alessio Ferri (7):
>       b43: add firmware mappings and remove comments wondering about rev2=
2 initvals
>       b43: add d11 core revision 0x16 to id table
>       b43: route d11 corerev 22 to 24-bit indirect radio access
>       b43: support radio 2057 rev 8
>       b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>       b43: add channel info table for N-PHY r8 + radio 2057 r8
>       b43: add RF power offset for N-PHY r8 + radio 2057 r8
>=20
>  drivers/net/wireless/broadcom/b43/main.c        |  22 ++-
>  drivers/net/wireless/broadcom/b43/radio_2057.c  | 230 ++++++++++++++++++=
++++--
>  drivers/net/wireless/broadcom/b43/tables_nphy.c |  58 ++++++
>  3 files changed, 290 insertions(+), 20 deletions(-)


Looks good and in general low risk because it doesn't change any code
paths of supported hw revisions.
I'd still prefer if somebody could test this change on another supported 20=
57 radio.
I don't have such a device unfortunately.

Does the D-Link DSL-3580L work with full expected wireless throughput after=
 this change
or are there any remaining known issues?

Acked-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/5s+bOMwc0HHsEDOgBDTv5Fv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmoUA1gACgkQ9TK+HZCN
iw7YQA//ds+rSVNTrHzM08KTsGl/0w5pEIUYEWH7cA8MialR55T3d6B+CEbbvegD
x2x5YGn20qP9nXHcWf4zt4IE23lRVo/Xd7htUAJv3KSU5reuwWUa9XAFQE56kjXZ
cU8bPESMlNk8Redqzxdcq2osLxsZ1MmTTXdjPJZB/TWLovGN+ZKNik8BeM1n9IYj
Hq37z99Y3aUBx6le6TkcqRnt98KdE27thlMU0PM7ucSAUGVQ3NJC9BlHvGvlMR32
lKToR5PKPKm11Yi1WwphYdilzxpUgxwuCN0vE7DbE3ZUTNJKYHUiEGlwTD1xO8qA
LLMgLIN7oIrKBnArD1Kro/z5w8Mccg7/d/mMgjUpKeEWzmUFe50poH2lKRmryoGb
NALzix/c6XSpcaNvZ9u85X+cKSLKdiChwHXmu+MNvtrKUw5i5Crr8qOtPrSkxzCq
K5FZUEvY/op/z8NkDmwaGkEqthUSrHCokEOIufOCIWMV8W3sxKlojBhQHXSwdDFi
iXJSZuXnkMcYoaPQFPnEmIM7KN1l3LrM96FDWDmHcoRCGFJkEHQkyzphHxKdjo3Q
hIQT8WwACvoTiJUCZ+EiuCSZ3Y6fYxEAmgV++a9S5rzqSiKyLwwJt8zo2Nay6hdK
W4MTceg4dllkP+H4koQ3V7jvGFyX8cm7K+pLM7PT0jinf6cfMxk=
=ukAu
-----END PGP SIGNATURE-----

--Sig_/5s+bOMwc0HHsEDOgBDTv5Fv--


--===============8253107167044584790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8253107167044584790==--

