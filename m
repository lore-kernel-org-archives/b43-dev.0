Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE38C77B76
	for <b43-dev@archiver.kernel.org>; Fri, 21 Apr 2023 22:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFRPcF3mUYMzB6KjTJmr7MhzdlbHx2tkQO/xGXEf+dg=; b=NW1MmTZqNS0et+
	nWSt7xZRY9aFrlylA41N96ocwgSpYwXuO7DuVeruDMKPOE8gXZSld3FUGFt0n8avQYwYRbfLgXZi/
	ZCLXE0pGeDjO5THTGxMXMDy68v689qIdLw9zGXfL0T6qdIC0+CIxpyyYWPi7UnTvZa5MeqLm/fQbI
	xustD+qIJJtnfdv97+m69QLytpYdf+C9CbQso6TgDeAdcR+XTV3rhXpATSVdr3PeC1pN0UV33nKsE
	/7H+0FTa6o4LDRry5vWv5pMPfcu7j2X+FqglfBIExxsJKcWYwlRo4cOemR8fkJ/CSjc1KLXrWHiXh
	BjBNdXYL5xLXjoUQsLnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppz1R-00BvuJ-0W;
	Fri, 21 Apr 2023 22:14:29 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppz1K-00BvtE-2h
	for b43-dev@lists.infradead.org;
	Fri, 21 Apr 2023 22:14:24 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-541af0d27d8so771603eaf.3
        for <b43-dev@lists.infradead.org>; Fri, 21 Apr 2023 15:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682115261; x=1684707261;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=43vS9Y9SxuHB8qIZkacOVEQ5kGycu1Gw9o9cTnjmisU=;
        b=blXUUO2nxUafWxpOZPEJusnDdC3YW964eDPfNn0gIkagxyQbHT6GIMQtTPtRmomCRU
         amm4THGe+EZubWQdzCjqG/2alIA6aSHe/aGhBb49AW8KH78Yni+E67bDG71j2HVpez0P
         OWKYKarqGQJya12oiVoj0aSRQODWPx5glSQAVrwrmiUF2sQr1YOFoLQI80pTEPiYw6mI
         3lR4l2lplibt7ZsAyU4IlYRG6ddbBMEzV8vVoB7nPVUaseA1dIyly6F5KRRt1t2UomyZ
         5sledeO6WnTuFGbjKbrRwyzU5rxJbknM8KJdCzp26VIpw+2MyFb9kFxRxkTDvMjsEXQ+
         is4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682115261; x=1684707261;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=43vS9Y9SxuHB8qIZkacOVEQ5kGycu1Gw9o9cTnjmisU=;
        b=QEGCtSWd1YOctLKXyRebPijJC9LsXYSJrN87qtKpuY42bqwjCQfx83DDKeh4Y4za33
         K7Lw4c6ycteIq+nd20p0UJgpNliP/XykJ/akek/iJPHBLLNdDG4n2hGaGV53697NZQOU
         B3l/V7ekkuRziYA+Tp7sIsdMeoEXJirbr0wwaf3RGyffUcIwoidmF5wmfbgQBzOir9os
         Y1znGh5eTy75Oug+BhjMlrb8wlUXTvDy1ECneP60HKXKlhXuEJtbVlExwphrWlwcviEm
         myHGAU9N77I0tsMPkEwSDYZ26LALaTPBPVAIIhcgsNTfjFm59jhQuPysy0wkEQ4gMDLX
         Q/Zg==
X-Gm-Message-State: AAQBX9ff5vd59g6cCwG6HexgtsrWJ7m5EwmcmE+bPSckOwER1YwK9XGt
	Ys+0SxUAWqV1+fHXBIS9Tk+SpV5LFzc=
X-Google-Smtp-Source: AKy350aFIbs8T0WhQr+wXwjG2BRSCFKbA93BIe1GzhEkniAo+/ROudi5dT+Up1bYUDAOpw7Fgw13GQ==
X-Received: by 2002:a05:6870:8308:b0:16e:92d2:e810 with SMTP id p8-20020a056870830800b0016e92d2e810mr4628550oae.53.1682115261049;
        Fri, 21 Apr 2023 15:14:21 -0700 (PDT)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id ec8-20020a0568708c0800b00183f77dcdadsm2181557oab.33.2023.04.21.15.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 15:14:20 -0700 (PDT)
Message-ID: <95cff855-cb12-cf66-888f-b296a712d37d@lwfinger.net>
Date: Fri, 21 Apr 2023 17:14:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] b43legacy: Add checking for null for
 ssb_get_devtypedata(dev)
Content-Language: en-US
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
Cc: Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "John W. Linville"
 <linville@tuxdriver.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org,
 Natalia Petrova <n.petrova@fintech.ru>
References: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_151422_878905_DB0C1A70 
X-CRM114-Status: GOOD (  22.51  )
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

On 4/18/23 09:29, Nikita Zhandarovich wrote:
> Since second call of ssb_get_devtypedata() may fail as well as the
> first one, the NULL return value in 'wl' will be later dereferenced in
> calls to b43legacy_one_core_attach() and schedule_work().
> 
> Instead of merely warning about this failure with
> B43legacy_WARN_ON(), properly return with error to avoid any further
> NULL pointer dereferences.
> 
> Found by Linux Verification Center (linuxtesting.org) with static
> analysis tool SVACE.
> 
> Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
> Co-developed-by: Natalia Petrova <n.petrova@fintech.ru>
> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
> ---
> v2: fix issues with overlooked null-ptr-dereferences pointed out by
> Simon Horman <simon.horman@corigine.com>
> Link: https://lore.kernel.org/all/Y+eb9mZntfe6rO3v@corigine.com/
> 
>   drivers/net/wireless/broadcom/b43legacy/main.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
> index 760136638a95..5a706dd0b1a4 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/main.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
> @@ -3857,7 +3857,11 @@ static int b43legacy_probe(struct ssb_device *dev,
>   		if (err)
>   			goto out;
>   		wl = ssb_get_devtypedata(dev);
> -		B43legacy_WARN_ON(!wl);
> +		if (!wl) {
> +			B43legacy_WARN_ON(!wl);
> +			err = -ENODEV;
> +			goto out;
> +		}
>   	}
>   	err = b43legacy_one_core_attach(dev, wl);
>   	if (err)

I do not recall seeing v1. One additional nitpick: The latest convention would 
have the subject as "wifi: b43legacy:...". Kalle may be able to fix this on 
merging, but it not, a v3 might be required. Otherwise, the patch is good.

Reviewed-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
