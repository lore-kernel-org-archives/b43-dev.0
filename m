Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B12606A324
	for <b43-dev@archiver.kernel.org>; Tue, 27 Oct 2026 19:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vX7R9Uvj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=KUeTccpo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gq983U2geXZPYMswY63PJBNPlCIsQ7z43VrDYYj7oNA=; b=vX7R9UvjrrbMSLnEvr0aOyv3ma
	P7/i8kgFgbl1PI1lkzToB7xab5zYYxWCMnNfzCYrNud3SRjGcNI1qmLqIPU+mnJ53fuBp5wNSmkcq
	6VDSdlVhzERjFgkjKp9TURC2VjwgSxj03yXi8aG4WleBk0nuzV7RONplSwQsK2JD906Dd00LpSOqK
	l0ao3DWhA8mTSP6LDaU39ZBXrgHC3iAYBYLqP8uRlTM+q5A5HfYFnRtnT0z2MUsds0N1UsxNU7Xbv
	mUJQlDdyUx4GYP2cCoEavGCtzf0WlPaEcjhxXX+sFYya2zH/EMR4JjtqkcyJxpQlvVBfHFEryZi5C
	3gWZltqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmma-00000005e3s-3UtN;
	Tue, 27 Oct 2026 19:24:28 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmmY-00000005e3V-2thE
	for b43-dev@lists.infradead.org;
	Tue, 27 Oct 2026 19:24:27 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id LmmWxaLrRb24ZLmmXxQQWF; Tue, 27 Oct 2026 20:24:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793129065; bh=79hy8iQP6nWklqYhGA5zjobTc6oRuzwgvP/0YcslbA0=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=KUeTccpoX/GoQD8/qErDUd4YG8SxuqgpYZF+0OtdYUUgW+rJCPvsO0FFvLiweA7Zj
	 zI4LPfiVH38ctMfnnZr82nyUWpeARn7lTawSTviOoQURjpxUxc7VNhWOuww6XbQRiS
	 1SzYG+DGNQ3ASzpQZYk9hZBTC2jBH5gp4BuRuQhXLb1xiYoLv3G4G/yqDnuPC4KWsQ
	 7KZdwO2NnruubG6zKG5nVFTpueNNtViqLF794+hHs/FmtOSwxgPKGQ2YLiZbeRrisf
	 FyYDAc/sbbWXavWSHe7gxScNx6+rN0E8Jkb6dixR3r+7jVlNc3oKv7zr6ec8o1kgRe
	 dWQtjtyPYrAIg==
Date: Tue, 27 Oct 2026 20:24:24 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Andreas Wendleder <gonsolo@gmail.com>
Subject: Re: [PATCH wireless-next 2/2] wifi: b43: handle 64-bit DMA engines
 whose index registers hold bus addresses
Message-ID: <20261027202424.7ae292c7@fedora>
In-Reply-To: <20261014143225.82149-3-gonsolo@gmail.com>
References: <20261014143225.82149-1-gonsolo@gmail.com>
	<20261014143225.82149-3-gonsolo@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfEDVfa2k2vHsr2FJ84UmPrST14eURm7sd4rC7mgoKCTzHNJ9lY6NKC6h9KdP1yYEGp6GfbED8NxpNPwkqlkGg0X+aR5TeuV9l0K668FBFhqERYXuJPHU
 46jw+KYNqI/34CMJW54/5lK/WWbdYvbf13huCBhW9tym/Q4DkC/45qmCRinKz3YSPsmmVUzHta46H+tab/fI4vgOgJ4xKF3eE8pEu9i011o7QRWyvBWjg9k0
 FDwsblCHn2uZkqaB0d76l9TploKHu6vBQRR/Eb5g4dQrZI79GutiEt9i6ysbAAbEbtNaQKxbQZFjKrncoNpQixJIzphA4QU8Z/rLialxXU7HMq78dhMapg1S
 54S6AVmcyvAA8Q8QJ/8fX73u54iTJKOZZqpIN8QPoslUrxAvf2mpphOmvs3hWAfmfWNpXwCTEGukH7jA6da/c5S9Gnm7uSH2tEmWXkUGYZqXSGhZe3c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_122426_894661_75FB1A62 
X-CRM114-Status: GOOD (  27.59  )
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
Cc: julian.calaby@gmail.com, kvalo@kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno Wed, 14 Oct 2026 16:32:25 +0200
Andreas Wendleder <gonsolo@gmail.com> ha scritto:

> Newer 64-bit DMA engines (found on the core revisions of the BCM4352
> and BCM4360) accept ring addresses with low bits set and then use bus
> addresses, not offsets into the ring, in the index and status
> registers. They are detected as brcmsmac does it in
> _dma_descriptor_align(): write 0xff0 to TXRINGLO and see whether it
> sticks.
> 
> On such an engine keep the ring address in the new ring->ptr_base,
> add it when writing TXINDEX and RXINDEX and subtract it when reading
> RXSTATUS. The ring address registers have to be written before the
> control word enables the engine, and the hardware defaults of burst
> length, outstanding reads and prefetch control (the *CTL_KEEP masks)
> have to be preserved.
> 
> Engines that keep offsets behave as before.
> 
> Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/b43.h |  1 +
>  drivers/net/wireless/broadcom/b43/dma.c | 52
> +++++++++++++++++++------ drivers/net/wireless/broadcom/b43/dma.h |
> 3 ++ 3 files changed, 45 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/b43.h
> b/drivers/net/wireless/broadcom/b43/b43.h index c0d8fc0..e1e8083
> 100644 --- a/drivers/net/wireless/broadcom/b43/b43.h
> +++ b/drivers/net/wireless/broadcom/b43/b43.h
> @@ -668,6 +668,7 @@ struct b43_dma {
>  	u32 translation; /* Routing bits */
>  	bool translation_in_low; /* Should translation bit go into
> low addr? */ bool parity; /* Check for parity */
> +	bool ptr_is_addr;
>  };
>  
>  struct b43_pio_txqueue;
> diff --git a/drivers/net/wireless/broadcom/b43/dma.c
> b/drivers/net/wireless/broadcom/b43/dma.c index 05da698..20d910a
> 100644 --- a/drivers/net/wireless/broadcom/b43/dma.c
> +++ b/drivers/net/wireless/broadcom/b43/dma.c
> @@ -212,7 +212,7 @@ static void op64_fill_descriptor(struct
> b43_dmaring *ring, 
>  static void op64_poke_tx(struct b43_dmaring *ring, int slot)
>  {
> -	b43_dma_write(ring, B43_DMA64_TXINDEX,
> +	b43_dma_write(ring, B43_DMA64_TXINDEX, ring->ptr_base +
>  		      (u32) (slot * sizeof(struct b43_dmadesc64)));
>  }
>  
> @@ -233,14 +233,15 @@ static int op64_get_current_rxslot(struct
> b43_dmaring *ring) u32 val;
>  
>  	val = b43_dma_read(ring, B43_DMA64_RXSTATUS);
> -	val &= B43_DMA64_RXSTATDPTR;
> +	val = ((val & B43_DMA64_RXSTATDPTR) - ring->ptr_base) &
> +	      B43_DMA64_RXSTATDPTR;
>  
>  	return (val / sizeof(struct b43_dmadesc64));
>  }
>  
>  static void op64_set_current_rxslot(struct b43_dmaring *ring, int
> slot) {
> -	b43_dma_write(ring, B43_DMA64_RXINDEX,
> +	b43_dma_write(ring, B43_DMA64_RXINDEX, ring->ptr_base +
>  		      (u32) (slot * sizeof(struct b43_dmadesc64)));
>  }
>  
> @@ -690,9 +691,19 @@ static int dmacontroller_setup(struct
> b43_dmaring *ring) & B43_DMA64_TXADDREXT_MASK;
>  			if (!parity)
>  				value |= B43_DMA64_TXPARITYDISABLE;
> -			b43_dma_write(ring, B43_DMA64_TXCTL, value);
> -			b43_dma_write(ring, B43_DMA64_TXRINGLO,
> addrlo);
> -			b43_dma_write(ring, B43_DMA64_TXRINGHI,
> addrhi);
> +			if (ring->dev->dma.ptr_is_addr) {
> +				ring->ptr_base =
> lower_32_bits(ring->dmabase);
> +				value |= b43_dma_read(ring,
> B43_DMA64_TXCTL) &
> +					 B43_DMA64_TXCTL_KEEP;
> +				b43_dma_write(ring,
> B43_DMA64_TXRINGLO, addrlo);
> +				b43_dma_write(ring,
> B43_DMA64_TXRINGHI, addrhi);
> +				b43_dma_write(ring, B43_DMA64_TXCTL,
> value);
> +			} else {
> +				ring->ptr_base = 0;
> +				b43_dma_write(ring, B43_DMA64_TXCTL,
> value);
> +				b43_dma_write(ring,
> B43_DMA64_TXRINGLO, addrlo);
> +				b43_dma_write(ring,
> B43_DMA64_TXRINGHI, addrhi);
> +			}
>  		} else {
>  			u32 ringbase = (u32) (ring->dmabase);
>  			addrext = b43_dma_address(&ring->dev->dma,
> ringbase, B43_DMA_ADDR_EXT); @@ -722,11 +733,21 @@ static int
> dmacontroller_setup(struct b43_dmaring *ring) &
> B43_DMA64_RXADDREXT_MASK; if (!parity)
>  				value |= B43_DMA64_RXPARITYDISABLE;
> -			b43_dma_write(ring, B43_DMA64_RXCTL, value);
> -			b43_dma_write(ring, B43_DMA64_RXRINGLO,
> addrlo);
> -			b43_dma_write(ring, B43_DMA64_RXRINGHI,
> addrhi);
> -			b43_dma_write(ring, B43_DMA64_RXINDEX,
> ring->nr_slots *
> -				      sizeof(struct b43_dmadesc64));
> +			if (ring->dev->dma.ptr_is_addr) {
> +				ring->ptr_base =
> lower_32_bits(ring->dmabase);
> +				value |= b43_dma_read(ring,
> B43_DMA64_RXCTL) &
> +					 B43_DMA64_RXCTL_KEEP;
> +				b43_dma_write(ring,
> B43_DMA64_RXRINGLO, addrlo);
> +				b43_dma_write(ring,
> B43_DMA64_RXRINGHI, addrhi);
> +				b43_dma_write(ring, B43_DMA64_RXCTL,
> value);
> +			} else {
> +				ring->ptr_base = 0;
> +				b43_dma_write(ring, B43_DMA64_RXCTL,
> value);
> +				b43_dma_write(ring,
> B43_DMA64_RXRINGLO, addrlo);
> +				b43_dma_write(ring,
> B43_DMA64_RXRINGHI, addrhi);
> +			}
> +			b43_dma_write(ring, B43_DMA64_RXINDEX,
> ring->ptr_base +
> +				      ring->nr_slots * sizeof(struct
> b43_dmadesc64)); } else {
>  			u32 ringbase = (u32) (ring->dmabase);
>  			addrext = b43_dma_address(&ring->dev->dma,
> ringbase, B43_DMA_ADDR_EXT); @@ -1080,6 +1101,15 @@ int
> b43_dma_init(struct b43_wldev *dev) dma->parity = false;
>  #endif
>  
> +	dma->ptr_is_addr = false;
> +	if (type == B43_DMA_64BIT) {
> +		u16 ringlo = b43_dmacontroller_base(type, 0) +
> B43_DMA64_TXRINGLO; +
> +		b43_write32(dev, ringlo, 0xff0);
> +		dma->ptr_is_addr = b43_read32(dev, ringlo) != 0;
> +		b43_write32(dev, ringlo, 0);
> +	}
> +
>  	err = -ENOMEM;
>  	/* setup TX DMA channels. */
>  	dma->tx_ring_AC_BK = b43_setup_dmaring(dev, 0, 1, type);
> diff --git a/drivers/net/wireless/broadcom/b43/dma.h
> b/drivers/net/wireless/broadcom/b43/dma.h index f9f65bb..eddc882
> 100644 --- a/drivers/net/wireless/broadcom/b43/dma.h
> +++ b/drivers/net/wireless/broadcom/b43/dma.h
> @@ -90,6 +90,7 @@ struct b43_dmadesc32 {
>  #define		B43_DMA64_TXPARITYDISABLE
> 0x00000800 #define		B43_DMA64_TXADDREXT_MASK
> 	0x00030000 #define
> B43_DMA64_TXADDREXT_SHIFT		16 +#define
> B43_DMA64_TXCTL_KEEP				0x03FC00C0
> #define B43_DMA64_TXINDEX				0x04 #define
> B43_DMA64_TXRINGLO				0x08 #define
> B43_DMA64_TXRINGHI				0x0C @@ -118,6
> +119,7 @@ struct b43_dmadesc32 { #define
> B43_DMA64_RXPARITYDISABLE		0x00000800 #define
> 	B43_DMA64_RXADDREXT_MASK		0x00030000
> #define		B43_DMA64_RXADDREXT_SHIFT		16
> +#define B43_DMA64_RXCTL_KEEP
> 0x03FC0000 #define B43_DMA64_RXINDEX
> 0x24 #define B43_DMA64_RXRINGLO				0x28
> #define B43_DMA64_RXRINGHI				0x2C @@
> -235,6 +237,7 @@ struct b43_dmaring { u8 *txhdr_cache;
>  	/* (Unadjusted) DMA base bus-address of the ring memory. */
>  	dma_addr_t dmabase;
> +	u32 ptr_base;
>  	/* Number of descriptor slots in the ring. */
>  	int nr_slots;
>  	/* Number of used descriptor slots. */

Tested on DSL 3580L, with 4352 chip on 5Ghz, the chip transmit and no
dma error arise. Without the patch the dma engine report an error on
the descriptor. Earlier in June i wrongly asserted that the DMA on AC
chips was needing 64 Kb segments, it was a wrong conclusion: going 64kb
did stop the error, but for the wrong reason.

Tested-by: Alessio Ferri <alessio.ferri@mythread.it>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
