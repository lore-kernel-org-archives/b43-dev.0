Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2910606A326
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 08:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jEzAWLkg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=jLF40z00
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EExny4SkqiQZtsV57/0bzmrGmme1LTatS8p1Si6WnXA=; b=jEzAWLkgAlen73FhdNFX/JYbAx
	LfizXzW5Q3i6hZDhHaUtY/sBr8eqYqaey4OS7TWCxg7yI0ai6i4KGHo3ShsBwhHmPW5ZMJcW4+QJ/
	nnRHm1t0IvrDj9ELP0AOH27nKFR9FMc+rpZBSF1Lo5qZ3OgOTFj3Fci3AvtbER8GL0HatsuyxHqQP
	So1o1FbsWZHg11x2cA+TFwvRKRBWEvMnwqem3doR/jMPxnQkAuN02RRlz7vLIdwVdqk7A7bHFK44g
	bH3dAHJMXCB+W4uC/c71ng7164W2DZOC/OsyFaOL0TPO3CP3osW92E1dYOCSmtb1gdjB80enEcl1Z
	Xx1z5Kjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPF0N-0000000BWbC-2UCn;
	Fri, 06 Nov 2026 08:08:59 +0000
Received: from smtpcmd03117.aruba.it ([62.149.158.117])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPF0L-0000000BWak-2ES4
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 08:08:59 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id PF0IxxCty07TYPF0IxOlG4; Fri, 06 Nov 2026 09:08:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793952535; bh=qY4qgOMwJNb8zSvF+KwSDbCfjHytINrJK2G1w8yYlDc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=jLF40z00U1oCwfXffwUnIBfJHAlEMpRTzeXkNfZkn0pbNTZ7OBHm0qA//ZugijH9c
	 lBMBGPTGL+1ekcYvfnkJ30eUCiyUwFar6H60IHN5FwJmD1J08RBCmrq/bDCkxeQgJh
	 H9qxyozY1vmWJtCK2L6cCGKq3zIl0+0SipudY8JFB2xwsAAoQcivQq+eOvBZMXq1DK
	 fNFEee+b3lH9vZGpPMo5GMy42VGJ7Qo+5awePFTXplQIf9lnnfNO9yWfwf6Iy4lD9k
	 xuQiCmhbYf12vjFNEp8PfN9n/XpAktmmBcgT6/DLU51DdLsL7FsKpEc4N6lnQ7bqFo
	 kQa2sU610Ii2Q==
Date: Fri, 6 Nov 2026 09:08:46 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next 3/5] b43: N-PHY: fix rev3+ RSSI
 calibration
Message-ID: <20261106090846.00007154@mythread.it>
In-Reply-To: <20261026181543.77763-4-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
	<20261026181543.77763-4-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfLu8d2/rk62+pg5rMBbcbSvrzNMBCizzqOqelBCDYDi1saZItt1AEUT9lbAIITszMfDBKW6G+Dkb9D4j5YJmTajWMIY0RTEeRpS4Qouxufc5vIYL5VJm
 W+7/l8Z08O5mIDOrd36U8ljJP4i6YbPdZ3jhH3Sw2tTfND4pNElQRVstcwhUOAYlD3kSsF2R/ZQR0PSm81ZyyJ8Oc25WOSJG+eZr6g5dpIuXCxRYc5cgAxau
 T8YYG8FUE8n0NJmB7jQljkzQnxU2Hk4hXTmjaPttv8PWzVLniFHe/0qgaKCgCa3iQZNsjtCfgTBFg2SOQDWQv4zCyNW0KgixnWFABcvLaLWcbaRGHxV4jS+1
 6+wJmJpk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_000857_760938_27E50D7D 
X-CRM114-Status: GOOD (  21.79  )
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

Il giorno Mon, 26 Oct 2026 19:15:41 +0100
Luca Casati <luk00casati@gmail.com> ha scritto:

> Three bugs in b43_nphy_rev3_rssi_cal():
> 
> - On rev7+ the selected VCM was written using the loop counter (8
> after the search loop) instead of vcm_final; the 3-bit field turned
> that into VCM 0 on every rev7+ PHY.
> - The distance used I*I + Q*I instead of I*I + Q*Q (brcmsmac
>   wlc_phy_rssi_cal_nphy_rev3()).
> - Negative W1/W2 offsets were rounded as -(abs(x + 4) / 8) instead of
>   -((abs(x) + 4) / 8).
> 
> Found and fixed with the help of an AI coding assistant (Claude Opus
> 5.5), by comparing mmiotraces of b43 and wl on the same card.
> 
> Signed-off-by: Luca Casati <luk00casati@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c
> b/drivers/net/wireless/broadcom/b43/phy_n.c index
> cabf61870..44769dbb7 100644 ---
> a/drivers/net/wireless/broadcom/b43/phy_n.c +++
> b/drivers/net/wireless/broadcom/b43/phy_n.c @@ -2167,7 +2167,7 @@
> static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev) continue;
>  			for (vcm = 0; vcm < 8; vcm++) {
>  				currd = results[vcm][i] *
> results[vcm][i] +
> -					results[vcm][i + 1] *
> results[vcm][i];
> +					results[vcm][i + 1] *
> results[vcm][i + 1]; if (currd < mind) {
>  					mind = currd;
>  					minvcm = vcm;
> @@ -2179,12 +2179,16 @@ static void b43_nphy_rev3_rssi_cal(struct
> b43_wldev *dev) results_min[i] = minpoll;
>  		}
>  
> -		/* Select the best VCM */
> +		/*
> +		 * Select the best VCM. (This used to write the loop
> counter,
> +		 * 8, which the 3-bit field turned into VCM 0 on
> every rev7+
> +		 * PHY.)
> +		 */
>  		if (dev->phy.rev >= 7)
>  			b43_radio_maskset(dev,
>  					  core ?
> R2057_NB_MASTER_CORE1 : R2057_NB_MASTER_CORE0,
> -					  ~R2057_VCM_MASK, vcm);
> +					  ~R2057_VCM_MASK,
> vcm_final); else
>  			b43_radio_maskset(dev, r |
> B2056_RX_RSSI_MISC, 0xE3, vcm_final << 2);
> @@ -2219,7 +2223,7 @@ static void b43_nphy_rev3_rssi_cal(struct
> b43_wldev *dev) if (j / 2 == core) {
>  					offset[j] = 232 -
> poll_results[j]; if (offset[j] < 0)
> -						offset[j] =
> -(abs(offset[j] + 4) / 8);
> +						offset[j] =
> -((abs(offset[j]) + 4) / 8); else
>  						offset[j] =
> (offset[j] + 4) / 8; b43_nphy_scale_offset_rssi(dev, 0,

Drop comments talking about what used to be.

At this point i suggest you the following indication to claude (taken
from mine):

"When you edit files inside a git repository, never add comments stating
what the code was doing or why you changed it, as git can already do
that without polluting the code. Those comments will usually rot at the
next change. Never add trivial comments, they have no use. If you see
comments like those, delete them. If I ever see you leaving N blocks of
comment back to back in my code, for any amount of N > 1, I'll come
after you."

It stops claude from polluting the code, with the added benefit of
reducing its own confusion when it rereads the code and finds its own
rotten and trivial comments.

Alessio

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
