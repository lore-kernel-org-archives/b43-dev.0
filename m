Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B219F606A32D
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 22:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gMtHtOga;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=b4fM4jZx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HaGRxgqitScvIQMDBPbBnYpDb3+yCPyAZeejn2neLoY=; b=gMtHtOgakKcU/HPFD6xD1UhRO/
	6HhpNE3lzvk2EP3zM1/5g2PT1g2HCQjCMasoTjQyNPLhmbFCbhaBSlbvxRMfgbXKO5v+ySd1CfFie
	CFELMqnefbW6si5RdREDYN4MHaB8vmSTFCmVnrH6T1WjwVenrx60k0FLwvG4KzMshfnWzJP8xjoIN
	FaVoenlMr4mrfIII+ELaYqpAg5ZQUMyc8pSLOZrLb9X4PHvLEDNbM5ssQD9bxDG3a4Czx3DzHyn9+
	Oz+41LtKTn0zl8wJr1+IdU6GMs4fCc7SBEkBmT9Sjw7FLxzFgGNnWSqTgx6s4dlbSR/n3f9kzCf41
	Uoi0LH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPSAN-0000000DlaG-0MUl;
	Fri, 06 Nov 2026 22:12:11 +0000
Received: from smtpdh17-1.aruba.it ([62.149.155.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPSAJ-0000000DlYO-334o
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 22:12:09 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PSAFxplkKkeHhPSAFxTcEj; Fri, 06 Nov 2026 23:12:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794003123; bh=ZGt9E16nzykH9Ajz1azleSM2KOUHnN9gragopg2dc48=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=b4fM4jZx+A/efqkwy3m4W7yXmO7VPj6iFpgE5yfAkjIsyHQ1RGp3bLEFs5eXkt7Wx
	 F4zoejSXHRsvsUaBYQ6J3b5EB5Lx/1NasmaXywN0fBb7Xh8vL7iVSZqMlI5PfWT5T9
	 t1V9wIIyBS9uUlWwPhPdDVayi8PDXNb9QURGspgAgWZCYhPC33qzLNvoZPW+2V8TID
	 WVr9FzQwxp+P44xrZpmKqn9ruY18HwtvV9Q5gYOz5rEasZVER8l19dME9KFa/dR3Sq
	 tzVo5k+++di1Vllz7VmvLPHIL+g6Xu2oSBTnn1h+Q3HOh5J4IRJ+Yu/MmHO2HiBA3W
	 UqKR46w8Y+Tjg==
Date: Fri, 6 Nov 2026 23:12:02 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next v2 1/5] b43: N-PHY: fix the TX tone sample
 table
Message-ID: <20261106231202.00004c8b@mythread.it>
In-Reply-To: <20261106211516.273791-2-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
	<20261106211516.273791-2-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfBi88QmP7VZAFmeKmyOG6wE2hjbZ7XwFngFelYV3CKcWoMyOno4/el0tga/zV3LFCWEajCIbm4rQlPv1JiaDTSBnJ3BSe8aHTkCkqeiVUx72/2Db3Sa9
 s9BrBjb2MuNsQTXu+q2l4fkMDiQ5oaXtfTHBIK16cPc5VVwV8ox0OtDD4D87M7Rj69PL9Ku/R7uez/gpMY3eR3sgu9UVE5F3WAl3UttFijRdEHw2sWUQufnS
 Hl/x/nomOeoS9SeTpTavqCiZx74UfKpf79UZSgcRNqqEHQGh9z1x3fRzb+QaUyuZO4f5PeGPvS5w8Rj+oUGZ1zjTEt+z4JltgL5ui4TexLoFGNGnoUNxHJQJ
 /+QUhC8Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_141208_229974_9D999858 
X-CRM114-Status: GOOD (  18.53  )
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
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno Fri,  6 Nov 2026 22:15:12 +0100
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
> mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch1-tone-table.txt
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
> bbc30cbad..c4e6c1ac0 100644 ---
> a/drivers/net/wireless/broadcom/b43/phy_n.c +++
> b/drivers/net/wireless/broadcom/b43/phy_n.c @@ -1515,7 +1515,7 @@
> static int b43_nphy_load_samples(struct b43_wldev *dev,
> b43_nphy_stay_in_carrier_search(dev, 1); 
>  	for (i = 0; i < len; i++) {
> -		data[i] = (samples[i].i & 0x3FF << 10);
> +		data[i] = (samples[i].i & 0x3FF) << 10;
>  		data[i] |= samples[i].q & 0x3FF;
>  	}

True, this is a precedence mistake, the shift binds before the masking.

>  	b43_ntab_write_bulk(dev, B43_NTAB32(17, 0), len, data);
> @@ -1531,7 +1531,8 @@ static u16 b43_nphy_gen_load_samples(struct
> b43_wldev *dev, u32 freq, u16 max, bool test)
>  {
>  	int i;
> -	u16 bw, len, rot, angle;
> +	u16 bw, len;
> +	s32 rot, angle;
>  	struct cordic_iq *samples;
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

Correct, although changing the type of rot is not strictly needed.

>  	for (i = 0; i < len; i++) {
> -		samples[i] = cordic_calc_iq(CORDIC_FIXED(angle));
> +		samples[i] = cordic_calc_iq(angle);
>  		angle += rot;
>  		samples[i].q = CORDIC_FLOAT(samples[i].q * max);
>  		samples[i].i = CORDIC_FLOAT(samples[i].i * max);

cordic_calc_iq calls CORDIC_FIXED(theta) as the first operation, so in
the original code that would be equivalent to CORDIC_FIXED(
CORDIC_FIXED(angle) ), which is zero.

Reviewed-by: Alessio Ferri <alessio.ferri@mythread.it>

Regards
Alessio


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
