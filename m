Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E83ECD4F54
	for <b43-dev@archiver.kernel.org>; Tue, 19 May 2026 19:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FJ0kVVCvzQgqSn7AomnekruZW0f83YveBl+tJmK2Gc=; b=SR/Qs/hACvNgf6JjkCFtdg7gAJ
	/lGFVeXvVjcSDRqamXtKj0naYpSUf6mf4ZVOQZMKNFSua53wERkD5Gymw582z3dd6m3AeR51OCy2R
	F73RpeC2gOmGq5dj9bE1l0UFk1L18cHwLp7aRuVQJmYoLRwdwzCR8WzzmIvTtoNhm+0yI+mNBqJdb
	/uXI1mb/iHnx4y/uXP4hrUXG+DUdg5mDZmZdmajhdPexG0rgkBIPXl9f+7eXFtGI9uUHfsqSyOl9v
	LP0B/h3W3cwQ7qmv96yxRM6KRvv4HNTeGQXEGUGc+JO5qTRfR/v5PZlCwF8kD9pgiqwAnUsreHnaw
	CY5THfcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQVc-00000002fAm-3ykn;
	Tue, 19 May 2026 19:53:44 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQVZ-00000002fA6-3Xlh;
	Tue, 19 May 2026 19:53:43 +0000
Date: Tue, 19 May 2026 21:52:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1779220418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mc9PbFolJ0S6yow5K8RQZ49f9a+i9DZSo9lEMLBzbx8=;
	b=EwgavCylZ2ofil/aycf5Cdg64mL6uk5f5YNdXGQ5XYK8qq7BoNg/74zlz8nANhoexAAIoM
	9YtOiHFP1MGiwvfrRYS9W3L7h1k3/+lTh+LwuC5Wes88jfGkAgBSgxJTUne3EC5VVKgMrR
	bEKVY47DrtnLr1usZ/iKSNEeA2tm57C42foEzLyyf218sTqyZKlI/ElXmiHezyEywFki42
	mHNDfW8WwY6etKfgz0bMuJqhugx2sQ10xgHXGkXF6up6QxTyIbdwM4CYyciOOqcpT71ZDE
	exHfxwrFPXQJR2VA2RhvoSDNssquD5j2ARr8sdogeoX85QjHxOF1D0gGpIViVw==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: "Joshua Peisach" <jpeisach@ubuntu.com>
Cc: "Alessio Ferri" <alessio.ferri@mythread.it>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <kvalo@kernel.org>, <linux-kernel@vger.kernel.org>, "b43-dev"
 <b43-dev-bounces@lists.infradead.org>
Subject: Re: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260519215244.2a0d2b29@barney>
In-Reply-To: <DIMWK04RLFCG.17KT0R0YCUMRW@ubuntu.com>
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
 <20260519175812.7ce97ba1@barney>
 <DIMWK04RLFCG.17KT0R0YCUMRW@ubuntu.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_125342_036839_FE510E86 
X-CRM114-Status: GOOD (  18.49  )
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
Content-Type: multipart/mixed; boundary="===============5438485769883731946=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============5438485769883731946==
Content-Type: multipart/signed; boundary="Sig_/Ya/n0a=Cznl2sfj19DrTnxn";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/Ya/n0a=Cznl2sfj19DrTnxn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 19 May 2026 15:32:44 -0400
"Joshua Peisach" <jpeisach@ubuntu.com> wrote:

> On Tue May 19, 2026 at 11:58 AM EDT, Michael B=C3=BCsch wrote:
> > On Mon, 18 May 2026 03:49:33 +0200
> > Alessio Ferri <alessio.ferri@mythread.it> wrote:
> >
> > In general this looks Ok.
> > From the style I assume that this is AI generated, right?
> > If so, can you tell us a bit more about the inputs used for the AI?
> > What information is this implementation based on? =20
>=20
> So... awkward question.

Why?

> Wasn't there just a conversation[1] about the
> future development of this module, that was left off at "don't touch it
> unless you're going to thouroughly test this",

Sure. That's why I ask about the development methods used.

> and now we are going to have a *LLM* work on this?

I don't care whether code was generated with an LLM or not.
What matters is the development methods used.

Changed must be based on actual correct knowledge (e.g. reverse engineering=
).
Just asking an LLM to do the change without putting that knowledge in is no=
t Ok.
Changes must be tested.
Changes must have a real benefit.
Changes should be low risk, if they can't be tested on all hardware right a=
way.
etc. etc.

Most of this patch set looks to be low risk, because it only seems to
touch code paths for core revisions that were previously unimplemented.

But I'm unsure and I can't remember all the details.
This is why I asked about the development methods used.

What would be Ok? Using an LLM to generate a fully functional and well
tested change from reverse engineered information.

What would not be Ok? Asking an LLM to change the driver just for the
sake of changing it or "cleaning it up". Or using an LLM to make
changes from hallucinated "specifications".


Btw, this looks to be the corresponding tool PR for this change, I guess:
https://github.com/mbuesch/b43-tools/pull/10


--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/Ya/n0a=Cznl2sfj19DrTnxn
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmoMv4wACgkQ9TK+HZCN
iw4jxw/9GPRSy1mZMFxtuXiNqDXvCTIVzH3YEOZpxcEar3RDEbpLzIzTmpiaqEq+
7E1fo4a4VeV7RYt1BqmjpOcPy0R16Ge2UbGcLQ6uw6AF3J1zqJ6Cy2PhhY1MIk5B
4ddWuJ6zioMy15ZCy3n8OhakOek7+JRvgSX7dQdYX0ydV4o1sPHcEH6ZM2sgLcLo
Du7p5M7XWzQgge1gf4nDTwlA+IMYrtaYFWROVFf7j2MmeAULlNmVrv/bwgwWJapU
rsQG/vOUg5h2Eh/hw+Iy0F7rgk17Xe19BODAF7DONeQk9NB+ujWsLYV8B2ueZf4i
cdTvnpUmuLMc/A7vGRzsbTmRFaGqiUersjJTexWaum4Q1odd8TOCYNhePDeZz0P8
rGwDE2BBqalQIYwoE3DltvdAD9GIB6vc9ZeUQheu389Qa6paPEKMiw5+EYa14QsD
iIeb5qZGdoWrrzflCd2+30+m9EqgFjjc519XpzGSIIhYwjlGGFIWC0pqFTJTvhxZ
DRaG84Q6imtf9psmXJIcGgAonzZB0dYpN7JlNLdrZg0ylyB4r0LA+vp+vo3REpql
kRxTT7grFRXQbUTZl+Sfg0WckkTpS262wzpyuNhhbwtzSyJlO3myISP0XJ7MZF4i
2kLwbOBo8QQ1uHTxyvg9Vyz9BfoIEIKYomVOAH1qtNPuQUEPQdc=
=+7RV
-----END PGP SIGNATURE-----

--Sig_/Ya/n0a=Cznl2sfj19DrTnxn--


--===============5438485769883731946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5438485769883731946==--

