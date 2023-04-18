Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCCFC77B75
	for <b43-dev@archiver.kernel.org>; Tue, 18 Apr 2023 16:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=otFK1f8y+5IYp5BQzl+kT/cFG9MBdSOFmVd+dWY6QHk=; b=dzuf9nfCSlRRKfulRqNh6n2PNm
	Yv3m/TaqqNRnCEE5vG8LjrQVI5UYp+V5jnddbRK2hx6sMgcfumSsSwhgiKbtUNhgdTy9TY3oO85Ec
	OX80QMwzXa2PaBdV2euY8GRppHNlsWUIaJGPpb6qj9gK7Uyso8M/6/YbfuzEJtRtsM4ug2fWFtkK1
	EstPt/pAXVBW8O65xmpKguQ+GMWyuxv4p4/BYn+VujYSxVvcVnXTrH1ub02JNLIiE2pwjzBngx+T5
	2No8068rbRCQVr6/HWJoHs+K8VzHwkmmTb4paGn/zDYhDPyeIsYD54+YxJTRT6h660Tqki7oiYTtA
	vlmHLCxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ponx6-002jK6-0g;
	Tue, 18 Apr 2023 16:13:08 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ponx2-002jHN-0W
	for b43-dev@lists.infradead.org;
	Tue, 18 Apr 2023 16:13:05 +0000
Received: by bues.ch with esmtpsa (Exim 4.94.2)
	(envelope-from <m@bues.ch>)
	id 1ponwS-001CPg-VD; Tue, 18 Apr 2023 18:12:26 +0200
Date: Tue, 18 Apr 2023 18:12:04 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "John W. Linville" <linville@tuxdriver.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Natalia Petrova <n.petrova@fintech.ru>
Subject: Re: [PATCH v2] b43legacy: Add checking for null for
 ssb_get_devtypedata(dev)
Message-ID: <20230418181204.473e7898@barney>
In-Reply-To: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
References: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_091304_195349_35E2FE1F 
X-CRM114-Status: GOOD (  13.93  )
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
Content-Type: multipart/mixed; boundary="===============1569166626719290336=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============1569166626719290336==
Content-Type: multipart/signed; boundary="Sig_/3AByzQCFCjpBABSpZxJ8d0Q";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/3AByzQCFCjpBABSpZxJ8d0Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Apr 2023 07:29:18 -0700
Nikita Zhandarovich <n.zhandarovich@fintech.ru> wrote:

> Since second call of ssb_get_devtypedata() may fail as well as the
> first one, the NULL return value in 'wl' will be later dereferenced in
> calls to b43legacy_one_core_attach() and schedule_work().

No, the second call can't fail, because b43legacy_wireless_init() will
always initialize it before returning 0.

> a/drivers/net/wireless/broadcom/b43legacy/main.c +++
> b/drivers/net/wireless/broadcom/b43legacy/main.c @@ -3857,7 +3857,11
> @@ static int b43legacy_probe(struct ssb_device *dev, if (err)
>  			goto out;
>  		wl =3D ssb_get_devtypedata(dev);
> -		B43legacy_WARN_ON(!wl);
> +		if (!wl) {
> +			B43legacy_WARN_ON(!wl);
> +			err =3D -ENODEV;
> +			goto out;

And the 'goto out' would be the wrong error recovery path, too.

> +		}
>  	}
>  	err =3D b43legacy_one_core_attach(dev, wl);
>  	if (err)


Nack.
Please drop this patch. The code is correct as-is.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/3AByzQCFCjpBABSpZxJ8d0Q
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmQ+wVQACgkQ9TK+HZCN
iw7NzQ/9Ggyc5BtRToTBofdZbjnH/R/WeFz+RxXwxYLinJkQ/Cq6ilPkvqwf7w+y
6HltbMZ3xDd2+wqG9PGKwTqNy0on4Ja92nBZ+rh4zyIfOb8ng3/i6dkNkzd67QAc
vPzBblo2UMf8IUyJMhUGixGNNAZ+QK2iosPETZyG6Kk/UOVbkc1Ht2/Gxo67S2mK
rxezpiS253ECGpfkz7dFvooCwga2UmejgY3C547dcvmNTvvLh9xYFe99f1PtQc7m
IphZn5VLXOx1ptjVSzm2DE7pQjNdU0VaeGOjolmGtyBoWC2DqgqKEuDDgxkGhs2y
ZBLp8adRdGaZyU0Vp88xZJJtMXLrl2hvRqM29rSCRIve5FUjRkDovBbRsaVoogsy
1SHYuKwpY97j+PW8eZgsJ4L13cDsSZUYGcRG0l9rrq3B8K02VFEnAlFN/D0WXdRY
HKILvc3xjo+8MmM01gXeTfLan7i3PiTvi03cxM88Inh0zMQ1zV1w+eaXYR8VDpmF
grhBA94GsbeulgkNL19Lj7HQOmJ74QRWF+r2HhgwOlEOy7bqYKkM4Ht1Op4Sx85j
FpgQzjuGo9cVAZTVdr5JBPfI7Yd+1WJZm92HlR9iII9JFhrrDA19u11zTuBy6j/n
g6Y7bIyJiTmBD8trj8nRno2QVB75qevcQFBu/yOVXCwd68hzxlg=
=OX2A
-----END PGP SIGNATURE-----

--Sig_/3AByzQCFCjpBABSpZxJ8d0Q--


--===============1569166626719290336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============1569166626719290336==--

