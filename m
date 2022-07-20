Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B77C433EF
	for <b43-dev@archiver.kernel.org>; Wed, 20 Jul 2022 20:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcBlYIDGSUWeNI3bost7Xtg+aGKfWUL6/3Orv3EQQfU=; b=ys+Ebq2lgKPjU8
	W4eHCwePKZ++dvnKBgiMU3+5Qg1RyTj2taoMLzb+h9LaPV8sxpePtR7gFaXuQOxpPqfrtf8UOS7EP
	cZFi1d0uSGzh9S3HruPV3vRfOfgq8blat5HMl/dk3XansmWMBJSwEYWfP91v3IdH6rVWxx2Z61OGs
	M/k4RkJAL6VxJhNXGDcVQcP1te2cviB3e0ADZr1kw1u6b0jXypXpUFIMbeX7IlunekHaHwBw6KVsu
	rnwF3+FKBVm0OcmVjJEXlvX3pgmMSQospRshYgOHi+jZBMiimKawDOG6nkaAdVqdooAPci+zitWYN
	98fWN5ETRWpdacung9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEGTR-00Arco-Dl; Wed, 20 Jul 2022 20:39:13 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEGTN-00ArVT-T3
	for b43-dev@lists.infradead.org; Wed, 20 Jul 2022 20:39:11 +0000
Received: by mail-oi1-x233.google.com with SMTP id p132so12328188oif.9
        for <b43-dev@lists.infradead.org>; Wed, 20 Jul 2022 13:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vYo+qaCAy2kmd+JZb7RtHEZUur+lwWu46ajHEuV1OqQ=;
        b=Cms7tZx/N8hxMKc1LO+wj2XK+KfkW1Gs9MVfISeLG0g276h3NoQFWxauM+uGYUYFu7
         1xU/Ca/zZLaN9p8fD1x08wlfZE+9siFYDEiRLQalx/wEOyEu1SFcAy1CXJJvcw8hfNaj
         2xJn4g5slvN+A3TxN53vVbk7/cT/+0Tdi0drQQIEWWL9LZgAYP/qKF3I4QFsjFVsDQvR
         KuSWTxCuLFdSiuOmd0AacGgQ/HUIbhYCqVIXLLG4H73OzAENECDtj/NsnazLw2rQgvcg
         nTblqI5VVZprYEqf4jzI42sl6xv9/vXl6Q9sJFSea3B0oyrH9at6/AkYkUjxq39dN+3A
         0zRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vYo+qaCAy2kmd+JZb7RtHEZUur+lwWu46ajHEuV1OqQ=;
        b=PQigyFqerIRpPwy2Si63OZQIxsD5RZ8mpDJPV2hvJur/X9kfKoW++BXJxXUCUjeil1
         X9hcK6Mks4QIhBkUZiXe9JgQWhdJDEEaPEwcTJ77rVzvld3Tn4zKtH6V9tvwWX5IeC9v
         xsNmjXI0/BuqmiZ/b31AtYUALJK8i6UO37bT1Jz0stCb+rnAS5RNke7JKv7jUNLTVhxV
         OY5IvFINOV45do/xZPBC1DAIXkLK5QT0NPVEddbFbLPPnfVHnR5kAtYjClpZQTPuT0Bs
         uJMKayTuWwQ1M+YTrFK60Ne4Q+0svtv/nEWTT8hJxj+zbSEvb1fBolBiDKqzHqqwPE1G
         AGgw==
X-Gm-Message-State: AJIora/K6h8KkC4XNyrHI4YEjtYAoLVL+WhPYDEGkSdDXCwZfzxzhLfk
	HolqdEpJSiHXoIivk7oQBWw=
X-Google-Smtp-Source: AGRyM1sgnAiJ8RYTiJen6TAfK7Sz31x/EYjbsspnQiUv2MhSTyTWZArmOJb0pp8O3A/wRYL3YPQKyQ==
X-Received: by 2002:a05:6808:d48:b0:339:b862:3abb with SMTP id w8-20020a0568080d4800b00339b8623abbmr3391898oik.22.1658349546228;
        Wed, 20 Jul 2022 13:39:06 -0700 (PDT)
Received: from [10.62.118.143] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id q204-20020aca43d5000000b003351fa55a58sm6895269oia.16.2022.07.20.13.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 13:39:05 -0700 (PDT)
Message-ID: <741dc563-4702-2004-4be0-01a578524747@lwfinger.net>
Date: Wed, 20 Jul 2022 15:39:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] b43:do not initialise statics to 0.
Content-Language: en-US
To: Xin Gao <gaoxin@cdjrlc.com>, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220720194245.8442-1-gaoxin@cdjrlc.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20220720194245.8442-1-gaoxin@cdjrlc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_133910_035008_8F3A7C95 
X-CRM114-Status: GOOD (  13.51  )
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

On 7/20/22 14:42, Xin Gao wrote:
> do not initialise statics to 0.
> 
> Signed-off-by: Xin Gao <gaoxin@cdjrlc.com>
> ---
>   drivers/net/wireless/broadcom/b43/main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> index 17bcec5f3ff7..5e233d0e06c0 100644
> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -105,7 +105,7 @@ int b43_modparam_verbose = B43_VERBOSITY_DEFAULT;
>   module_param_named(verbose, b43_modparam_verbose, int, 0644);
>   MODULE_PARM_DESC(verbose, "Log message verbosity: 0=error, 1=warn, 2=info(default), 3=debug");
>   
> -static int b43_modparam_pio = 0;
> +static int b43_modparam_pio;
>   module_param_named(pio, b43_modparam_pio, int, 0644);
>   MODULE_PARM_DESC(pio, "Use PIO accesses by default: 0=DMA, 1=PIO");

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks.

Larry



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
