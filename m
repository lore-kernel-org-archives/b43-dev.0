Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D753CA5FA1
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 06:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T/KSzX4hKa126pqsPgnapUaebuGA6qsrGQ2ZXpFH3oI=; b=wuL6yC0IpuWv1uM+lzRM/j8OSE
	aKw/1rXY1Q/Nm8R27+zS82HTIGcJ4jC4sUQrX0S62nifkhppV1/74HPt2671h9LMYWA3yaN6OVYrs
	q9CL+rOdG/Tl0o5YZu9DMv+tyZd8JWTyoiPtvLWp14ftGYDbrgve5uPfNimfzFS/ty/a7F5KNzqAb
	o3t0RZkd9MCrycArBqM8T+JzzOv5rWRm+pwDfrI9ZO5GSOKrvMZmiys0hqPhmElCZM5PfCg7X9oKa
	rgUG1yw49hJO/plGPRyYMf9C29VXDomIML3C2pQVVH4FmmTDB4XNqgOBtr5ywWv5ZqRHXO2jeFd/B
	HE6bb+RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR6i-00000002Qm2-130S;
	Tue, 29 Sep 2026 06:14:28 +0000
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR6f-00000002Qjx-39Lh
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 06:14:27 +0000
Date: Tue, 29 Sep 2026 08:14:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1790662462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A7Y5Q82w9XnCHrtBe34FxKN7FOJ3jIgBZUhLR7Hvop4=;
	b=ZhEkEdaTci4o38T4xJOxKk9qJvhj6UTAcjLGiHQv1rdkN5aQyI6pdSZupCih+XTnPqNVbd
	/q/4P30P6WOOhlQ4CC9mUg+LVrYkZiDqNMWaU/e5KKbm4MNTwbrfM8b4SGt3GFdpsqWacO
	b8392WrwLnppwRKBqEt9nVkPm/MFigwTQkbpYLMUjObCkQ7O4cCXEljKSAIaXtSRBO11Au
	oOgjql0iLzqHxbukcy3zJ32bJrtzUew35olFUMF313iQkb1WByfkXnrDeW1cWA7/dwHMDa
	8keNVSsDzihmTOz+E61uJya/EjAc45axKA9B20G85vDjmdmEPBUd2hxwD8lidg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?UTF-8?B?4oCU?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20260929081403.6076a6da@barney>
In-Reply-To: <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
 <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me>
 <20260928200309.01a36f5e@barney>
 <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_231425_965284_3C55B96A 
X-CRM114-Status: UNSURE (   5.86  )
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
Content-Type: multipart/mixed; boundary="===============1815604369406980175=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============1815604369406980175==
Content-Type: multipart/signed; boundary="Sig_/=TQ00VYIxA1gmN_RQot4VUv";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/=TQ00VYIxA1gmN_RQot4VUv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 28 Sep 2026 21:49:23 +0000
"andreas.wendleder" <andreas.wendleder@proton.me> wrote:

> if someone is interested in implementing it.

I think the number of people interested in working on this is probably
approaching zero these days.

Maybe we can find somebody doing an AI implementation from specs.
But then, why not publish yours instead?

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/=TQ00VYIxA1gmN_RQot4VUv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmq7VysACgkQ9TK+HZCN
iw4jzA//VhLIjBKRiSGTRKJmR5SJ1RaDA0XbGskGstDBPDB84+xGeEbM2JLAINZp
Ijm87IIK7wnf6gqlz4B++rDwpo61c93V8P25uyrE46ORKt1Sx7Azwh5GHIGwzUQo
69cLvnOeMIFUfK1+6+ro5dyypZ+maaUitGMBKpWyAvXhqetb9nr12LPGHUKvzP8e
CraXMFeDVtNuEWPK3kn3CVbsdy6PbNxIFsl+GouiI0cBffXN/R/HOOl0MIP3QBsE
0nhWn7yw5tNuwq9WWgDV3d9zzxTm9cB2FFUW2AVT86Bn3irT2kzTG88GPs/0fZc3
arTTzltiJYqYF+Ov4tTJkkfKjmtojXo+sbuhETVhWGkcpKYmLY1xoIUyvT5cI29J
mkaKPOtJ3maRH8Y5n1jPMC2BJD2cJNmGs6XP89rb9jqgOsfxQey4/jxvkNQd+Q6Q
Lxuynzg4iZzXtNH35W913Emw9wbIkwN1o7Q1a+l8GvTXZPhrcPsYOMj91sGMFgEj
rpBkNC4NLW3+PaB5Dn973JSjvmSNjSK3WcPyhdWsPE6a8Gm0HUxvx2Fh55szU3sX
9MY1RMOAM1Z940nsfFzSUekVwtnLgaccYLT8F6YA+eZIQ1N8Yv9WF/zitxX04aPG
Q6NljlxI/a32dsPtQ+hoWoUiC5UFVx5X7ikYWKmFaJwsjw7aPAw=
=z9MO
-----END PGP SIGNATURE-----

--Sig_/=TQ00VYIxA1gmN_RQot4VUv--


--===============1815604369406980175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============1815604369406980175==--

