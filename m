Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C531FC79F85
	for <b43-dev@archiver.kernel.org>; Sun,  6 Sep 2026 10:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIMG5i7pPAF88leQByzZGtkZiroPNE//T9P48+KATt0=; b=K47Szu+0yCAqPM
	zZqqcUbNm6BiwWYN7Uw+w8SpkCkgVvk8FWoR7C+6sKN93yT8cSI5z0jFM1s36VX8QUC8MjS+5h80V
	IH3VBfh0RLjVA5raU7JEFBzB5CYbdxbYMM7BU0xupk1Q2ZHl+zuG90E10VWl/1+e+2SZrhwE51+iZ
	3IYaTylLc7Fu+38tj1TavpQBu0VW/lcFnu9aOvrHjS3S7ekMZ6eKpXO1KYJFBPTJDPelUpwC3d6nM
	2eR5Xc9Zut6+Ax1Japy0xkqsdsglGpZBLF+ZoZO1d1R1MSeEa14d3DWNR+si+1ZeE+/2lzFybhf6t
	WKaOgEESSPp0f4FIDkGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3AMK-00000004xIT-3rbV;
	Sun, 06 Sep 2026 10:44:24 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3AMC-00000004xHC-3wPx
	for b43-dev@lists.infradead.org;
	Sun, 06 Sep 2026 10:44:18 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-482f2ee53e7so1756156f8f.1
        for <b43-dev@lists.infradead.org>; Sun, 06 Sep 2026 03:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788691454; x=1789296254; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x0/+wqBmIy7IfhisO1aQJ97wf2sAIX1/xLpRpUIc4gE=;
        b=HrWULcEW36UJ/19PgPh+ujTUdzW0NOln2yASs+vXdI7ElIbWJEHeOi0J6dFKriVgtU
         YGWAbEVhjuJ49uj/jly3n4sw+Im/NvaNKJ/ls7XFNL7SaSQmxBoyw4fcclNEGCTrhEX0
         00pDCB4DYpjFjH3wRHpPpx1yIs7kK3Sf17J8tPQwmCzjo83VftUZWiTc+QloIcVoMrnc
         rxyKJnMbPwU8FexxEqPq1aB4M80EpJbYtuuP8cmbqrttkEv5neJp4iJUmgR36I8ksZZy
         a/UkEtqnyGZdF2n8PkrbwWDzh8kA0ieJdPkwngAn2pyYWkR53Lkfu4AUamPBPumvrxVh
         dLow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788691454; x=1789296254;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x0/+wqBmIy7IfhisO1aQJ97wf2sAIX1/xLpRpUIc4gE=;
        b=D3YZuTW1YGDOShpa9AFaJxHzkyYv4ZDiNrg+AmbGDOwwGuczNjVZ9TLl3V8rbqr+Fk
         Ysp/7GIEw6ibWU51phacO+DBMUCpYvLZLTNBIEMr7OmSWnRkFrXZAPI0rdLZ1VTVm//C
         KKldwgwacQUsGcFIjbhGws6HAoZlBZwp4Su5iDP8I+3PYuIxCnYecIlETWorsUnW0LqF
         5/wXVwIZudKdkj90SWTowLpjBeI5IAszrb2RKhpxYcVbXpqoJ0QXzSlQDZaTHZpjo9/S
         JSGuV2aV5cdZW3NaZdMrp6CeEyleKAt0RzDVIUODkMTOLhsQVULRSQCN+0Ee6Vgt46KH
         /Z4g==
X-Forwarded-Encrypted: i=1; AKwUvBzUFqkEkLnl2fY9L4+dUaHYrCn272YqcciilAgrNsnqivhG55d1ARbTBhhSFQHwlbx94hAdn8W8@lists.infradead.org
X-Gm-Message-State: AFuF++lPpTxff5lbgWmp+ty3X5zbdF899OQm6vuuR33Goc23qNUzXby0
	W9HK1KrH6DoR25Rqc2IV/9bKIOgjH34Ya2jh2Lg1URdbffH5Fro6TWYG
X-Gm-Gg: AYBFou2wGIOFHRwZ+/5YrAh3C+PTysic5XmIY4BZsdIluOREQVfjGyBiJkwEku9aSXs
	U/6Wv1lNJQrMBkpuKAPxpFK1e4pTYFmPbV5Y6787nxsJ/K23cjbdbB9kD1jp85HdYpjiH5j3mxs
	jnl7JskdP+Jr8y/ZNoqibY8rqxag84q0TgYspfJjID1jXnNTHnK508s3hrvPrwlxtRDBlBMvA9k
	7aGmE7BuGsCPjxEgqHFjzPKKYgob3V3PxNMg6A7r0pRDzxcn17Ll9R5knfFTZsDtlZLfgEvZXzo
	jDF9oJ3RCyzLGZDcHWRCEvfopkngSm8tACAjSIk57B+NMWAdWnPV4oHX0alX50Jsi7TIVMyRovn
	WkDftguXdTXkFgs7afHCO08JDFU4f2Km0o/mzBa2G8LFzy28NNkR5TkSDnNa+16EHkyyZbDndc1
	awsGR58AlSwAVXFNacpiNrz2ER5pvMgHOYN6IsE1hze+GBAPEycR81GAMqjEwcLLtmUV0YawejM
	GJLWiOtEZv7sWs2aegYjgq+tzttGIv2MuD8mMBq1TEB9uPwtTTRGNHxgO930/h2pA0=
X-Received: by 2002:a05:6000:2c0a:b0:482:d94e:f33b with SMTP id ffacd0b85a97d-48586e2ea8cmr18284958f8f.0.1788691454427;
        Sun, 06 Sep 2026 03:44:14 -0700 (PDT)
Received: from shift.daheim (p200300d5ff3cee0050f496fffe46beef.dip0.t-ipconnect.de. [2003:d5:ff3c:ee00:50f4:96ff:fe46:beef])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883be709sm21162225f8f.21.2026.09.06.03.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 03:44:13 -0700 (PDT)
Received: from localhost ([127.0.0.1])
	by shift with esmtp (Exim 4.100)
	(envelope-from <chunkeey@gmail.com>)
	id 1x3AM8-000000007UR-3W69;
	Sun, 06 Sep 2026 12:44:12 +0200
Message-ID: <d739eb56-b37d-4056-abf2-c3a4c9ba8662@gmail.com>
Date: Sun, 6 Sep 2026 12:44:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wifi: fix typos in comments
To: Hemanth Selam <hemanth.selam@gmail.com>,
 Jeff Johnson <jjohnson@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Michael Buesch <m@bues.ch>
Cc: linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, libertas-dev@lists.infradead.org
References: <20260904124353.6183-1-hemanth.selam@gmail.com>
Content-Language: de-DE
From: Christian Lamparter <chunkeey@gmail.com>
In-Reply-To: <20260904124353.6183-1-hemanth.selam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_034417_010220_C4B17954 
X-CRM114-Status: GOOD (  23.26  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On 9/4/26 2:43 PM, Hemanth Selam wrote:
> Fix typos in comments, reported by scripts/checkpatch.pl using the
> misspelling list in scripts/spelling.txt.  Only touches comments, no code
> changes.
> 
> Assisted-by: Cursor:claude-opus-5
> Signed-off-by: Hemanth Selam <hemanth.selam@gmail.com>
Sure, for the p54 and carl9170 parts:

Acked-by: Christian Lamparter <chunkeey@gmail.com>

Does anyone know what ever happened to the trivial-patches?
https://www.kernel.org/pub/linux/kernel/people//rusty/trivial/template-index.html
Is this still going?

> ---
>   drivers/net/wireless/ath/carl9170/fwcmd.h                 | 2 +-
>   drivers/net/wireless/ath/carl9170/main.c                  | 8 ++++----
>   drivers/net/wireless/broadcom/b43/b43.h                   | 8 ++++----
>   drivers/net/wireless/intersil/p54/p54pci.c                | 2 +-
> 
> diff --git a/drivers/net/wireless/ath/carl9170/fwcmd.h b/drivers/net/wireless/ath/carl9170/fwcmd.h
> index e5bcc364f088..40554e4bd149 100644
> --- a/drivers/net/wireless/ath/carl9170/fwcmd.h
> +++ b/drivers/net/wireless/ath/carl9170/fwcmd.h
> @@ -69,7 +69,7 @@ enum carl9170_cmd_oids {
>   	CARL9170_CMD_FREQ_START		= 0x23,
>   	CARL9170_CMD_PSM		= 0x24,
>   
> -	/* Asychronous command flag */
> +	/* Asynchronous command flag */
>   	CARL9170_CMD_ASYNC_FLAG		= 0x40,
>   	CARL9170_CMD_WREG_ASYNC		= (CARL9170_CMD_WREG |
>   					   CARL9170_CMD_ASYNC_FLAG),
> diff --git a/drivers/net/wireless/ath/carl9170/main.c b/drivers/net/wireless/ath/carl9170/main.c
> index 61c7a1288743..21d8798dedb5 100644
> --- a/drivers/net/wireless/ath/carl9170/main.c
> +++ b/drivers/net/wireless/ath/carl9170/main.c
> @@ -575,7 +575,7 @@ static int carl9170_init_interface(struct ar9170 *ar,
>   	 * NOTE: If the previous main interface has already
>   	 * disabled hw crypto offload, we have to keep this
>   	 * previous disable_offload setting as it was.
> -	 * Altough ideally, we should notify mac80211 and tell
> +	 * Although ideally, we should notify mac80211 and tell
>   	 * it to forget about any HW crypto offload for now.
>   	 */
>   	ar->disable_offload |= ((vif->type != NL80211_IFTYPE_STATION) &&
> @@ -677,12 +677,12 @@ static int carl9170_op_add_interface(struct ieee80211_hw *hw,
>   	if (old_main) {
>   		/* We end up in here, if the main interface is being replaced.
>   		 * Put the new main interface at the HEAD of the list and the
> -		 * previous inteface will automatically become second in line.
> +		 * previous interface will automatically become second in line.
>   		 */
>   		list_add_rcu(&vif_priv->list, &ar->vif_list);
>   	} else {
> -		/* Add new inteface. If the list is empty, it will become the
> -		 * main inteface, otherwise it will be slave.
> +		/* Add new interface. If the list is empty, it will become the
> +		 * main interface, otherwise it will be slave.
>   		 */
>   		list_add_tail_rcu(&vif_priv->list, &ar->vif_list);
>   	}
> diff --git a/drivers/net/wireless/intersil/p54/p54pci.c b/drivers/net/wireless/intersil/p54/p54pci.c
> index 6588f5477762..68e929fa213c 100644
> --- a/drivers/net/wireless/intersil/p54/p54pci.c
> +++ b/drivers/net/wireless/intersil/p54/p54pci.c
> @@ -534,7 +534,7 @@ static void p54p_firmware_step2(const struct firmware *fw,
>   		/*
>   		 * This will indirectly result in a call to p54p_remove.
>   		 * Hence, we don't need to bother with freeing any
> -		 * allocated ressources at all.
> +		 * allocated resources at all.
>   		 */
>   		device_release_driver(&pdev->dev);
>   

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
