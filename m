Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A194C433EF
	for <b43-dev@archiver.kernel.org>; Thu, 24 Mar 2022 16:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzVZsNA24WnBdLkRkHQXOLlcsettGtLwTZGe2e+lONw=; b=kxviJC9l2j8DIS
	AUpXKVvz3BMwX8yhJtMBm97jNORkYJB1SpXbHLx6+jm0Gz1FKaZFLfubD6BiQyuhD7X3E/blq6Xjn
	vE9iC986CddcYnZZoapj0CSlhxNFCMKYrvFx39x1OTIN/GdESXdIILzubKyquihYZFw9t/617fmMc
	p9tZaaUbtYuhR47NXbEA7oJc/U+bg83ISNfYlVhLyEAJ27qz5Amqcx8Jd3DRpuwnllBYjgN9ta8cE
	gAreqT0Y+vxV9LbY2C8K4ujqOlocdxE/LyvmejXFsE50hwjKeh6pYmJ+ByVxtS0/IhBB3268WELK+
	Y9IIUY7yebHHq0CQ6d5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXPtJ-00H6nO-SI; Thu, 24 Mar 2022 16:00:49 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXPr0-00H5Xi-Mp
 for b43-dev@lists.infradead.org; Thu, 24 Mar 2022 15:58:28 +0000
Received: by mail-oi1-x22a.google.com with SMTP id t21so422291oie.11
 for <b43-dev@lists.infradead.org>; Thu, 24 Mar 2022 08:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5/1n/yQL0PaM9gpjD8BL74vTTmyMhMnVzexUmrmhuJo=;
 b=Xd02s76ifoRZYHgxVZVoGj7o32xaP8PYrWtiLUWFsLaid3Xe+Zg4MvqlbbeUF3XWJy
 H1YsQvMOBj8Nqb1t0dXT4JKGp8mOaBbGUBbn1YBDIOaIQxb56dP1OCQvqz/Uj6VkdDIH
 2uTUcFwYNXNlH1ggTs2KnooZD7ZK2k1TtK93J5u4zT2LWYdA+3eL9KCA4XYjf6JRS1BB
 1kYs3JjyQu3kiibLECkxEGK/oTg/5uydV0Pd9EsUMj4NDr7S/Mi6Zrr04wEwL125Gfd8
 3NERsTPTYs9Xl09XzBeDK3pLH8lZ/FQ/Zq/zAb7fq+otxeovbtX8wd5CPDBDWF3ozAhK
 8fuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5/1n/yQL0PaM9gpjD8BL74vTTmyMhMnVzexUmrmhuJo=;
 b=VfJrRdVlN9/0kVqXGuJKUWHpN5ONhe+mjjbTYr1E8xikYROj4tGAAfBh8OqnOit4qv
 PntM066DPj0qPYC9+z/FY4QQM2to7DQz+hU3Pc8YKLnM57kQTa9CNzdKAd13VvAF0Y8w
 7QAQmBcU6MVLQwbI04GGQlby0IIsOPreZrjfF037CFAclV4YCCTaIyniLqRNG2eoUXFj
 Lx3Vla+K1fTIgYXoW/X59+SwyKFJIlv0sbJ7aoIozyWdiwbr0e/g2nZCbF+p7aSOcJ7Y
 0ivQAS6MiSv/On317Lit3i/uYjsRvbKxok4R1wqh3NLkuu74FGjhhTeWRl0cDiFoDjMm
 3cAA==
X-Gm-Message-State: AOAM530WNocPyoOkwbjhPc0Wwyxb22iVL8aj8n33iI6dJ0ZsrOzpH2K7
 Dl18iHm8a3D8upgQklcyqW4=
X-Google-Smtp-Source: ABdhPJx9Wki8uy2EDKrx8/rZ1eDeCsTF58VIL/O8LGICSDDrdUITcqbIF4jleblqxMIHXjrqPiNqYA==
X-Received: by 2002:aca:e102:0:b0:2d9:bdc6:b2e7 with SMTP id
 y2-20020acae102000000b002d9bdc6b2e7mr3108149oig.128.1648137504681; 
 Thu, 24 Mar 2022 08:58:24 -0700 (PDT)
Received: from ?IPV6:2603:8090:2005:39b3::1084?
 (2603-8090-2005-39b3-0000-0000-0000-1084.res6.spectrum.com.
 [2603:8090:2005:39b3::1084]) by smtp.gmail.com with ESMTPSA id
 m3-20020a4ae3c3000000b00320d7c78b01sm1403252oov.20.2022.03.24.08.58.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Mar 2022 08:58:23 -0700 (PDT)
Message-ID: <d7e3752e-0aad-e247-3708-41f7aba8248c@lwfinger.net>
Date: Thu, 24 Mar 2022 10:58:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V2] wireless: broadcom: b43legacy: Fix assigning negative
 value to unsigned variable
Content-Language: en-US
To: Haowen Bai <baihaowen@meizu.com>, kvalo@kernel.org
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648109173-28403-1-git-send-email-baihaowen@meizu.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <1648109173-28403-1-git-send-email-baihaowen@meizu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_085826_821317_543B501F 
X-CRM114-Status: GOOD (  15.94  )
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

On 3/24/22 03:06, Haowen Bai wrote:
> fix warning reported by smatch:
> drivers/net/wireless/broadcom/b43legacy/phy.c:1181 b43legacy_phy_lo_b_measure()
> warn: assigning (-772) to unsigned variable 'fval'
> 
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>

This change makes no change to the executable code, but as long as it makes 
smatch happy -

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Larry

> ---
> V1->V2: modify title of this patch
>   drivers/net/wireless/broadcom/b43legacy/phy.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/phy.c b/drivers/net/wireless/broadcom/b43legacy/phy.c
> index 05404fb..c1395e6 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/phy.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/phy.c
> @@ -1123,7 +1123,7 @@ void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev)
>   	struct b43legacy_phy *phy = &dev->phy;
>   	u16 regstack[12] = { 0 };
>   	u16 mls;
> -	u16 fval;
> +	s16 fval;
>   	int i;
>   	int j;
>   


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
