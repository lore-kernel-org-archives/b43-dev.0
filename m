Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39896606A327
	for <b43-dev@archiver.kernel.org>; Tue, 27 Oct 2026 19:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H40XD2kr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=l/WieYsh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Frdg4Bca98uYf8ptyMTYr3sP2y1hMbzwMGcWA4CFA6Q=; b=H40XD2krE3lAYZa3rP3jrqKQ2z
	qQdxBxVRT+rCemUZcFh/ad6vZrHlDFzlOx5nhZxnNkzDRVIqBaY3LUBypTLM6rzD2jGYuyg/gMOh0
	crqzPaosmkPUfpTKoEA3LKpJDYh0GlaZepkHlHIh8tCde3aTzj36KdYTwwsPgk4QLEaqgL8CZ73zI
	mnRkv70l+HaTq+sBjmMTcSIw84llKM6tLI7v0VJ7Kkw5zGHAiVVUwWWcEjd6VCUH7XmqxbhRnGLGM
	uV2SyvA5Dw5elw/q2duCIPl/FT6XbRK7xUKZ+ZiAseTnKbftZsVLAjsyAa6ztRKGaisonvhh/mEeH
	vBD8+Kyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmpA-00000005eNr-1trr;
	Tue, 27 Oct 2026 19:27:08 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmp6-00000005eNP-3F1u
	for b43-dev@lists.infradead.org;
	Tue, 27 Oct 2026 19:27:06 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Lmp4xaNNib24ZLmp4xQRCY; Tue, 27 Oct 2026 20:27:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793129223; bh=ydd4JzHCHSW/D/rNq55GJ+0dNek5/zgfZP8r+ktQeAA=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=l/WieYshVQrGL+tueTQL/5Cg4xBoeu+WavhbhwySXTQfGZezCqAJp9VbEI6damWh1
	 z+KjKqKZD4Ryo9SAFD1mjaeC2iYJgrIjM0S3Dhv8hOa7pMHoLoYPQTnrUZOtx5x0x6
	 ki7aKCHhsesQ6kTBr6QyHwmWPls31b/cEmzezxqmG9Yqf+kqBEeGN2InWngXt0B02N
	 NFR5Ogb0ZeeVoj6bTQXCW2MdXjYPzghyu9McWa9/so36oxf+gsCpavd2odMD/EDzYo
	 ils1J09FDEimCkhsJQGB7cRcdSwnZYTQhTbAx+T4B7W3ag/fkW2jPKvyxjP4cwnmVY
	 CuAL1RvXUO3bQ==
Date: Tue, 27 Oct 2026 20:27:02 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Andreas Wendleder <gonsolo@gmail.com>
Subject: Re: [PATCH wireless-next 1/2] wifi: b43: reprogram the MAC filter
 after an interface restart
Message-ID: <20261027202702.1c6902d8@fedora>
In-Reply-To: <20261014143225.82149-2-gonsolo@gmail.com>
References: <20261014143225.82149-1-gonsolo@gmail.com>
	<20261014143225.82149-2-gonsolo@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfBRL4N5AHK0FLusPkHBO9Nt1tEejrk7JIJ6QhI+1QP7K/1U14BgCaPrdTIkBbNLTqptQ0j05oYkFEKhifbuvdv3huPNZ8bJjzqqGUxaQSxna4CsNoP0A
 kYCJpujPBTORLdKPxU9McjsztjhJTY4/ruL/p4VY1SJtZ37YTFyAJMf/QDmPkoJUoTQKagXPJX62lnKZoNNL6eY9RMYsr8T7+c+8Jb/dDobisDtyS+76Y/Nk
 r1116KIo90Qa7Qg3ntaicT87S4FboyX7OdOMmT9UUFyGtJ9qDevGar+lc7UqlKNtw9Y8hCF02rfDapIlnEsBGzhYL7ZAMwYF/gjUHXQlokJ26k8Ni4F7qXfe
 PNVFPZW8JteqN1ds2tPln6tZHvfuiH8gh79VcV9VZCi2kl7Vg1JZ5bphzclUKHxbm9Tu5eLDInBnFxU1r2vsOsSjNHuc4/rlevLOm3qvc8DBwexg5wQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_122705_000865_AADA70DE 
X-CRM114-Status: GOOD (  15.11  )
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

Il giorno Wed, 14 Oct 2026 16:32:24 +0200
Andreas Wendleder <gonsolo@gmail.com> ha scritto:

> b43_op_start() clears wl->filter_flags, but mac80211 computes @changed
> for b43_op_configure_filter() against the flags it cached from the
> previous run. After a down/up it can report no change, so
> b43_adjust_opmode() is not called and MACCTL keeps the cleared filter.
> 
> Compare the requested flags with what the hardware was programmed with
> and add the difference to @changed.
> 
> Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/main.c
> b/drivers/net/wireless/broadcom/b43/main.c index 8f4aff3..57a5935
> 100644 --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -4318,6 +4318,14 @@ static void b43_op_configure_filter(struct
> ieee80211_hw *hw, FIF_OTHER_BSS |
>  		   FIF_BCN_PRBRESP_PROMISC;
>  
> +	/*
> +	 * b43_op_start() zeroes wl->filter_flags, but mac80211
> computes
> +	 * @changed against its own cached flags, so after an
> interface
> +	 * restart it reports no change and MACCTL kept the zeroed
> filter.
> +	 * Compare against what the hardware was actually programmed
> with.
> +	 */
> +	if (wl->filter_flags != *fflags)
> +		changed |= wl->filter_flags ^ *fflags;
>  	wl->filter_flags = *fflags;
>  
>  	if (changed && b43_status(dev) >= B43_STAT_INITIALIZED)

Tested on my DSL 3580L with a 4352 5Ghz, the chip transmit ok.

Tested-by: Alessio Ferri <alessio.ferri@mythread.it>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
