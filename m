Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3C5C05027
	for <b43-dev@archiver.kernel.org>; Fri, 10 Feb 2023 19:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBW+LVRQelcylTDhv0I0l4q9yFmR1waqC3psI72vV8w=; b=bd5Zi4CE9EfeML
	LOjFucen3H94cnwK9/xXeftWMIpuXdMMSsBUiwtplme7Na0ql1+z5qm23dIqAi3XEf4pqNH1pin8x
	Do31BHH2enjmujOtFKjhKpe06z2ARs4KM1EFE6vRar/IIAlusVXMja3/57045FgaaCrG/Od7ffG+Y
	Lpax5bG4cJCERhxbpnrQ3ThCoYSukvFkxis8NxjFVv2OXOKLKdDMV7A6LA9BPechaD3/+yEFyacvq
	jm8xg00uCGrI3T18/5wfc+zafwMId8NssHPBo1DHqeV3Kb4vW1sDPddbqdtaiIVE3KDJYuBncNOb/
	X4WlCTYo+iApy2tzP0/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQYtb-0074B2-Sv; Fri, 10 Feb 2023 19:17:19 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQYtY-0074AU-6I
	for b43-dev@lists.infradead.org; Fri, 10 Feb 2023 19:17:17 +0000
Received: by mail-ot1-x333.google.com with SMTP id n25-20020a9d7119000000b0068bd8c1e836so1831325otj.3
        for <b43-dev@lists.infradead.org>; Fri, 10 Feb 2023 11:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RJ6DYKUnRf2BvJitwrvxftxNENLVAP827kjQc4CoUtY=;
        b=fdVqb2hwUQlc/m9ZUVIrV6pmbnhZibkQ2U7ysVwIMPrRqPFndNxjiAmYj73XpBGuVn
         eYJGsPbEpyBLd0HqyWFNlJFTDyqnPuDLqcUe8ggkwbV3/wGAz+xEeZ6un1/PyWBMkx7U
         e/LPGHycnaJ6z3ht0b2pM0GZ63Mdw8xZ+6qb4eEWfyqsR1f8nV/Q+26+H6lRadMSUO0a
         jocZ/2Qkncq8ir91hMfvIT7Et7n4kpzcag1CWnsmWxk/mFsHXWBGe9SPJlE7rR5gyZVH
         6UEEYLIf8OdCgMUucomHAIRL2C5LMOvDAl7KNeuE2kH8mGmD6bxoRWnv2LYOCqyNWs0S
         6Dhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RJ6DYKUnRf2BvJitwrvxftxNENLVAP827kjQc4CoUtY=;
        b=A1dVU7PFZlqSXBS+TtQWy6Kv7mJjGbWSHc36k8DXt2Rkmrfbu3mscPNRjODgbNh5Ra
         vfgnoVS4ZFMiwkM27GfWj0Km74EpQlfEUaKmBJCuSy6PHs2bVD/CuU+irB4n6CDgzaFT
         CpbtJ6f6sGrQt1LC74R+jjZjfkqoMZgAUaLZfDcsxlvIT5Tf0l0/Rz2EdSPWYE01jHAV
         ctGqDTmzlpgCtrLsiZeX20j7Ce5xTobhCBLxB3zs6mcgqWZh6R/vzewpHLDdKSBGQIzB
         ncFFpkZKeyIm07KcY23CC6Jbff2yhtemU8EW6xER2tDdXfEYH4loBzVC+TrPKAZF1qvZ
         M/Rg==
X-Gm-Message-State: AO0yUKUeQUtoeZz6ZEz8ZxFXC70wOQ7FO9Th6rnYvgGAN2oHRGqxlNQ0
	KMLl93tYQbZGHqKnU4+uwPU=
X-Google-Smtp-Source: AK7set9lyfpUmyGz4vDvUCf6FFoxlWq8wxAHWdLJkut9mvUvTTeH3f5YgrtFDaHnZICx5Afik33WEQ==
X-Received: by 2002:a05:6830:690c:b0:68b:d30e:7a9f with SMTP id cx12-20020a056830690c00b0068bd30e7a9fmr7411124otb.28.1676056634241;
        Fri, 10 Feb 2023 11:17:14 -0800 (PST)
Received: from [192.168.1.119] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id v23-20020a9d5a17000000b0068bc8968753sm2310874oth.17.2023.02.10.11.17.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 11:17:13 -0800 (PST)
Message-ID: <ff977e8e-f832-d38d-a6d8-4510d08bf306@lwfinger.net>
Date: Fri, 10 Feb 2023 13:17:12 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] b43legacy: Add checking for null for
 ssb_get_devtypedata(dev)
Content-Language: en-US
To: Natalia Petrova <n.petrova@fintech.ru>
Cc: Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
References: <20230210111228.370513-1-n.petrova@fintech.ru>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20230210111228.370513-1-n.petrova@fintech.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_111716_285948_EA25AA3D 
X-CRM114-Status: GOOD (  17.99  )
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

On 2/10/23 05:12, Natalia Petrova wrote:
> Function ssb_get_devtypedata(dev) may return null (next call
> B43legacy_WARN_ON(!wl) is used for error handling, including null-value).
> Therefore, a check is added before calling b43legacy_wireless_exit(),
> where the argument containing this value is expected to be dereferenced.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE
> 
> Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
> Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
> ---
>   drivers/net/wireless/broadcom/b43legacy/main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
> index 760136638a95..1ae65679d704 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/main.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
> @@ -3871,7 +3871,7 @@ static int b43legacy_probe(struct ssb_device *dev,
>   	return err;
>   
>   err_wireless_exit:
> -	if (first)
> +	if (first && wl)
>   		b43legacy_wireless_exit(dev, wl);
>   	return err;
>   }

Looks good to me.

Acked-by: Larry Finger <Larry.Finger@gmail.com>

Thanks,

Larry



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
