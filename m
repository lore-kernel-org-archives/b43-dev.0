Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08594C77B60
	for <b43-dev@archiver.kernel.org>; Wed, 26 Apr 2023 21:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUCUrIBGjNH5Ep6Kr0e8svCBbB7qEO8KKVudANuosWY=; b=nhMTqJBu86vnhc
	yJqjuiIGPe8EfQ7VJX5SDxIZKAv6gy7HxonOper5WnADGsap68maAw8VE8KjQ4vNn08qNEcNNJ6Hb
	NuymmKHQcuICNwM58lPsXp2weDyD4g0sinvfBqHZoWluYbIfA2WeouF9lMkF3j00GO4q48mCtogo7
	Co8bH568s+NZPWXiLF6EW4csLo8p3dH1YihiVX6rHsDaWfvPtaxmRUm4FHjxkZ2cVf96uMe7xZ1Ic
	3XranqWdttsRv5F9eu2fWAoWhT/tXfx1Fs8bDakrfkLin7Pk7HP5GEofmtqLq5XhRqsaVAblKkz0M
	cPWoZPoZARc8uXXwYRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prmF0-004rYm-00;
	Wed, 26 Apr 2023 20:59:54 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prmEu-004rY4-1S
	for b43-dev@lists.infradead.org;
	Wed, 26 Apr 2023 20:59:49 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-18f16a2c329so227812fac.0
        for <b43-dev@lists.infradead.org>; Wed, 26 Apr 2023 13:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682542784; x=1685134784;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2Yz4qB0Upm2dHZe1lD1B+YiYLe86VCrk5ulxAt72jd4=;
        b=cfy9vcQhCZnFdZOjBTW8PkOEx798QA1mKrvVgJaEazoep2tPpmx/LOPdHi+GLmoVQ0
         AwW4SlJOwqx1W3B+aT+LM6B56gpVW7x41LpqR+Q841jS+7wrMbI/lKCDF6hdaZ0MgTTr
         adSVf0X/pqlyXgsmhOr/gZVDG1ZZja671n+ymOknV5dglAs1gBu11U5X7ojRBNM7v7ju
         jlelr4CjzAZrk563TMJlJUgtKNFAlafPE78rImcF6xDrSlihpABtiUHTI0S974bC1lsP
         utGBU+1nFm/I22SDCwINcvEM6NK8aVnBIDsFZO64hpvoZsXGxH5RZ45NyuNUZUYq0NO0
         Io1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682542784; x=1685134784;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Yz4qB0Upm2dHZe1lD1B+YiYLe86VCrk5ulxAt72jd4=;
        b=WxmVuIsdHrN7qjfG7o34+C2xfveGT9I/YyJx/3EbMs8eK5ZF2Dq4DHHbDSOD8qWcGn
         IeTchxsEWxFRMHoS2sZS+T6Xqijpd5Ln92ye5cYFMLxj4jCOaV4y/ZGnj7M0mE3dzIzw
         L74Lh5sIc0davBZ6jWwC6d41lGPbDDXbgu921cLcRTdDOq4cKg7WZbZPKVwZYl9y0lWR
         /kCINz8FyL/bG0zw6vavt2oaldbSJ3/IFdbu+CIDJkTbKeDfbNQG7rwiX3X+9zhY5W2D
         lOlSHGdjDQq8pKxmYoToOzCfpOS3wZf7XYtKWwVTpU0ROcGGrGrtmyDCGp75jDE1vvB6
         79RQ==
X-Gm-Message-State: AC+VfDzXhYwWvmDB4Rsd0Fg2ONfjoeCTtEbCAl+T/sI3q3vuwZYlq/4z
	zLB/ly5XPL/RCIBbHKjDtF+0j5ll+JE=
X-Google-Smtp-Source: ACHHUZ7WG4MkeisNRVwk+qjLFKOPs/FKqbWQyfpP6IELlOQf5WI6xiJFtzrCCOjKyxsrtRJjB3KgRw==
X-Received: by 2002:a05:6870:35c4:b0:184:3a8c:87f7 with SMTP id c4-20020a05687035c400b001843a8c87f7mr1699453oak.15.1682542784074;
        Wed, 26 Apr 2023 13:59:44 -0700 (PDT)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id p22-20020a05687052d600b0017243edbe5bsm7030532oak.58.2023.04.26.13.59.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 13:59:43 -0700 (PDT)
Message-ID: <32f92249-2866-75b9-42f4-8bdcbeeca750@lwfinger.net>
Date: Wed, 26 Apr 2023 15:59:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Macbook pro 7,1
Content-Language: en-US
To: Pogprogrammer <spikey@rslp.org>, b43-dev@lists.infradead.org
Cc: linux-wireless <linux-wireless@vger.kernel.org>
References: <63806E6D-2230-44FA-9DAE-0790F35C9F6C@rslp.org>
 <54db8ecb-b817-eda9-09ff-adbd54806c95@lwfinger.net>
 <726093C0-6877-4427-B7FF-9DACE88B9982@rslp.org>
 <716d9146-605e-b370-b3e2-ded0849cddeb@lwfinger.net>
 <D675B28A-707B-4D9E-80E9-986EC1A266B6@rslp.org>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <D675B28A-707B-4D9E-80E9-986EC1A266B6@rslp.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_135948_490382_A8A88E95 
X-CRM114-Status: GOOD (  14.96  )
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

On 4/25/23 19:47, Pogprogrammer wrote:
> [   17.153826] wl: loading out-of-tree module taints kernel.
> [   17.153837] wl: module license 'MIXED/Proprietary' taints kernel.
> [   17.153838] Disabling lock debugging due to kernel taint
> [   17.164164] wl: module verification failed: signature and/or required key missing - tainting kernel
> [   17.215776] wlan0: Broadcom BCM432b 802.11 Hybrid Wireless Controller 6.30.223.271 (r587334)
> 

I was hoping that the log stuff would not do to all the members on the Linux 
wireless mailing list, but at least the log was not too large.

In the section quoted above, it tells us that you are using wl - the proprietary 
driver from Broadcom. As that is distributed as pre-compiled binary without 
source code, there is nothing that we can do to help you. As you wrote on the 
b43 ML, I expected that you were using b43.

Sorry, but you are on your own. I do not expect that Broadcom would provide help 
for this legacy product. If you had any other brand, I would suggest that you 
change the wifi chip. On a Mac, that is not an option. You might try getting a 
USB dongle, but that can be tricky to get one with a Linux driver.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
