Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13396606A339
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 07:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AF6im23i;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=W5FpLjtm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X+8237kLv3AP4EQk0KGNJoA+ap03yJKHwnbhoMI7ZNI=; b=AF6im23ifL6U+q0GQD3o/HR2X4
	hGvESsKB0eIpN4Tjf7KZesGTOobu1ZrZQ/NyGg2+d8GQPRQlWMgfixaSrCSLyEIKhQ7BxjldWxpBm
	6pUGdz1q3ITse3l93BbthL4+lWeMKps4miBf/ayz4UOwjeWe0vPVbcdqnDg84cETtEk++8vvr72jF
	cBwzwEbJIdTrQZl/7E/PTsYk5pyMaDSm6MT+Q9uiab4Nck6XUnoyHEWnnMHELuRTqtYYsknp0M7hS
	Sr9CaSGaudOvQXhZTEoJmw1rCi1038PFqzi48iU2vLSPkDms4uT6Q8aq//Y6RXc+ckRxi5tJfNRqG
	tGWqiErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPEWE-0000000BTIQ-0kXE;
	Fri, 06 Nov 2026 07:37:50 +0000
Received: from smtpdh20-1.aruba.it ([62.149.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPEWB-0000000BTHd-0jVa
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 07:37:48 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PEW7xsYn9YWYhPEW8xWt0E; Fri, 06 Nov 2026 08:37:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793950664; bh=lrhMqVkvC2l9wTfLx9KxlyC0W3KVM5fsim8Tnpe93nE=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=W5FpLjtm5zrQDqnWOu7zCbMVr+T/v6F4x0hIuONyVIcOMIDQeoVshEcVF4LmKG3V8
	 JcO7fjZn/nSL6mHK2G573RIVYREf7qvEMFvs2kZ0iXjM3KZqpYXtA28ZS7t+JlJUWF
	 Q5fxXX2br31T1pqTRd4ngAl8fNisNFz0f/DBZjG/cFSAY3pmxPtbhQdWnJ6gByydBU
	 7B3sktTzYdOvo+vLF9UDdIXMmlX9dqT8ZB7ucU3mqBst6NgecER4lpEe3FLWtF7kky
	 bnoaAGawjMsRb9b8KGioiIYQ9F6y7Ny9NEeStaylTl9J2Ctlzl7OyKfcAFTZ5UVA/u
	 HaFhg7RsH/YMg==
Date: Fri, 6 Nov 2026 08:37:36 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next 1/5] b43: N-PHY: fix the TX tone sample
 table
Message-ID: <20261106083736.00006add@mythread.it>
In-Reply-To: <20261026181543.77763-2-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
	<20261026181543.77763-2-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfKMMvZqQOwT4gbLw30XyDK0dIXXpytAPVVz+WpYfG98p64NbabkiO5Vx7R29rUy+zunnIfCV4QCnqn1uE1qt6ygKdF4J9qQYORa4+RvGw7NeE3jvLyH0
 wo7y8/68suKFFozWJSYhnEk8lanrJg6XNmwd/lgP7E5E450xW3b6p1WZxlwi9suADe5hwXY9IJeEzr3VWH2QP5RnkTkmTM05hfi+C4zh2QA3hSSW4zSu7sZ2
 6VkUcCrbwgIrja5mar8aN4L3TkdIQG3iKoein8Xi9HFxwKwqhe93WD7FjjRFO1tIhi96ZDN0AqL05TLWUPnGWCHo3iUxFy8vBGD+lFT1JyI8tksxH3A3BPfT
 IUZ56i4h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_233747_382255_A0649D25 
X-CRM114-Status: GOOD (  17.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno Mon, 26 Oct 2026 19:15:39 +0100
Luca Casati <luk00casati@gmail.com> ha scritto:

> b43_nphy_load_samples() masked with (0x3FF << 10) instead of shifting
> the masked I value, and b43_nphy_gen_load_samples() fed
> cordic_calc_iq() a 16.16 fixed-point angle (CORDIC_FIXED() of a value
> already shifted by 16) held in a u16, while the function takes whole
> degrees. Together the sample table ended up all zeros, so every
> calibration that plays a test tone (TX IQ/LO, RX IQ) ran without a
> signal.
> 
> Compute the rotation in whole degrees as brcmsmac does and fix the
> precedence.
> 
> Tested on a BCM43228 (N-PHY rev 16, radio 2057 rev 9).
> 
> Found and fixed with the help of an AI coding assistant (Claude Opus
> 5.5), by comparing mmiotraces of b43 and wl on the same card.
> 
> Signed-off-by: Luca Casati <luk00casati@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c
> b/drivers/net/wireless/broadcom/b43/phy_n.c index
> bbc30cbad..66565c14e 100644 ---
> a/drivers/net/wireless/broadcom/b43/phy_n.c +++
> b/drivers/net/wireless/broadcom/b43/phy_n.c @@ -1515,7 +1515,7 @@
> static int b43_nphy_load_samples(struct b43_wldev *dev,
> b43_nphy_stay_in_carrier_search(dev, 1); 
>  	for (i = 0; i < len; i++) {
> -		data[i] = (samples[i].i & 0x3FF << 10);
> +		data[i] = (samples[i].i & 0x3FF) << 10;
>  		data[i] |= samples[i].q & 0x3FF;
>  	}
>  	b43_ntab_write_bulk(dev, B43_NTAB32(17, 0), len, data);
> @@ -1531,7 +1531,8 @@ static u16 b43_nphy_gen_load_samples(struct
> b43_wldev *dev, u32 freq, u16 max, bool test)
>  {
>  	int i;
> -	u16 bw, len, rot, angle;
> +	u16 bw, len;
> +	s32 rot, angle;		/* whole degrees, as
> cordic_calc_iq() wants */ struct cordic_iq *samples;
>  
>  	bw = b43_is_40mhz(dev) ? 40 : 20;
> @@ -1554,11 +1555,11 @@ static u16 b43_nphy_gen_load_samples(struct
> b43_wldev *dev, u32 freq, u16 max, b43err(dev->wl, "allocation for
> samples generation failed\n"); return 0;
>  	}
> -	rot = (((freq * 36) / bw) << 16) / 100;
> +	rot = ((freq * 36) / bw) / 100;
>  	angle = 0;
>  
>  	for (i = 0; i < len; i++) {
> -		samples[i] = cordic_calc_iq(CORDIC_FIXED(angle));
> +		samples[i] = cordic_calc_iq(angle);
>  		angle += rot;
>  		samples[i].q = CORDIC_FLOAT(samples[i].q * max);
>  		samples[i].i = CORDIC_FLOAT(samples[i].i * max);

Drop the added comment, claude like to add random and useless comments
all over the code. Changing rot and angle type is not strictly needed,
but ok for consistency with brcmsmac.

The rest of the patch is good, i encountered the same problem.

Alessio

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
