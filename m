Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF6AC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FZjBBl9wIBTEH0m5liCITDTnfORfpq68vHYC0Vv3YSE=; b=XruxDOFCQXgQpMnTSi96Ubiqac
	2gOqQD3QV7dU+0N0iYYHagwV7MxP90B0SpeDsNsoxvR3gxnqaVrzsv1gLO8yGZg3h6WG+nnFAY7z0
	Ky9eoIJwQiwF/LnnhRRp6Hy5IP0EMibu8JDuTvynJqNUx58D861gA1UHf+ZGUUXONEMcCD8LlaIAU
	Rt38Hgd8ODLxD7vRjrWoF/TmfmZAn9KHCffFT387IX8dqA4Fp9FJnf5fbWAgVhaCnD3I2PR6nuJ1u
	T5Z/1gauSz2T0RGZtTJ7mCbESRSYrG+VDUUIRV3cHIQfva5Of3wZa8Ye2C9/9dIur9U9TrzAF+1uv
	K2FR0Gig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZf7-002rQk-1C;
	Sat, 30 Dec 2023 13:46:01 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJZf4-002rQ9-0x
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 13:45:59 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1rJZf2-000BJJ-0F;
	Sat, 30 Dec 2023 14:45:55 +0100
Date: Sat, 30 Dec 2023 14:45:23 +0100
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 5/5] wifi: b43: Support advertising lack of QoS
 capability
Message-ID: <20231230144523.7df01ff5@barney>
In-Reply-To: <20231230045105.91351-6-sergeantsagara@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
	<20231230045105.91351-6-sergeantsagara@protonmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_054558_336297_2AB64601 
X-CRM114-Status: GOOD (  12.57  )
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
Content-Type: multipart/mixed; boundary="===============0117235741995817217=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============0117235741995817217==
Content-Type: multipart/signed; boundary="Sig_/T.bvxtOYGsFs/DdDLs.JbJn";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/T.bvxtOYGsFs/DdDLs.JbJn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Dec 2023 04:51:51 +0000
Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:

> bcm4331 appears to lack QoS support.

I think that's rather unlikely.
The firmware probably is just too old for this device.

> +static const u16 b43_no_qos_chip_ids[] =3D {
> +	BCMA_CHIP_ID_BCM4331,
> +	0,
> +};
> +
> +static bool b43_qos_not_supported(struct b43_wldev *dev)
> +{
> +	int idx;
> +
> +	for (idx =3D 0; b43_no_qos_chip_ids[idx]; idx++)
> +		if (dev->dev->chip_id =3D=3D b43_no_qos_chip_ids[idx])
> +			return true;
> +
> +	return false;
> +}
> +
>  static void b43_wireless_core_exit(struct b43_wldev *dev);
>  static int b43_wireless_core_init(struct b43_wldev *dev);
>  static struct b43_wldev * b43_wireless_core_stop(struct b43_wldev *dev);
> @@ -2587,7 +2603,7 @@ static void b43_request_firmware(struct work_struct=
 *work)
> =20
>  start_ieee80211:
>  	wl->hw->queues =3D B43_QOS_QUEUE_NUM;
> -	if (!modparam_qos || dev->fw.opensource)
> +	if (!modparam_qos || dev->fw.opensource || b43_qos_not_supported(wl->cu=
rrent_dev))

This looks a bit over-engineered to me.
Can we just instead do it like this, please?

	if (!modparam_qos || dev->fw.opensource || dev->dev->chip_id =3D=3D BCMA_C=
HIP_ID_BCM4331)

>  		wl->hw->queues =3D 1;
> =20
>  	err =3D ieee80211_register_hw(wl->hw);





--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/T.bvxtOYGsFs/DdDLs.JbJn
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmWQHvMACgkQ9TK+HZCN
iw7KyA//RGQAAGvzcl7lHIw3Q1W8KypUU6+E78hwrtWSmRIje8kjNCUAcdrnNCti
otWZV6CJrCEL0iay0cFAoym7vfaca3qFTqUtZ47OqvnhuIk2KuW93/LBNC2i04tY
Duo5FXAGkiZob7ARyDX77QQmfWxWFwZXF3L/tgovhVyzT8PQFAPfqCAUuCT4C/8Q
7pQ+/nInlvvCCE8qyAecBZKUoRCZUrgr+sP54zqAwsIiWsbCCIgxrL28YiaLMhei
1+W0LdyZFvPMr+wIHkD5ZdF5SKGuUq9vBQiMNbtXcF3zQcKOpVm/xBRXxuFLHnwV
xB01PO2CNf4sTy6pA5yIMaKpeOk05WokKkj2vCQWFT8XzS4YkQJD350zEVOIkWa0
vYNaxilDzTb3yaSZPk28klMRvL1mKlBlktaANVEReV+jCKd9gg1xQda2B5IDBKby
rI9YAURrwcc7awcoFC7Gy0+8SYmhXuWiiLn+rocGz3fEaUzjtA1Lihk4yo/RtS3z
3k5wAaBmsj8/arV2NnVxbL/Sh7Wd9Gxmt0ofaDvIzv62LOymPJJC0fjIgP+ANX5i
nfsiPA2LrzzkT7R4+KK9Hb7xq1Wn5gACvngPc27M92LkbhiJxmJR7m5OdBWG2suY
f9JyXTTDZhooqhTirb78Ctf7vR0OLt5xcethqpATESD6qQwOmbY=
=cBPA
-----END PGP SIGNATURE-----

--Sig_/T.bvxtOYGsFs/DdDLs.JbJn--


--===============0117235741995817217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============0117235741995817217==--

