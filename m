Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8475EC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 13:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=71ODr7rOd5De09QK/l+DRDJrVMkud+V1QPgZ5VKCrsM=; b=3NiaQtI+yYBnl6xkNeiawRbRsT
	KJjTBvwLekO4n/dAUipgxv0VBRTkHZXjRk6TQ+hm0dazEhfN2LTjIxdaFFZfocJ707BC6tY8u9Og1
	gxO1tmwF+KTA0v+fiPN55j4+S7i991yX66gHe/uHxTAe5kWfrjFsjk78yh02nx59v0dPAqh9wEDKs
	59fXoRQIP+/oNdaATLTtuH5LOAhpJ+vhIC81AJvXzrAdZHK+eU3Zrn5iLCAr9amFb6WgAohXrcF+u
	S8FhTqWzG0kUi146ICzMsTEZ4eJ/hIPs2PEUEutDbPtwvy6O6XgitmgVBCUdExm5HIFUPn2RxbbOL
	tJIFeLtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZVX-002qjg-2R;
	Sat, 30 Dec 2023 13:36:07 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZVV-002qio-01
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 13:36:06 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJZVD-000B92-1i;
	Sat, 30 Dec 2023 14:35:46 +0100
Date: Sat, 30 Dec 2023 14:34:55 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 1/5] wifi: b43: Correct OpenFW QoS capability
 warning conditional
Message-ID: <20231230143455.4d64ffc7@barney>
In-Reply-To: <20231230045105.91351-2-sergeantsagara@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
	<20231230045105.91351-2-sergeantsagara@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_053605_045419_C8593A08 
X-CRM114-Status: GOOD (  12.96  )
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
Content-Type: multipart/mixed; boundary="===============2435140501653672626=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============2435140501653672626==
Content-Type: multipart/signed; boundary="Sig_/DPVM1GyukumrzwBTrXX/GYf";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/DPVM1GyukumrzwBTrXX/GYf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Dec 2023 04:51:29 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> Trigger the warning message should be when the OpenFW capability for QoS
> does not advertise QoS support. Previously, the warning would be
> incorrectly triggered when OpenFW reported QoS capability is present.

> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -2713,7 +2713,7 @@ static int b43_upload_microcode(struct b43_wldev *d=
ev)
>  			dev->hwcrypto_enabled =3D false;
>  		}
>  		/* adding QoS support should use an offline discovery mechanism */
> -		WARN(fwcapa & B43_FWCAPA_QOS, "QoS in OpenFW not supported\n");
> +		WARN(!(fwcapa & B43_FWCAPA_QOS), "QoS in OpenFW not supported\n");
>  	} else {
>  		b43info(dev->wl, "Loading firmware version %u.%u "
>  			"(20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\n",

I don't think this patch is correct.
It should warn, if the firmware advertises QoS, because that is not
supported by b43 in case of OpenFW.


--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/DPVM1GyukumrzwBTrXX/GYf
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWQHH8ACgkQ9TK+HZCN
iw76ZxAAurASq9nsjCyeOlHYgd0pN/3LqmEX3OSxwMsOry8MP3yjmQk5xRT/mfSL
SeU4V6KqkvH3tBpHRkHhua8X3TkDRqKv2e0YvjOOAUpPm5U0qlWzdZhHQNyypum4
uAYLTUHL325m5k91mlnmC70wRrKn/GLrCewOCTdJa1g5+TUIq6Xx1J266GK2nmRl
1DTIsBoz8R9wLE5vk3UiIS3WFudddofd2A+Fwpqe601sX5CNKBlL2Leis0oZcLBR
xZ+H1f07AslPR9BR47wyohMdPXOGpyo1HloG6IeCgqp1l149mQVLlvNuw20uRGjN
JGe37rp22nc8n8qudMIobZT8+IeW2/8JRYBSeQ3eft+43c5pySkQcMEOPRhb4mLH
1CC3BYeeGoe40eCiJOVrdf1jGLtRsv8wCYUCsZ/T8jAHziKZ1dObyxTG/10JBtDi
2JuiWSHxsEFaKkbjbq5B0nsorb29YpuEQya7IYyHy7dixtP3mMdB3F4g//qHZb1S
i9YgtI0mcUaSE/0ahR4pRnbScyJV54uJfa+L9xHRTEpbp3y8toeVWcRncAOoPTQ+
x7pcqkOVQESjYfqmUfmab1zo/roXw9yN226THi5aQEv3S+uU7OpZffLOI5YkDV/a
TyOZKf75WIzDkUydwVPEqf+3J54T8tdYMZKaan4mMeF0VlA/bro=
=mRQS
-----END PGP SIGNATURE-----

--Sig_/DPVM1GyukumrzwBTrXX/GYf--


--===============2435140501653672626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============2435140501653672626==--

