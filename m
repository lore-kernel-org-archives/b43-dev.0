Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83703C3DA6E
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l2n/b329H2E296EGkcA/r46vBoRQVyI3vKCW+MHSu2o=; b=Z5S/1cokw0J2/0Y0MSIHbXpvDw
	qxWb0TcMF4dd4lvpLRRq/wf1C3XiWMo0LSto9gFDfNsx2QSH2hFdKJf21cPgqndgM+7AFkqIMnCWL
	dUZ52bGCbL9DM1yI6nEPVmKayn1tl4iRM0Lec95SouGFrSGDWkZ1BluLSWpcDM6WQKWeMdR18SPik
	teUZm/O198pKzQEp0Rr42tNWwT4548c3rUWdI8zxvl6V2mwPUzkLLj4D9kfbSKA2GB5DpHfCfMkXi
	uNeRVXD7BUgovWPvo3CM/NSe2sb3sU4ytvC4VG6aX1df8AoX4IjYDh7EM4xMJI9BxjH3/Srd0ZAmM
	YTOAtsWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJs6T-004HrN-07;
	Sun, 31 Dec 2023 09:27:29 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJs6Q-004Hqm-1i
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 09:27:27 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJs66-0006lb-2N;
	Sun, 31 Dec 2023 10:27:05 +0100
Date: Sun, 31 Dec 2023 10:26:32 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>,
 Julian Calaby <julian.calaby@gmail.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless v2 0/4] wifi: b43: Various QoS-related fixes
Message-ID: <20231231102632.4e6f39eb@barney>
In-Reply-To: <20231231050300.122806-1-sergeantsagara@protonmail.com>
References: <20231231050300.122806-1-sergeantsagara@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_012726_570180_12EDDA1C 
X-CRM114-Status: UNSURE (   8.98  )
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
Content-Type: multipart/mixed; boundary="===============0658093431644177573=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0658093431644177573==
Content-Type: multipart/signed; boundary="Sig_/oU+WI7IVMn8P07XG25DRyrC";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/oU+WI7IVMn8P07XG25DRyrC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 31 Dec 2023 05:03:27 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> Rahul Rameshbabu (4):
>   wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
>   wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
>   wifi: b43: Stop correct queue in DMA worker when QoS is disabled
>   wifi: b43: Disable QoS for bcm4331
>=20
>  drivers/net/wireless/broadcom/b43/b43.h  | 16 ++++++++++++++++
>  drivers/net/wireless/broadcom/b43/dma.c  |  4 ++--
>  drivers/net/wireless/broadcom/b43/main.c | 16 +++++++++-------
>  drivers/net/wireless/broadcom/b43/pio.c  |  6 +++---
>  4 files changed, 30 insertions(+), 12 deletions(-)
>=20


Acked-by: Michael B=C3=BCsch <m@bues.ch>

for the whole v2 series.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/oU+WI7IVMn8P07XG25DRyrC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWRM8gACgkQ9TK+HZCN
iw6Tbw/8DfJ057LLYYSvsQWxSxjEXCFP5kXzwtf+Mz3BfpJLJ5bThfAGCLx8qW7W
xAeTc/53XvHSjNnsV5i4bMF29eW2gdXQxzXY1b6xiDCSV8YuJFQp7TtO5q+LXpMP
ReflOhXfpbg8d6pcTj/wbGVCBJYN9Ycw12q9QrsrhOn7FsjRXdzq1Sv7wMOsF1GT
ye8djWsHoREH4LYYPgPa/+Y9k3l5Y94yOJbsjE71suecVzTgwKWBjTdFwSD1oi2F
MfDp+5cFM98I99CnPIXBdNMjeULCeWloDvI2j+oJ9l7o+o/QA4ypS7a3WzTfEdDU
IldGcAZ+4wQoigM249CbmRAHN0z0L0yjsZgPSbkdzAOqil9Tkm8ZhVz+yhtkdiS+
3a7exfcSf25TTBnzH/asC0qLrzCMW+9h2uZWc2DZpSABbYQB3tPiPDSL5buAkJ70
njctvYoiE9IPtXIjpXpGtztRw3e7CKJRvFfickX/0x9uMWVXM5uh1y4ecbZQSIF9
kCJekQdW8+pYv6SZCKg7WAZ42ggTbbbKNYF2OqMgxtRwQIMu4y9QMlyZkkH30twp
P+JIt9vn2Otm48db2z10vpjhUdzdpNCDORpNfh/d9oU8WrsID2YO2hMairlpUBfa
7ywJ0gXRIjKtFZSf1JQQ6wQjH39Tz4zRTZ7JFDHdUU9jIIM+i58=
=m0zx
-----END PGP SIGNATURE-----

--Sig_/oU+WI7IVMn8P07XG25DRyrC--


--===============0658093431644177573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0658093431644177573==--

