Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4B7606A320
	for <b43-dev@archiver.kernel.org>; Tue, 27 Oct 2026 19:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EjhbcrTD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=iGlFLHxb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3hMJeEGQvLjGpZsmK4GONwhvCmyCVbx9gxO07UGYZyg=; b=EjhbcrTDTwV/fd5jzT4WHJtAtl
	1LY09+/oLGU7ZwaTv04AIKLOfm1oBIOwChaEq6ho7zPVwqjmCrfAaA4cp80ueKDEztfFaPnZrRJ+z
	Vj0TkhPzR2IJnvsEmuQ0fGq3z6HrgUR9jBkVJ2DzFbd+VaY89WyZGlYpsIooiouIB7/MUNJuWIMvW
	JH2Tjstv7aYtR5ZiBamkUfMwWDxfcF652MNDJdt1bDKPNEq6QATI4GaAL9YYnrluDfHSaWYDLdHB9
	8cBtcT3vIhz6PASfRpy5A3CJhIbePte7/VGn47lEWUa2OlU0+HSgscIRVDC/ANYf4QdaW33oU+LyM
	SkunFr9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmkK-00000005ddX-0tMn;
	Tue, 27 Oct 2026 19:22:08 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLmkD-00000005dcm-0iyL
	for b43-dev@lists.infradead.org;
	Tue, 27 Oct 2026 19:22:03 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Lmk3xaK2cb24ZLmk3xQPmC; Tue, 27 Oct 2026 20:21:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793128913; bh=Vi4/zqksLzLeB6wIQLU71fV8r0YSVyXdWoKGQv4Ax6k=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=iGlFLHxb7YXu6Dx0YwciZwyu1sg3QOGj45bF7KG/yOHlgFQae02Ll9Q0yfODvhMJW
	 MIMt90nhgDbCWhn42dalW0HIQsTAZtbzxyv9la1hPprb9fnz7kDOaFqUREMpcFBvXz
	 yOT8tkdG6maUheuYPIHqhBeUHftK3wwPPlGPVCT1iSpoN6S6pkN41JSdoOs8ROxc/q
	 ErT9D2svgQ/3DWcQzf/lCtitvsqURbgeh7qaRykgDHS/EXPa9F3eONuT90sXJs4qDh
	 405O6P94HvG8MLbZxG9uw6wUawhIbjhQG5L8A1Fszd3GkbNnmXZeOPYMvVYQ6lFO9D
	 96BZg+Oydj+FQ==
Date: Tue, 27 Oct 2026 20:21:51 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Andreas Wendleder <gonsolo@gmail.com>
Subject: Re: [PATCH wireless-next 1/2] wifi: b43: reprogram the MAC filter
 after an interface restart
Message-ID: <20261027202151.7dcdfe4e@fedora>
In-Reply-To: <20261014143225.82149-2-gonsolo@gmail.com>
References: <20261014143225.82149-1-gonsolo@gmail.com>
	<20261014143225.82149-2-gonsolo@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfAJtmQEREgsDqnAdqzUz0Ej+Q3246vMJHzt7XggsLVazcZXJt5c57BKP8Eb6JrBUVfoYtC6eTXmQOchC3TvvktmJ/+mdDKuzZy4pLvL4JagZc3KzJmik
 36PXRoicnrhN2JUak6xmjCXGjVZ6LFRew37CJurIDTUeGchl2zu4TfK59N4bpcyh6YCoVGIf7A57uOEXzptP4aN88cpbQoHRWHcC8qrEgWz994QeQAA9mqKA
 VKFtoFzlVfohu4lRcBmPx3RAw+MlpXJiut8hsPd/5ps0xNYBmYuKZy38OY9kuZ8fgI81NSA3WPfFp+wNWHLH/uWyfKwUKqsmRFp9cAvxL15cLx3R/uwxbIi7
 gWBhr2TODuDiqonXPHfj47spYYQd64LtapU3b6MV0/Q/Ovrlm5itwkbEaMh+8sYZ55ofRpHLu38JcWy4I96wmrbAvM8CvfWqPdkyGNBQeTbzl9S6xpA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_122201_674349_1CFE0EA8 
X-CRM114-Status: GOOD (  16.61  )
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
