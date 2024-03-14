Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D21E1C54E5D
	for <b43-dev@archiver.kernel.org>; Thu, 14 Mar 2024 18:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiBxMzJ0xNsuR/yYTGi7wemoXm15hw21WsS4m2E4jas=; b=Pan4+bgKbTa5T4
	V+oPHKbJm/FbCTBylgwmmxX6St5EHb7sT+xhnIHq5ri+lsDCZUwtfnarW3gOOHc4RZjQ6SWuBY7e8
	nzmo9YbxNd1iRdA3cm2LSnk35kPIsXc9Azvo3H1QO29m1QBjS66Q7V+B+VVtrghWza3TfqUod1VTH
	TrbFx4Nlmk3dB6YcuqifAW6ZsUAkQ5BXXjsnpKQMTMrs/eN8Ef31KLetboonXvuzvjQ0jDOM/72gA
	ctFZv3eULneJVF3LIeZ3KngoZFbpfFQ00i8m6zgMMAtUR5XQbDQ8QC6A9Q3bEi4tFE8kNJ+qoh8ya
	iuxANGEaRNbwostqH1Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkpVp-0000000FDZd-0AVc;
	Thu, 14 Mar 2024 18:09:05 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkpVk-0000000FDWu-1IgK
	for b43-dev@lists.infradead.org;
	Thu, 14 Mar 2024 18:09:02 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6e5343b915fso502762a34.1
        for <b43-dev@lists.infradead.org>; Thu, 14 Mar 2024 11:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710439736; x=1711044536; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=O6QjNBOUXNMcsITHYgGLYglrjmHq8B75jMGMpg7X+sA=;
        b=eAV+eEf5cLZRcqL4uRs3rKzeAnS//whuIP6AUMujj+rHgSs4HvEupCho9vS7UXfruP
         O0qovejfngML6Or8XVqLoN5xD2kBVCy9OS2db840whTDmMLUpBqP7wE4fMMQ5g5RQrrr
         XeID7GMK9vI/rv+uMwQ4LmBfrFRVcMspS940YuLDGSnS0dYq1Y0S9P2Z4rR5q5idw0Jj
         g+sTsfGf18ONLQFp+UKQ7qB3Ndxe3vTMPiUHVdedgyqsAPIKSZNExNs31ZUcBdeNll6m
         i1rxCrG1ECwJYIWd598mj3tjytAsAS+jyV4NOt0tH2AKTZ8vCgaBVjFyymUv0bvmnxDu
         eh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710439736; x=1711044536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6QjNBOUXNMcsITHYgGLYglrjmHq8B75jMGMpg7X+sA=;
        b=GQvEr/OjRYEOQ/F3PsI30lvjEd2v22+GB+gVMrUD9Ysy7qIz6u1ZwV6l5Vx5BIGGU5
         6HGiDApM53HaXf5+XpLVEH061SOGvZE+O8ATz/gw5w7dc9O/N5Id2UKlOVhshfey5z6X
         IEiC7+g/ldSzn/DGOHEzyypcPwLUDrwFEvym5kNCJ6q1VUcL2Xu+jbXsaiMLL4odTaSH
         95bBhcZaUSBsdtZ0zTnpsHDrbxxEra3H4kppAvPDA1Ab/C61xCQU8e0epzMsNSZUiwqD
         Lo+6RMR8TMwYB8FQ2bezQuJgloLPgBK0xoF2LczNrs8yZ9Gs5WfNvivMtXplVZPlEvZI
         Umzw==
X-Forwarded-Encrypted: i=1; AJvYcCU16q6epoD6mXz0n+YsOKYmOTJdMxxoXY1smtTYFnDPdJ3kqB+zyA8RA/rYEcpm64T5K0DbUlbsU6SXIPSWRPtF4TmxnXdarn7RTJc=
X-Gm-Message-State: AOJu0YxnQBaPdMi5ZyL/DVhigBAbq+Ii21ln0D8T4iN3P2cXlCwTX0aG
	JShwlEenSe4tLbkaiiJXZm5CjrHNWVSdBIEp6Oh09abLJNyblAFG
X-Google-Smtp-Source: AGHT+IEP1bedK+Yggcc37A6cZSW3SoeHE9/yvyPLi/Ng3EufKic3dCTFQ336z48Icdx9WwcHiuDtrw==
X-Received: by 2002:a9d:7c87:0:b0:6e6:7667:992e with SMTP id q7-20020a9d7c87000000b006e67667992emr964963otn.28.1710439736504;
        Thu, 14 Mar 2024 11:08:56 -0700 (PDT)
Received: from [192.168.1.119] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id s5-20020a056830124500b006e51a824d56sm366857otp.51.2024.03.14.11.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 11:08:56 -0700 (PDT)
Message-ID: <fd321855-0ee6-41ce-9cdf-364aa971f5f3@lwfinger.net>
Date: Thu, 14 Mar 2024 13:08:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] net: b43: Convert sprintf/snprintf to sysfs_emit
To: Li Zhijian <lizhijian@fujitsu.com>, linux-kernel@vger.kernel.org
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
References: <20240314094823.1324898-1-lizhijian@fujitsu.com>
 <20240314094823.1324898-2-lizhijian@fujitsu.com>
Content-Language: en-US
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20240314094823.1324898-2-lizhijian@fujitsu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_110900_530502_A14B2AF8 
X-CRM114-Status: GOOD (  19.37  )
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

On 3/14/24 04:48, Li Zhijian wrote:
> Per filesystems/sysfs.rst, show() should only use sysfs_emit()
> or sysfs_emit_at() when formatting the value to be returned to user space.
> 
> coccinelle complains that there are still a couple of functions that use
> snprintf(). Convert them to sysfs_emit().
> 
> sprintf() will be converted as weel if they have.
> 
> Generally, this patch is generated by
> make coccicheck M=<path/to/file> MODE=patch \
> COCCI=scripts/coccinelle/api/device_attr_show.cocci
> 
> No functional change intended
> 
> CC: Larry Finger <Larry.Finger@lwfinger.net>
> CC: Kalle Valo <kvalo@kernel.org>
> CC: linux-wireless@vger.kernel.org
> CC: b43-dev@lists.infradead.org
> Signed-off-by: Li Zhijian <lizhijian@fujitsu.com>
> ---
> This is a part of the work "Fix coccicheck device_attr_show warnings"[1]
> Split them per subsystem so that the maintainer can review it easily
> [1] https://lore.kernel.org/lkml/20240116041129.3937800-1-lizhijian@fujitsu.com/
> ---
>   drivers/net/wireless/broadcom/b43/sysfs.c       | 13 ++++---------
>   drivers/net/wireless/broadcom/b43legacy/sysfs.c | 17 +++++++----------
>   2 files changed, 11 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/sysfs.c b/drivers/net/wireless/broadcom/b43/sysfs.c
> index 0679d132968f..261b2b746a9c 100644
> --- a/drivers/net/wireless/broadcom/b43/sysfs.c
> +++ b/drivers/net/wireless/broadcom/b43/sysfs.c
> @@ -53,19 +53,14 @@ static ssize_t b43_attr_interfmode_show(struct device *dev,
>   
>   	switch (wldev->phy.g->interfmode) {
>   	case B43_INTERFMODE_NONE:
> -		count =
> -		    snprintf(buf, PAGE_SIZE,
> -			     "0 (No Interference Mitigation)\n");
> +		count = sysfs_emit(buf, "0 (No Interference Mitigation)\n");
>   		break;
>   	case B43_INTERFMODE_NONWLAN:
> -		count =
> -		    snprintf(buf, PAGE_SIZE,
> -			     "1 (Non-WLAN Interference Mitigation)\n");
> +		count = sysfs_emit(buf,
> +				   "1 (Non-WLAN Interference Mitigation)\n");
>   		break;
>   	case B43_INTERFMODE_MANUALWLAN:
> -		count =
> -		    snprintf(buf, PAGE_SIZE,
> -			     "2 (WLAN Interference Mitigation)\n");
> +		count = sysfs_emit(buf, "2 (WLAN Interference Mitigation)\n");
>   		break;
>   	default:
>   		B43_WARN_ON(1);
> diff --git a/drivers/net/wireless/broadcom/b43legacy/sysfs.c b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> index eec087ca30e6..b1c5ea4750fa 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> @@ -75,16 +75,15 @@ static ssize_t b43legacy_attr_interfmode_show(struct device *dev,
>   
>   	switch (wldev->phy.interfmode) {
>   	case B43legacy_INTERFMODE_NONE:
> -		count = snprintf(buf, PAGE_SIZE, "0 (No Interference"
> -				 " Mitigation)\n");
> +		count = sysfs_emit(buf, "0 (No Interference" " Mitigation)\n");
>   		break;
>   	case B43legacy_INTERFMODE_NONWLAN:
> -		count = snprintf(buf, PAGE_SIZE, "1 (Non-WLAN Interference"
> -				 " Mitigation)\n");
> +		count = sysfs_emit(buf, "1 (Non-WLAN Interference"
> +				   " Mitigation)\n");
>   		break;
>   	case B43legacy_INTERFMODE_MANUALWLAN:
> -		count = snprintf(buf, PAGE_SIZE, "2 (WLAN Interference"
> -				 " Mitigation)\n");
> +		count = sysfs_emit(buf, "2 (WLAN Interference"
> +				   " Mitigation)\n");
>   		break;
>   	default:
>   		B43legacy_WARN_ON(1);
> @@ -155,11 +154,9 @@ static ssize_t b43legacy_attr_preamble_show(struct device *dev,
>   	mutex_lock(&wldev->wl->mutex);
>   
>   	if (wldev->short_preamble)
> -		count = snprintf(buf, PAGE_SIZE, "1 (Short Preamble"
> -				 " enabled)\n");
> +		count = sysfs_emit(buf, "1 (Short Preamble" " enabled)\n");
>   	else
> -		count = snprintf(buf, PAGE_SIZE, "0 (Short Preamble"
> -				 " disabled)\n");
> +		count = sysfs_emit(buf, "0 (Short Preamble" " disabled)\n");
>   
>   	mutex_unlock(&wldev->wl->mutex);
>   

The code changes are OK, but the subject should be "wifi: b43:", not "net: 
b43:". Kalle may be able to correct this when he applies the patch.

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
