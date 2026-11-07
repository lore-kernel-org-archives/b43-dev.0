Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71188606A32C
	for <b43-dev@archiver.kernel.org>; Sat,  7 Nov 2026 11:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ebsb9gpO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=YLwZGhto
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WA5B6t6wAairl0h7a/5DGM2raTmwGPCFQECMsQn3n6A=; b=Ebsb9gpOXRNoenxslxRrcMQOl6
	nPUI6rraICeOGlI6CmECQFw6HoP04hlzbjPl3J4lmwZRPus8odmYC0DzhnOoIX4g04qQQ+c9KW1YY
	Wntvi4Nwf+0Nv6LNiKpeZF3p9PRnr1sy4hzqbhL3ig78JjOFldHUXx/hlDKKw5dqC3H+1P9inaavm
	7B3PqI5CxQ9sp5HB5nYuf1p5wQBI9r3hvxr1bfZvEfe5msT/w6E9VPk795SuvKHOxTiwO+QEqELMJ
	bojo3y36vatMK1iRxHJSiEExc6990b5cRnMPqzw0Djui7VEIwn9eElqZLnMTnLHNZZFDc66PcNtKR
	gWnR3F+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPeui-0000000Ed7P-2vRu;
	Sat, 07 Nov 2026 11:48:52 +0000
Received: from smtpcmd12132.aruba.it ([62.149.156.132])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPeub-0000000Ed6W-0ViV
	for b43-dev@lists.infradead.org;
	Sat, 07 Nov 2026 11:48:47 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PeuSx0XYHV5J9PeuTxroJ5; Sat, 07 Nov 2026 12:48:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794052117; bh=hszukWnGhhh6opqByDn4MIdnuQ9jnNsyXnL56pWZ5Cs=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=YLwZGhto9OGzDDqhXrh9iVcImpXDZtlwF8oNH8MZsZDAV3VdyqKCOhf+Atmyy+ZyR
	 T44PP8wBhuqvnoH5cJzlKk+kPj9jNC6bftdMlHHPBM/Ew73RbuUV1UuQ7Wzonbuh1c
	 HxMOCUjEZDqsW4iHyQkMQ0AvoyYZJAYVDuMTxwECCDLt6TYptpeuAlb7Kz4NyVjZyM
	 QgQYj2aMV0h3Cam2w8PDtA+T4W/p4otYQKMyOBX505nqn6KlIDm4beQbD3lM3EACiq
	 LMYi5mJFPQh6cAE3UE/lNsb6fPs/vnxx2hU5NDkCbcQZgQeM/MblVqay0vLVa2Tqj0
	 omRRZssXFkxhw==
Date: Sat, 7 Nov 2026 12:48:34 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next v2 0/5] b43: N-PHY: fix calibrations on
 rev7+ (BCM43228)
Message-ID: <20261107124834.00003e91@mythread.it>
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfOKLfoyXNtJDuETR/nU1jvZUK6HjTvwiHDX0K3CWMD+YmzOWXWqFkbuPoJLHR9/YLN0OEzDyg1n6ZsiOFveAymtHLa4oWQKH8D583MdbZ9pAXc8YhvwB
 +AmdBcaPeiM8Sx8vyrWMQ8Sl28DkKbUDF4J1XXaAU4DThzuTACE8zJ1o4+Fcn13DQP1ZwSo2G8FdLNmUDq0pFde6AK+Y/rsgzqrCMOGo+ES/QgppybkQHQ+N
 x+PJRWkzUe9S7giQv1cmgCQ3eH2vyXyIGIECDgVA+5i6ftkVM7+Rt6xYyOj3zWwIdrKD/bQ3v5xtwHOkbBgB+Regq9HCCZFqvg5Dnz0GS+3e67WFs8vGbm0r
 kMJfeqct
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_034845_622603_AD032C44 
X-CRM114-Status: GOOD (  21.11  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno Fri,  6 Nov 2026 22:15:11 +0100
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
>  4. 2057 RC calibration: every delay was about twice wl's, so the
>     first run was stopped while it was running and SCAP read 0
>     instead of 8, detuning the TX low-pass filter.
>  5. A missing field in the rev7 TX_PU RF override.
> 
> The traces, and excerpts of the operations behind each patch next to
> the same operations from b43, are at:
> 
>   https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/README.md
> 
> Each changelog links its excerpts.
> 
> Patches 4 and 5 and the cleanup parts of patch 2 only affect rev7+.
> Patch 1, the poll and final-copy fixes in patch 2, and the
> distance/rounding fixes in patch 3 also change code that runs on older
> N-PHYs (rev3+); I could only test rev 16, so testing on other N-PHY
> cards would be welcome.
> 
> Tested on the BCM43228 only (2.4 GHz, 11g/HT20), on v7.0; the series
> also applies to wireless-next. With v1, throughput to the internet
> went from about 5.7/4.1 to 11.1/5.2 Mbit/s down/up, with fewer TX
> retries. That number is limited by the line and noisy, so take it as
> a rough indication; wl reaches 21-32 Mbit/s down on the same setup,
> so there is more to do (PAPD and TX power control on rev7+).
> 
> Changelogs refer to wl where the fix was checked against its register
> writes. If citing the proprietary driver is not acceptable here, I am
> happy to reword them.
> 
> The bugs were found and the fixes drafted with the help of an AI
> coding assistant (Claude Opus 5.5), working from the mmiotrace diffs
> between b43 and wl and from brcmsmac. I reviewed and tested every
> patch on the hardware above.
> 
> Changes in v2:
> - Dropped the comments the patches added.
> - Patch 2: the changelog said the coefficients match wl's; they are
>   close, not equal.
> - Patch 4: replaced. v1 waited for the first RC cal run and explained
>   it wrongly: wl stops that run right away too, just sooner. v2 uses
>   wl's delays throughout the cal instead.
> - Linked the mmiotrace excerpts from each changelog.
> 
> Luca Casati (5):
>   b43: N-PHY: fix the TX tone sample table
>   b43: N-PHY: fix TX IQ/LO calibration
>   b43: N-PHY: fix rev3+ RSSI calibration
>   b43: N-PHY: use wl's delays in the 2057 RC calibration
>   b43: N-PHY: add the missing override to the rev7 TX_PU command
> 
>  drivers/net/wireless/broadcom/b43/phy_n.c | 115
> +++++++++++++++++----- 1 file changed, 90 insertions(+), 25
> deletions(-)
> 
> 
> base-commit: 028ef9c96e96197026887c0f092424679298aae8

You didn't use check the maintainers right? Because you keep including
Arend...

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
