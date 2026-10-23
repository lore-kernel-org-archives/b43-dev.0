Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758E2606A326
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 21:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lwD4ir4x;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bues.ch header.i=@bues.ch header.a=rsa-sha256 header.s=main header.b=UDYiesLQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fpi1phMAlC84J0QfZ7oHHjXnCWtH4/T+qxUjdloihHo=; b=lwD4ir4xnjj9i7eEKMndB4OWUL
	r4olwMbuvXNjeRQlNrWWkPS8HUdzQ8ash2W5gm3HEMdHtvqINrApneKqsGAblQ/Swvu+qipGkYG6E
	LRSgvV8XcZ6411dScTKG9EDxELr82E+6taVXDySEagsi7jMq+CZOnRBpnzQt8VMg78p7m9T4TLowq
	jMxc2ZdHbh5pF8XRI+3Dl8wwWyr0HipmwZDIB/TM4bakkCD0mWrvO5B6ZKEXtIr7ItacKv5N/piAb
	RSKO7dSXYoyqc7z+y5S2D4Iqw2enP25oIz0r5vVPkHFAzXNeD37Qh48aUSxpVeN5eWWwg0bXZ70tv
	5mGULlUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKN0v-0000000H0EU-0aAD;
	Fri, 23 Oct 2026 21:41:25 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKN0p-0000000H0E3-0oJh
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 21:41:21 +0000
Date: Fri, 23 Oct 2026 23:39:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1792791677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0NkHIEu/vmmZL6hSATEhLaqxQwhA8tfKkg+Bnz/rxXM=;
	b=UDYiesLQY1KDuLEUj2mYEDV4XPVOtkXLDByO3LTPXw2PB5aAtviN7v0bJnTM/I7S+DxQ7x
	ncskYwyQ34+eyKMGvCZl50HRiWMWF8GCz25OrFlYMLaWZhBK+e01VQpJMvEocQHxWvYO4j
	02Q+XqsVIQwBhm1EfwVIE9/KIa4RieaOfyNEyErbxBKMvVC9qvC5ETze1QW1MDzFcMqXE6
	B/1FFtud/7sVhQmZa9Y4jmU2cd31JJnGUuPha9UywFQmtUfZOmwLbZm2TbJB8StZ9cpAS6
	2vn7LH+iqxsZmOHgAlk6GGzrrDHv0sjYF697nwjQgs2xvSskrlXPrzyZC6K3PQ==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-wireless@vger.kernel.org, "open list:B43 WIRELESS DRIVER"
 <b43-dev@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers
 DMA_BIDIRECTIONAL
Message-ID: <20261023233953.65c45360@barney>
In-Reply-To: <CAKxU2N9i6Dn1yKmd-_9DvET6P_GNctTywWgOBXYd2tWoWKY=Sg@mail.gmail.com>
References: <20261023190653.70741-1-rosenp@gmail.com>
 <20261023221424.2722795e@barney>
 <20261023224140.465903eb@barney>
 <CAKxU2N_1XgjVPdSrCMYzZx4Rb6yjgEe7kBZYyG4RASyBv5BtMw@mail.gmail.com>
 <20261023225745.696eef3c@barney>
 <CAKxU2N9i6Dn1yKmd-_9DvET6P_GNctTywWgOBXYd2tWoWKY=Sg@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_144119_630322_D1C41C1C 
X-CRM114-Status: GOOD (  12.82  )
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
Content-Type: multipart/mixed; boundary="===============2890859980087652065=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============2890859980087652065==
Content-Type: multipart/signed; boundary="Sig_/PGHhB_KIxckt4xeCgKNjilU";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/PGHhB_KIxckt4xeCgKNjilU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 23 Oct 2026 14:21:27 -0700
Rosen Penev <rosenp@gmail.com> wrote:

>> Why do we need bidirectional DMA and most important why wasn't it necess=
ary before? =20
>Because the codepath is not fatal. One or two duplicated frames. Big deal.

I do not understand what this means.
Please explain this in human language.
Why is the code wrong?
Why did it work for almost two decades?
Why does it need to change?
Please explain it to a human being with code examples and failure scenarios=
 that are understandable.

It is completely Ok, if it *does* need to change.
I am just asking for an explanation that is not AI generated.

If you want me to read it, it should not be too much for you to type it dow=
n.

> > Write your commit messages manually, please. =20
> I've been burned by this many times before where maintainers ask me to
> reword or mention something. It's not practical and wastes everyone's
> time, which is why I'm almost banned from netdev.

I'm sorry, you are wrong.
This is not how software development works.

If you can't explain what you submit, I am going to NAK everything.
(even if I don't have the formal power anymore, see below)

> Do note this is an orphaned driver.

Yes, I know. I am the former maintainer.

>I expect [..] Fixes: to get in a bit easier.

No.
Fixes need to be explained to avoid regressions.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/PGHhB_KIxckt4xeCgKNjilU
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmrb1CkACgkQ9TK+HZCN
iw6YOQ/9GA6pmW0kusXU0wJyOhu/DEfGo0aS1f6jDOxO4XYQuZYi0CcyhLUHyNRQ
AWXv2wenyTUG6X3wnmg2q9GZPyMopnpK5TIm9H3B1UaVPzvT6vvb2O01fnQE1CO8
ZlHKiHtGSKWqRsS60Z5utPTESGIcCUgQ0pOwJAhUyFPTS4D6efSpGCLxTfWZGvLt
ujUzFviy9InpzA7aES/8vkYTfzDWzc0zHFaLkjqsURcGOsnGxKpe9ZPopSRmcyu2
3nDLEBgUX+sOJQfZNMELf84w6aGAWNQ4/m64A4ZVKMcLQu/6v0viGxz0PR/SFBm9
jIz9Ppai7zy6YWuUeCTVGcUQUrK4S5/SN5AnfXq2dYu4r5aXc5YqgQ6DBF2Asztn
YLXD/txr708CnE0DLjhXvcvxAPVS2wHktQ+nTaJ01XAopeZwLFDHfsUAFMu2xtVY
7qxpN1DQUkdqUJmc9dG85apmzqVU7dGcxcQXQB8gn40J+3sl9RiDlnCjm8f1s+gV
Rj3jhtKrnDhgSC1TWOLEHa3vrL5Q7NrRdoZ8c36teMWFyzg+immrkpoFgj8j0wnN
JhHKIkqNH1Lg3D1ixBRhp+LWOxBCKDsjbazBnUzqP4i/+oqIiFoNEM3A6KR66l8E
LCSe0h/r7+50Ge8owfG6ie7YFen6PWd8lpSkYtFzz6HYJxlBD6Y=
=ErUq
-----END PGP SIGNATURE-----

--Sig_/PGHhB_KIxckt4xeCgKNjilU--


--===============2890859980087652065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============2890859980087652065==--

