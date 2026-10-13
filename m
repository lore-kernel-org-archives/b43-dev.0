Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 919F8CC6B19
	for <b43-dev@archiver.kernel.org>; Tue, 13 Oct 2026 17:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=94B7vWzvzem0sMVPJyb6d9LalEMDbzEbJW+hxr4dH2c=; b=VmtqJ2F66gdaRd9wXEMEscJgcs
	Ap1TucUrAXcbLhr3sDeExJmi9WjJFO1zMD8fhyOZqE2rAh4I5/b0siB/5MsQfjzI19HLRxTqMNSy8
	QKQ/f+w+f6tNSRIsactUm/4lewoEb39W5vUxt/SCkDKbf1Ceg5iNZV1CaZ4Mrn52xXXRiYX/KrWkl
	LWtMF+Egkh4HONBpx9kEl8Vw4w+SMGyciEKEz8F1m5J4BSWX/BPVwzeztkTeTTRfp1JJ5wTkUDrGl
	hI9w+7sq/7N6ZeEv2q8gL27+l84285bRsUVysAAebn21yHiOiWhCFtlKjCdPgxRuqbqHWVuEbEWQr
	7V1iE8Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGg8A-0000000DfG0-4B3K;
	Tue, 13 Oct 2026 17:17:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGg8A-0000000DfFn-1x2C
	for b43-dev@bombadil.infradead.org;
	Tue, 13 Oct 2026 17:17:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=d9g6jP4qEhtT1uBeR2i4sCcfvskcoKc3UCgUipUHDac=; b=D+Ebi7gkAi/w2chAlIA+Y1Qj/b
	HwXUjfvummOfVUn7jp8H0mtmdZM4zssmlITSUsuCuy5rP4XHSErarMfJupZkz3ddHrlaj6QKBO6Cz
	F2e6rh719ArTR3L8XqifXJJuotCa8tYNKoFsk/Ot0XbaJS5/26AcORzVARToBdp0AnDqMx4+UN/H3
	HqZ+HBs3AYM5zK7Y2DEqJt1wR7mj4u+DQWbnAkvRLzrCz5YzFscDg+wj4gJPQQwIIocijBq1pgiih
	Q1FSd9IljdDipi7CrDYFmU2JRbz+pUptEEoewTHplT+Q9QHQ5++wdd+TDIlEniG3noYd4nBmAnT+W
	SWa/6Hhg==;
Received: from bues.ch ([116.203.120.240] helo=mail.bues.ch)
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGg87-0000000FqYC-1pFQ
	for b43-dev@lists.infradead.org;
	Tue, 13 Oct 2026 17:17:37 +0000
Date: Tue, 13 Oct 2026 19:16:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1791911850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=d9g6jP4qEhtT1uBeR2i4sCcfvskcoKc3UCgUipUHDac=;
	b=jfARWGMyO3/9I1xZ3a3fKDwhPFIhvfdWSgUu/pKPzYVXxl51dNTSqJgM88jUtcWtPjp5dV
	VeEwjvlC1KJMJMLbVrPzDJfrDvTR7kP/xOAvugimAtLLSgloV5R9reI7zrik/fsC9rkcHb
	VS6s6g75gp+MnoeF/GYqX8JYCoyzTm9W4ChOFCTtCwSZZEBo5KVy4niPX1x8eBtdH/IePn
	YH4aCMTe485sfjHhuwh09q+Oy86NzCJi8xQ9FIiqtZLl53NjTbBQVsQ/tqe53kiupg/aS9
	dr8UZiOBfZpdlAXRHwpMCEfFLdGRs3Y8DxdbHm9CLobDrLo4F0ZAc39xd/ai5g==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Andreas Wendleder <gonsolo@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org, johannes@sipsolutions.net,
 stable@vger.kernel.org
Subject: Re: [PATCH] wifi: b43: fix use-after-free in b43_bcma_remove()
Message-ID: <20261013191631.3bd9e1e9@barney>
In-Reply-To: <20261013000124.48605-1-gonsolo@gmail.com>
References: <20261013000124.48605-1-gonsolo@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_181735_623381_43F0CF8C 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Type: multipart/mixed; boundary="===============7094189182201334314=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============7094189182201334314==
Content-Type: multipart/signed; boundary="Sig_/NXc4D1nqH6VOP7oBQwhClrB";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/NXc4D1nqH6VOP7oBQwhClrB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 13 Oct 2026 02:01:24 +0200
Andreas Wendleder <gonsolo@gmail.com> wrote:

> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -5677,6 +5677,7 @@ static void b43_bcma_remove(struct bcma_device *cor=
e)
>  {
>  	struct b43_wldev *wldev =3D bcma_get_drvdata(core);
>  	struct b43_wl *wl =3D wldev->wl;
> +	struct b43_bus_dev *dev =3D wldev->dev;
> =20
>  	/* We must cancel any work here before unregistering from ieee80211,
>  	 * as the ieee80211 unreg will destroy the workqueue. */
> @@ -5691,14 +5692,14 @@ static void b43_bcma_remove(struct bcma_device *c=
ore)
>  		ieee80211_unregister_hw(wl->hw);
>  	}
> =20
> -	b43_one_core_detach(wldev->dev);
> +	b43_one_core_detach(dev);
> =20
>  	/* Unregister HW RNG driver */
>  	b43_rng_exit(wl);
> =20
>  	b43_leds_unregister(wl);
>  	ieee80211_free_hw(wl->hw);
> -	kfree(wldev->dev);
> +	kfree(dev);
>  }
> =20
>  static struct bcma_driver b43_bcma_driver =3D {

Reviewed-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/NXc4D1nqH6VOP7oBQwhClrB
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmrOZ28ACgkQ9TK+HZCN
iw6IdBAAqyTllSEWsIjkZbp2nGNOSl5JkyQWh2Id2BFGB9EKVAEJHvumWsraKdiA
HdMD4jp+smiu5mzva0jjwctzVfI2NnS3xExX/eeaPUVY9liWtU6wzV/nn5OG7uJ+
WWe8VjRs8+K65JF39rYpTSnnFuGLeqEX5psIpNL31w6PxalJlrdhCk1VKrOx3fzI
XTeC14I//1yxkDJRSTl8FLJS/2i76xmGtWCaKSTaSY+ZM4540AYR++TGJza4zEIr
IMr+fdXZLn+edr9SiRQeOqgTzIPE5iXeBIGOQ8UVT1wKSilO0vcsxRtrD36Rf5k1
rogSpx5brVtaugQZ7tZ2lKzx5gVm+5wyWpf9lGRKtkEhkOb+DfogAp7xlVV/h8Mc
z3J+h6U8/cYVw7H1imXd8Qa25SAAaNJE2JGbnpOoz2RFWBJWHGzhxSKs2sq4KFEH
OX6LcUzoD23cORbYiInLM9zIRXAaEP11i5eAI4hZiT9Q16TdeYiS1LzCkjilaM7n
YyOn6CYOAbdJCki/U5DpFsFFuDFZbFljA4Ab/dwfz13+2qFsIFPZ+wnJd1L6+971
oOKldm702D8KaDW6XYRY64U2nTSaNFgSY8lq+90yjGHTgE812vPkhcylPfNwUoGS
NfzlmON3PB1cBhf4j+Z48hxHYy2FH3+ehom16r/MYpZCO4PsoK8=
=elc1
-----END PGP SIGNATURE-----

--Sig_/NXc4D1nqH6VOP7oBQwhClrB--


--===============7094189182201334314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============7094189182201334314==--

