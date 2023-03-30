Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E39D7C761A6
	for <b43-dev@archiver.kernel.org>; Thu, 30 Mar 2023 15:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzUsO57Ov8XTQg/+Wqaqp+9fxdAyjOpLkv6GJk+rIqs=; b=y86ywnKYsBEpkS
	cNhqPVZKKU0s973C2KOiU9Hb4ccK7H/WuUChzs00ncvMkwitwK48tyI6g0i8p6yQ3Aviiwkc5D+MC
	dYcA513D2WLlvPvTDJbKdwBZkQFTwoT+Ef9R4S8NPooxFKDNxLxYj9yo1kcVxda6pybNbeNz27HCk
	cDV2CaVTIbKfBXVbVYszKrXhcWrloG0HSIVYdgiXDb0w2k9zLfI7mHmDeFPLWzu71NahQOmjoXAt8
	xlFSS5R6O41nB9MsVmzPGF/AU3Q30MehZqJjRfbXNbeAdXeXF9/O2bsalkqrwAlVI/OkrPUPNoKVE
	GptnwBA8ocnVWJuKVd9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuTf-004N6U-0d;
	Thu, 30 Mar 2023 15:46:15 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuTb-004N46-1T
	for b43-dev@lists.infradead.org;
	Thu, 30 Mar 2023 15:46:13 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-17786581fe1so20139458fac.10
        for <b43-dev@lists.infradead.org>; Thu, 30 Mar 2023 08:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680191169;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=oJBA/37IIjC6kfXilx3ayeeRAXqubi70BYpfspioK0o=;
        b=e4W0o7k7kelgvpOZr2/E8GJHvFZmR4jWQoKaNlO/ScW3aRqbohQBhlFFSLjjBXdQkj
         Z+4LwHXSa5auE17/Hpp+4cMRo/uOoUMIIHjR9iv8GT/OQu1rDVVmeWlJtz+qM6NGPeRb
         FPwJbN/NsmI6zSkW0VxQuPTWQzylzqQgsLOQMj3QCi4nCOSkFxd4RSlVOM8fHmzpohFA
         E4SjNpow7JLhrsxdOk/Fp59HTNAn0hI04FO3plsg0kxdS2p4+E/wIDC2I16oFPshbPOF
         2GWWDcmBF6a2I5kVQcPKACgiouSJtNpHeoCX/awIzarjCOGPxpVjM1wdPiWAWIM7fZ1n
         CboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680191169;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oJBA/37IIjC6kfXilx3ayeeRAXqubi70BYpfspioK0o=;
        b=Pv3c0cQZLQD/AYk6sPPqRtUpZa3KQnGflBdCZjh5Ab+BEY2A3DvG4IRaNvZORF1Sie
         LG8gtu7BO2jR7OWAzhdnXQUMCKtwZ+9zp6e9mww/B5ug5Unttdh4phT1TxBxi/Q+JWvV
         Ojfmo1Lm4uBcqyjNgfuSK1IBh2CPLhibz6FZpBonYsN9a9+uXZzYpUX2slPhQjAPDLYb
         iOGTvLujLHoMtyVtcA9zuVRrj/1kd+jA5zXvFIVksJpKYqpN0kdmclzd1Y9HndeWLveO
         6jqjUw0HZlvC0n3NRUV5qV+QDIlXjh/ZlLnANK+g4aCdW72YTE4mODKa0jTcghDC9Xim
         VqXw==
X-Gm-Message-State: AO0yUKU4rtofpQwRMM8RiQE8TmLnfXt41/346c3nukIDOFbt5Azack2s
	0tqFKe2EBRJu7/ouri1vsMU=
X-Google-Smtp-Source: AKy350YGYVi0onCiOEL6jfuix4ot7d1BxrNLqI2LpurPhxw4Jz1gz5Er+kGSZMhfmR80lpKgRK1/dA==
X-Received: by 2002:a05:6871:795:b0:17a:d863:4cfc with SMTP id o21-20020a056871079500b0017ad8634cfcmr16832470oap.38.1680191169514;
        Thu, 30 Mar 2023 08:46:09 -0700 (PDT)
Received: from [192.168.1.119] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id tw16-20020a056871491000b0017ae909afe8sm39016oab.34.2023.03.30.08.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 08:46:09 -0700 (PDT)
Message-ID: <e81e65f7-9a55-5e28-a2fa-516e93d8e45d@lwfinger.net>
Date: Thu, 30 Mar 2023 10:46:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] b43legacy: Remove the unused function prev_slot()
Content-Language: en-US
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: kvalo@kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
References: <20230330021841.67724-1-jiapeng.chong@linux.alibaba.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20230330021841.67724-1-jiapeng.chong@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_084611_513327_E2CEAEE9 
X-CRM114-Status: GOOD (  10.85  )
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

On 3/29/23 21:18, Jiapeng Chong wrote:
> The function prev_slot is defined in the dma.c file, but not called
> elsewhere, so remove this unused function.
> 
> drivers/net/wireless/broadcom/b43legacy/dma.c:130:19: warning: unused function 'prev_slot'.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4642
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>   drivers/net/wireless/broadcom/b43legacy/dma.c | 8 --------
>   1 file changed, 8 deletions(-)

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
