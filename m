Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9A2606A326
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 07:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=scFP0d0G;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=GLWf/+CO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1Fyp22fU/MrkPRK3362OtqiqGDkCipjHbOObDEnrlSY=; b=scFP0d0GmQXDFulyWGzMbnXykP
	CPOENLPz3ccnYKhEwS4zlbEcJ6iZti4ezmw/Pd48ICk7eTYEPvJwYDfE0AwXNFYsOLh1vLDvku6DE
	gHa/Hok4oHlAGVVjCj8BFybl+8qoytf88g3yqsJIoYgYjwOFfK/ZN4Y7KzceGSgwetj94LZ5F80gJ
	HTAXlncwpowH12cEDp50hiv+3rKCx3/KmD3tBnkw3Jw/PUmGy2iIY3Xqj8cjI9WtGErcqJw6k2t2P
	9wY9MelKemupD3ih0ukqKJ+wLf5FMfBX1x9QbaUW2oBJHKAGN2x+MnlpmPIEKPzrccnDhQGOCNpjk
	M7Efc1SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPEIq-0000000BRGT-05AP;
	Fri, 06 Nov 2026 07:24:00 +0000
Received: from smtpcmd03117.aruba.it ([62.149.158.117])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPEIj-0000000BRFg-1mxg
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 07:23:55 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PEIdxwhc807TYPEIdxOTvt; Fri, 06 Nov 2026 08:23:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793949827; bh=6SbqUfL5hMXbpyxVRRztlA9PDvpV/5i8dOmiY2Sb63k=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=GLWf/+COFJnmPR3Ai8RSAG55g1H3E3rGQ5zJSuQXWoxR2QZLjlL6xpApmfnuVOu6j
	 NjzRbIEibtgyEhi0k1cwdAKIvx2n2VipcI+RXqHtchSYp8BxITQp9/oKtjvWDVzjBE
	 LdSOy3SCHO5BQuqPcYRnHoB7Lkr1450+7/90lim3uZkYCI5ttfKrTkzf/4R112WRbf
	 Z+kIfmshYqwlx9uWnWnlotlmTnSlGeOseoW/tvXsi5MJZsK2r7n1jUAYjD8/rjdPs9
	 oCIEhGi18udptG/VPJjmrly06ieOl0OoYtxJTGD+8kPGjH0+2Wk0lhdGqP1Gtbu8t6
	 fvOhpe7No317w==
Date: Fri, 6 Nov 2026 08:23:39 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next 0/5] b43: N-PHY: fix calibrations on rev7+
 (BCM43228)
Message-ID: <20261106082339.0000398a@mythread.it>
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfIxpaP4UX8RgonJ88qN159lSQCkT3Zyw+Hd1oaxICobfLx8zkyq2hxPpBs7UzlnWdAdQqVasoKE7Xi2D5SDzRHFZ/FXx1tsqnz7yXzvpHFLyr5swliXH
 H+PJvXRhjyPaOhZA3/UR+BwCNvvar9nlnErVEIQsbgpHkr3CvxD/wjrEe+mZ7K4e1tKSFtN/R9oimVbkd5mx1ggJGKpYZDkn6P+6JwYySGcqYUeHm70rG91K
 y/IN/UQmEjiBT9YmIAOcbnDLIz6eXcha58zKbLlaYa+UXxGOR/p710VIENkOwRcdBrs98q74EE4OZvmHrnuaQDLvomGL9rXma//2FEhjsSJem+Im6Rl3v770
 7AgMyaEq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_232353_930925_98ED4E90 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno Mon, 26 Oct 2026 19:15:38 +0100
Luca Casati <luk00casati@gmail.com> ha scritto:

> On a BCM43228 (14e4:4359, N-PHY rev 16, radio 2057 rev 9) b43
> associates but transmits poorly: high retry counts and low rates.
> Comparing mmiotraces of b43 and the proprietary wl driver
> (6.30.223.271) on the same card, together with brcmsmac, turned up
> several bugs in the N-PHY calibration code:
> 
>  1. The TX tone sample table was loaded as all zeros, so every
>     tone-based calibration ran without a signal.
>  2. TX IQ/LO calibration: inverted busy poll, reversed final copy,
>     and missing rev7+ cleanup that left TX dead after a cal.
>  3. RSSI calibration: wrong VCM written on rev7+, wrong distance
>     formula, wrong rounding of negative offsets.
>  4. 2057 RC calibration: the first run was polled before it started,
>     leaving SCAP at 0 and the TX low-pass filter detuned.
>  5. A missing field in the rev7 TX_PU RF override.
> 
> After these, the register writes for the cals match wl's on this card.
> 
> Patches 4 and 5 and the cleanup parts of patch 2 only affect rev7+.
> Patch 1, the poll and final-copy fixes in patch 2, and the
> distance/rounding fixes in patch 3 also change code that runs on older
> N-PHYs (rev3+); I could only test rev 16, so testing on other N-PHY
> cards would be welcome.
> 
> Tested on the BCM43228 only (2.4 GHz, 11g/HT20), on v7.0; the series
> also applies to wireless-next. Throughput to the internet went from
> about 5.7/4.1 to 11.1/5.2 Mbit/s down/up, with fewer TX retries. That
> number is limited by the line and noisy, so take it as a rough
> indication; wl reaches 21-32 Mbit/s down on the same setup, so there
> is more to do (PAPD and TX power control on rev7+).
> 
> Comments and changelogs refer to wl where the fix was checked against
> its register writes. If citing the proprietary driver is not
> acceptable here, I am happy to reword them.
> 
> The bugs were found and the fixes drafted with the help of an AI
> coding assistant (Claude Opus 5.5), working from the mmiotrace diffs
> between b43 and wl and from brcmsmac. I reviewed and tested every
> patch on the hardware above.
> 
> Luca Casati (5):
>   b43: N-PHY: fix the TX tone sample table
>   b43: N-PHY: fix TX IQ/LO calibration
>   b43: N-PHY: fix rev3+ RSSI calibration
>   b43: N-PHY: wait for the first 2057 RC calibration run
>   b43: N-PHY: add the missing override to the rev7 TX_PU command
> 
>  drivers/net/wireless/broadcom/b43/phy_n.c | 120
> +++++++++++++++++++--- 1 file changed, 106 insertions(+), 14
> deletions(-)
> 
> 
> base-commit: 028ef9c96e96197026887c0f092424679298aae8

Can you link the mmio trace somewhere?
Usually a mmio trace is in the order of thousands of operations, so
telling something come from a mmio trace is not very useful, but if you
link and point to the group of operations that validate your point the
discussion is easier.

Alessio

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
