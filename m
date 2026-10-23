Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F035D606A324
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 20:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t3DVKKMv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bues.ch header.i=@bues.ch header.a=rsa-sha256 header.s=main header.b=faQCOktY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QbD5EZsqQkLfg0NP2IZF3o7rlRVDc5RCd0zOF/YZFX4=; b=t3DVKKMvYhL3fncFqcySY/DYVd
	uDt36Rfhc7ae9j62QtABHJcCtdX1vQVrCeEo3KU5ZNdDM32I29ctRtXKEAIBregNpGbj0bPK6EnCo
	FG6kO9xaFCJDQZNJnDuAGix2Pbn2KAbRky0vGypmRG/IHi/d5B/m9FeeG0x71OQIydGb3+lIMJYDQ
	c7Kn8XSLYMhT5BaGJh/vtkqECBg7wYC1mJ8dAC/1ABZWwUPSjFh28KmmwXCEFPujhQ2GYzQRxZAVr
	v58av9Jf8dM8+ibClHxu+i8U74XR4HtCLWnPUk+wsvozy10QQfha2YLkohmyJTM1+kZziqtCCBMqU
	1vKDjIjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLfb-0000000Guv4-2zqT;
	Fri, 23 Oct 2026 20:15:19 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLfU-0000000GuuV-28K2
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 20:15:14 +0000
Date: Fri, 23 Oct 2026 22:14:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1792786506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m/PMCHPO/jr5fAoLR41c5oEssMjic1/6mLM+L0/ZmP4=;
	b=faQCOktYlanW4afHud0z/jvY8YQ3Tmv0i2ALoSWK2H8If1W+1uJVT7tGEiHoYVYqK1RBO+
	rR1YQhmJtJ3NVUphzwW1X76OekfXWPY9+Z1BNPZrrNHb1S1c6Mw0NJKrryPE8ctkXF5mWB
	DMV8mOk7hWmENQPPj2am++9RrEU4+yAdDU/BvkAD/1Vv4FoKApUnQERaY6Tw2PfoiD4+8p
	MIasi1nbRa5Jb0kImelCHnxPQidwk3gbnyQA1gESF5Hqos0eM73UsMGgHSyJuu70pjBNFG
	pY8Nj/XLzX/Iz1h5LYjTnShAocH6ZJoBLNy4ipiyj4bZrrQ6P3HlVr8lgNavQg==
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org (open
 list:B43 WIRELESS DRIVER), linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers
 DMA_BIDIRECTIONAL
Message-ID: <20261023221424.2722795e@barney>
In-Reply-To: <20261023190653.70741-1-rosenp@gmail.com>
References: <20261023190653.70741-1-rosenp@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_131512_766378_66DF2BFB 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: multipart/mixed; boundary="===============5605471517119407258=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============5605471517119407258==
Content-Type: multipart/signed; boundary="Sig_/EtGF2lcPb61ELDgqh=HK/KQ";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/EtGF2lcPb61ELDgqh=HK/KQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Quite honestly, to me this looks like a lot of AI slop is sent to b43 these=
 days.
Can you please slow down your submissions so that actual people get a chanc=
e to review the stuff?
Thanks!

--=20
Michael B=C3=BCsch
https://bues.ch/


On Fri, 23 Oct 2026 12:06:53 -0700
Rosen Penev <rosenp@gmail.com> wrote:

> b43 poisons each RX buffer before it hands it to the device, and drops
> a buffer that still carries the poison, as the device sometimes skips
> one. The RX buffers are mapped and synced DMA_FROM_DEVICE. On a
> non-coherent CPU like the BCM4716 or the BCM4708, the map and the sync
> for the device then only invalidate the cache, so the poison written
> just before never reaches memory. A skipped buffer is read as whatever
> the memory held before, for a recycled buffer the data of its previous
> use: garbage frames, or a length that sends dma_rx() into its path for
> frames spanning several buffers.
>=20
> Map, sync and unmap the RX buffers DMA_BIDIRECTIONAL, so that the
> poison is written back before the device gets the buffer.
>=20
> Reported on a Netgear R6400 (BCM4708, BCM4331).
>=20
> Fixes: cf68636a9773 ("b43: Refresh RX poison on buffer recycling")
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/dma.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wirele=
ss/broadcom/b43/dma.c
> index 05da6987a845..c8585c6dff37 100644
> --- a/drivers/net/wireless/broadcom/b43/dma.c
> +++ b/drivers/net/wireless/broadcom/b43/dma.c
> @@ -353,8 +353,14 @@ static inline
>  		dmaaddr =3D dma_map_single(ring->dev->dev->dma_dev,
>  					 buf, len, DMA_TO_DEVICE);
>  	} else {
> +		/*
> +		 * Not DMA_FROM_DEVICE: on a non-coherent CPU, the map and
> +		 * the sync for the device would then only invalidate the
> +		 * cache, and the poison of b43_poison_rx_buffer() would
> +		 * never reach memory.
> +		 */
>  		dmaaddr =3D dma_map_single(ring->dev->dev->dma_dev,
> -					 buf, len, DMA_FROM_DEVICE);
> +					 buf, len, DMA_BIDIRECTIONAL);
>  	}
> =20
>  	return dmaaddr;
> @@ -369,7 +375,7 @@ static inline
>  				 addr, len, DMA_TO_DEVICE);
>  	} else {
>  		dma_unmap_single(ring->dev->dev->dma_dev,
> -				 addr, len, DMA_FROM_DEVICE);
> +				 addr, len, DMA_BIDIRECTIONAL);
>  	}
>  }
> =20
> @@ -379,7 +385,7 @@ static inline
>  {
>  	B43_WARN_ON(ring->tx);
>  	dma_sync_single_for_cpu(ring->dev->dev->dma_dev,
> -				    addr, len, DMA_FROM_DEVICE);
> +				    addr, len, DMA_BIDIRECTIONAL);
>  }
> =20
>  static inline
> @@ -388,7 +394,7 @@ static inline
>  {
>  	B43_WARN_ON(ring->tx);
>  	dma_sync_single_for_device(ring->dev->dev->dma_dev,
> -				   addr, len, DMA_FROM_DEVICE);
> +				   addr, len, DMA_BIDIRECTIONAL);
>  }
> =20
>  static inline



--Sig_/EtGF2lcPb61ELDgqh=HK/KQ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmrbwCAACgkQ9TK+HZCN
iw5vLA/8DgP3NmxzLRRtxhfbKFM0SPl36d7r97iUfi3lnPyV2HiDvZR6R2AIK7V8
FmSgoLZTk73e29ildUC5bzampS/b2Ds220dSxNNvEE1dkwxjatPNQvR69GnRnitu
Jtzg51WaJxm4CSzOxEpaB+IZbpoW+hC+7hNFZh5gflkfXjocPa14o/mCK3sWZyvv
kSHXf32dRPZpz4S92feA8Ll88QvfaNRpLpWNu6AyoFYXFxn6CYOkYq7bbidcNCYz
43zatonqNJ/WhjlZ/94XYTqjCFazz4+htEF6Ztp4u5xExX8eWz8eJzhq34gvd5nW
bd20jVnC6A8Away6q81wD5wtFal2Fa5mpyy6F8YVjSrAW6NmE+x6h/op0a1l0Vw1
N1j+aibPst8NJhXQ9+h4KfDEh5t4nVohpaTEia4wzNZOtQPEYoUyzK2mh0/KiQbc
1xOHEXcjkIsZ0RlzEQ3YDNqM9m7Q9t2HS4hrwfMGdWlW0TxmhbIEBSQHhySQmtvF
TEI4fTeTW8Xg5x+U2hdU4hkv+Knq5AAavykNBU9Clg+jqhq3OZIbsEY3x+kuJafJ
W0wzJNi4cPwQDs4q5lJOki++s6u5fC3wWmgOomzJYmMxEDmYcgr2VmdyrvNQeTu7
H6OsBVVrPQ9942VwW6LzuLyERgFScOOx4UYEPCMqfBHbnPSWQrs=
=nu7c
-----END PGP SIGNATURE-----

--Sig_/EtGF2lcPb61ELDgqh=HK/KQ--


--===============5605471517119407258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5605471517119407258==--

