Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C379C46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 17:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j8fEHLVIkfdgQCEx9AWt6CvlgX07YbiAUMpL2F87opo=; b=maqmr7Um3KlBfye2y7tCaIByR7
	ZrNT6qfSlKVapPnJRZXFqtW+rwgLbd016pign5zPVBX9580XUBX7X39aWcxMyxCeeRp8Cvh2OSs+f
	G4u0cA9oPpL3Xie/Zdk5N8GvpYUUUe2pPT3rgb/VsayEs4UNMcVCobSN165C3PHM4IvsWVngmhPaC
	g5G7T6VWutg6r84h3vg4nqHqRf6h9F2RgzEhixayKOVtbqRWaH2/8WbM5/XQGyn1menXi/E0psG5Y
	NvMcvIF5b+ujaGa0uG11hU2F3m/hD0YfIVaIA7ThGnL5iMZjk/RKZ9jLPgmyf9nj7cJZg160bJlaA
	VM/2V//Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdNw-003EIn-0L;
	Sat, 30 Dec 2023 17:44:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdNv-003EI5-0A
	for b43-dev@bombadil.infradead.org;
	Sat, 30 Dec 2023 17:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/R+VBcnIX7v3ePlSpnjPoHrocIPzmCSg9aho5xbBkms=; b=TB8H+XcMK/SHUGkslsjYYmaOt8
	ZV0N+MNHrCnORdYxKDCPFE8kf8y3HhshGpIwHGK4k4QCtne74teO7CIzpX9ioxiOXhN/ZyuIVEtsS
	5ducczTHy8nr2kDPchL57dQrV6PzQXrsL9SotH8uHSD297sHNSeQ3qsUL9KWS9jxYu0E+6fxIcSnE
	pMiZZo9LNipW3gUa6EuoCZ9gDOzd2jrO42rzt+jJTLQZ2C2lT1bJtVXJJ7xKhwnyBFF0kjnTdqbI1
	Y7JeWI/QGIWehHdQA7nsSc6KIwQzRas1eZ63yPcjd+StIGWMnE72JjQfq3ioPFWL4NzFHEo53YdZq
	q1hYVSVA==;
Received: from bues.ch ([2a01:138:9005::1:4])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rJdNp-007BZx-Jt
	for b43-dev@lists.infradead.org; Sat, 30 Dec 2023 17:44:29 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJdNP-000FuJ-1Y;
	Sat, 30 Dec 2023 18:43:58 +0100
Date: Sat, 30 Dec 2023 18:43:35 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 5/5] wifi: b43: Support advertising lack of QoS
 capability
Message-ID: <20231230184335.53e33db2@barney>
In-Reply-To: <87cyunk45e.fsf@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
	<20231230045105.91351-6-sergeantsagara@protonmail.com>
	<20231230144523.7df01ff5@barney>
	<87cyunk45e.fsf@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_174426_861954_017ED1D9 
X-CRM114-Status: UNSURE (   8.92  )
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
Content-Type: multipart/mixed; boundary="===============0341576824906908373=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0341576824906908373==
Content-Type: multipart/signed; boundary="Sig_/04xsz+cOeeKNmqlab4tIDAR";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/04xsz+cOeeKNmqlab4tIDAR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Dec 2023 17:10:26 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> > The firmware probably is just too old for this device. =20
>=20
> I just retested with newer firmware released on 2012-08-15. I still see
> the same issue with QoS. This appears to be the newest firmware I can
> acquire from http://lwfinger.com/b43-firmware/, which I extract from
> broadcom-wl-6.30.163.46.

It's still pretty old.
Nobody has worked on getting a newer version extracted for a long time.

But I'm fine with just disabling QoS on this device.
Upgrading to a newer firmware probably is a bigger change.
That could be done later.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/04xsz+cOeeKNmqlab4tIDAR
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWQVscACgkQ9TK+HZCN
iw4dZw//dQ+J3UdZS2OD5DDjJw7tXIufz5nExYFDCnCPhiW9dArIJGqqZHi2TbTW
6fwbXwKma3TgOaUYLWKBVmbsBqDbCRcX63Wum4BBnrZQHml1YlY1b3Qow9348Rtz
btqV1tCaOd6dgTWtZsGcotTiXsh+qXoOI/hclbNkr32Oh+3D47f10x4i+N6uJSdA
X+G3wvfyI0LZbj3wxxkQ1uNL7r5SdwpQKdqaiidnW77IRT3nJYWEtSK2UqaeDdDw
U2xGkOdW8J/5qPAiUHdD7Pvla56xBO+RsMtxuDWWfHfqtrXF7psNV3sBK/IXrtA+
cHmQEO66J0WwGSZlBxEwrI0A0iF4k+StjmZEz/SZ/T9Grsoqh8PXFgBAJ6zHpriF
Z+W4BgS81VvdsioKvvUlaU296i8BU1Q7OjUBa1GMAJabdMmAkIZSL0Qj8Szwe3Ow
lBXXkTPeMbt2u/hMmFQe+Ws1KX/fCJJSlb8KpGWkUgAkzifuqdq+07/j+MRTUnQ1
x7EUxzd1jh0EWLRxe1uh554F7WKX360BYZYrWnILTQ9stzibAtqsU3ZKOv/OJqF+
jy7d+hs5k0JouILMxFVkb/FqqEids0lgYf2iS8tfHPGpY4WT7cqc5kwXGKeNE0vF
AEnGZSejBr+sYnhOpDqRwmdRXXPa0RYlK/vJKePJT3YjE5I1YUw=
=fzl9
-----END PGP SIGNATURE-----

--Sig_/04xsz+cOeeKNmqlab4tIDAR--


--===============0341576824906908373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0341576824906908373==--

