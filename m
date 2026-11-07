Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8DA606A32F
	for <b43-dev@archiver.kernel.org>; Sat,  7 Nov 2026 12:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DxJ8V7Ts;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=jTh+l0VJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JtVu4mbFGEBBNUvb2iWLMdzBjEAiRdW0vE2LpjImDmI=; b=DxJ8V7TsijUzgfU21c4Dq/GqxS
	tYE8qAWYPIjqfsLOA28LoeMlC4B92Z44wdBSsIEAEvfAoE7OgmIFFFTNY5+1dteMp/QauWfyy7p3b
	gGuadeTVy2uajJtpGj/GkMhn61SmctxvUxt482tQr9p77P9WAcxbUWG1qO5VevYwDckHTwX0EGwq+
	EKaXKVqk6Ol/J5hH52F5krPUICo60CzCxV9/vnGK+ZQ75SE6Z73NnDsLJaOFNo9fdZi88ydj6jDsB
	/dzLJ49OTCoPreGJmkN0j0il3cy+G0zXzNVvFjMl9nKwD9NF+d+k2qzzJSJ3srGhe46PnYg3R4oMk
	+oT4QjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPf6S-0000000Edrv-2qo3;
	Sat, 07 Nov 2026 12:01:00 +0000
Received: from smtpcmd12132.aruba.it ([62.149.156.132])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPf6P-0000000EdrQ-0RUW
	for b43-dev@lists.infradead.org;
	Sat, 07 Nov 2026 12:00:58 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id Pf6Mx0fluV5J9Pf6MxrqXX; Sat, 07 Nov 2026 13:00:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794052854; bh=na2sHEYJEeB6e7NhX1E8BmZ+aTMgCGr2QTzvM1jjjwI=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=jTh+l0VJqMWA4Am/G3Co13pGGQtzZE5wme0z8BA4mprcgcgf46mXctRZ0mTFeGHRs
	 lDrUxcYS/wrfzlMihO3a+xz2tIB9QnQAYBSXZ2q+xRfUxXWS6YJkX9sBnKR2BAqOp2
	 3EkcQFLxXkioxEvbzmdeiOQsh1/Z1vlzl1ZeAg5KEWdYpFjA1Vnr9BC1v73JPv6/IP
	 Hdeo7c0dcPnGYPVV/SWi0IXiS65I+mZ5CPKLpQiRP0N+qsH6f5BfPLYy6h9lPyxn+S
	 nQ22RK2hkKy8vbvUOxC2h51/0wrPWUmaMHtJW8Ek2s5/Kb4EA1K6Ia7IVjmwrc20ea
	 6ATWAIJbAz4SQ==
Date: Sat, 7 Nov 2026 13:00:51 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Luca Casati <luk00casati@gmail.com>
Cc: linux-wireless@vger.kernel.org, johannes@sipsolutions.net,
 arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Subject: Re: [PATCH wireless-next v2 3/5] b43: N-PHY: fix rev3+ RSSI
 calibration
Message-ID: <20261107130051.000038d4@mythread.it>
In-Reply-To: <20261106211516.273791-4-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
	<20261106211516.273791-4-luk00casati@gmail.com>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFCngUd5vyRDeCf/xdD3wyk6twAO3SLzpOSdI5kURY1sIIl+9BIaFkvMw9jsv3WXhfjM3zTxBviNLZJmUC8E45o7ZOb0st61XfPbll7UBMc6NbEUSvwq
 pz1khMozNtQx6TCRUznBn8nsh3tBbcZ636C5RGOkWIwFj5K2ZSUW6LwuwBlkAGiLvnq1Eq9HXSZaE67PJk6HgIZ6wGaoNm6BPr3UYpKCKEhQvYZCHgvwXtip
 rGYZfg4lC5j1sC2tCpuGPYWGYJ8jHilwBxhd5EwzJY2FhU4JREYolP8YtyMwljJ7+Ab4+Vrab1G3Hi9It+g3DNXspyqAJ0orpgHPPP3qZXhB1752J+7s31OU
 K3pSnSJ1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_040057_331432_8991BFAF 
X-CRM114-Status: GOOD (  17.05  )
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

Il giorno Fri,  6 Nov 2026 22:15:14 +0100
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
> mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch3-rssi-vcm.txt
> 
> Found and fixed with the help of an AI coding assistant (Claude Opus
> 5.5), by comparing mmiotraces of b43 and wl on the same card.
> 
> Signed-off-by: Luca Casati <luk00casati@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c
> b/drivers/net/wireless/broadcom/b43/phy_n.c index
> 6b0140f05..36c07d891 100644 ---
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

Ok, in the original there was probably a copy paste error.

> @@ -2184,7 +2184,7 @@ static void b43_nphy_rev3_rssi_cal(struct
> b43_wldev *dev) b43_radio_maskset(dev,
>  					  core ?
> R2057_NB_MASTER_CORE1 : R2057_NB_MASTER_CORE0,
> -					  ~R2057_VCM_MASK, vcm);
> +					  ~R2057_VCM_MASK,
> vcm_final); else
>  			b43_radio_maskset(dev, r |
> B2056_RX_RSSI_MISC, 0xE3, vcm_final << 2);

ok, vcm is clearly wrong, the loop is meant select vcm_final, vcm
simply hold the last loop index.

> @@ -2219,7 +2219,7 @@ static void b43_nphy_rev3_rssi_cal(struct
> b43_wldev *dev) if (j / 2 == core) {
>  					offset[j] = 232 -
> poll_results[j]; if (offset[j] < 0)
> -						offset[j] =
> -(abs(offset[j] + 4) / 8);
> +						offset[j] =
> -((abs(offset[j]) + 4) / 8); else
>  						offset[j] =
> (offset[j] + 4) / 8; b43_nphy_scale_offset_rssi(dev, 0,

Fine

This change the code also for other revs, correct?

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
