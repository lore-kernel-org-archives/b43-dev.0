Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A2B606A32C
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 10:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eLkYzske;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=Uaq37KtJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SZe5oakHZa3S9cILdJ3+g5GU43h1xm3vrNlNvYe0rpI=; b=eLkYzske+DXvU5YauVxznHvaJO
	D0aA7REPtYN6s3EKa25C8CGI8Mvwr91w/klnXygCopjhLYNiE7r9/YX1FQbKMC4rXC/J7jR8vTCoL
	pZgxzssJ3Kbwum3XbA0yRt315K1GF3AnNQm6zDhFKYH/AymsmKpbylI+6fQDSzd1lncbgW8OVEo35
	h9JWpFa//9YuV0pXoznjGLITVq8xfd8/ynvKLX+NpuZH55353zsDKem82RdxLCdqTBvm1WGhbqiIf
	pXu7VTUm0JP+ktiPJzODM7dlPX53MvX5MqOiUgrW1iAEPhg62TTWVTiRrOtVy+IRM6u4sIYHsTKMf
	TN4h5DnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHO4-0000000Byrw-1JBb;
	Fri, 06 Nov 2026 10:41:36 +0000
Received: from smtpcmd03117.aruba.it ([62.149.158.117])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHO0-0000000Byr1-1hsO
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 10:41:34 +0000
Received: from DELL-MOBILE03.ad.smart.it ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PHNwxz9v507TYPHNwxQBzh; Fri, 06 Nov 2026 11:41:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793961689; bh=rnIcWknTm82+IfhrWzDsEesFJyKXyUrZvYdUYSEquMo=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=Uaq37KtJQ6CPpxSvZ8q9mpxdNteQwmJog9MVuJ4+TBoWbG+StLd7U5viN6sjSXzyx
	 129NbkVAt6YbuUOtgB4lUN2P5t5bdUCYBqcR4Z/t3cvi8aFFMtmPBvyv4QmLIIjB7R
	 AdWemGAXZawgRV3ONgoUKWULJdFh3sGE4VKQqRJX7HCUpxXWwbYWBy+4dgXCiQjQKy
	 oiFPbTikZl+rSSYH9NspcshI0HhraS1v6yIibZg7AgAAbxUNJxux92jimwPNWb1UAK
	 i58RRCNBpTAXbeXPxMeAVfFh4TU+qkuI+1T9KQMciBqhsgLBXb4G3oEOqNpuPMdEjq
	 myEctcse9LkAw==
Date: Fri, 6 Nov 2026 11:41:26 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next 4/5] b43: N-PHY: wait for the first 2057
 RC calibration run
Message-ID: <20261106114126.235ce63d@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <20261026181543.77763-5-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
	<20261026181543.77763-5-luk00casati@gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFkGvyzT1Bin2ldD6WeRe2uCeHeZ8fF2waBGxf38ODpZU7EB6Ba7SXADOaxej3LHJt6nPCEPkfkxqsbMraPOjnmq8yRwXobOAk6flFjtrzS5sZKy1ebH
 l8tx9sb0N2OBUmky0Wc227yUap8b3nIK4tOqTDdxQYmLtqBhTKJ8VQ47dVkRsn9aWkjfZREXcqhZfuSNNE6+C1lmfBxBDrj98Psb4pEoaszFs0a5mCvvvEL7
 b9gQNX4/JVBqIYdHfd6ErytrP+SkjQBOs63Fg634BpYfdxh/IhraXFPpvR3A7aPVnNaNslOw+PuXIE7HS264hcAT1awhScw8kkuG+dwssb2CtDulYLTTXkcw
 uvyWFFDwCtNN+JfadRPovxzBEUdjxA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_024132_907922_653DBD5E 
X-CRM114-Status: GOOD (  18.62  )
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

On Mon, 26 Oct 2026 19:15:42 +0100
Luca Casati <luk00casati@gmail.com> wrote:

> RCCAL_DONE_OSCCAP still shows the previous run's done bit for a few us
> after a start, and the first (SCAP) run polled it immediately, so the
> run was stopped before it happened. RCCAL_SCAP_VAL then read 0 (wl
> gets 8 on a BCM43228), which detunes the TX low-pass filter set up in
> the rev7+ workarounds. Sleep before polling, as the other two runs do.
> 
> Found and fixed with the help of an AI coding assistant (Claude Opus
> 5.5), by comparing mmiotraces of b43 and wl on the same card.
> 
> Signed-off-by: Luca Casati <luk00casati@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c
> b/drivers/net/wireless/broadcom/b43/phy_n.c index
> 44769dbb7..cd50614ff 100644 ---
> a/drivers/net/wireless/broadcom/b43/phy_n.c +++
> b/drivers/net/wireless/broadcom/b43/phy_n.c @@ -938,8 +938,15 @@
> static u16 b43_radio_2057_rccal(struct b43_wldev *dev) }
>  	b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
>  
> -	/* Start, wait, stop */
> +	/*
> +	 * Start, wait, stop. DONE still holds the previous run's
> done bit
> +	 * for a few us after the start, so give the cal time to
> clear it
> +	 * before polling, as for the other two runs. Polling right
> away
> +	 * stopped this (SCAP) cal before it ran and left
> RCCAL_SCAP_VAL at
> +	 * 0, which detunes the TX LPF on radio rev 9.
> +	 */
>  	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
> +	usleep_range(70, 140);
>  	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2,
> 2, 500, 5000000))
>  		b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");


It seems to me, from your own traces, that wl does as b43. It
doesn't wait and it exits immediately, just like b43. So the commit
message is wrong. 
Note: There is a bug somewhere, because wl do read 8, while b43 do
read 0, but this isn't the reason. Find the real motivation and provide
the real fix.

Alessio

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
