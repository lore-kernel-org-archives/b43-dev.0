Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95136C77B75
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 17:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4J4KJg/1U6fIB7iDOAiuQBBvm2oml7UfIxpekuzxBs=; b=3/YuHw8F2YQKEY
	Vw/2nbrtxbs+FldMifdaAuFvV6rQ2IQ0vAaM1PODDcPmZfsCysrY4VAoLHu7nWCYTa1p9HL1cm5KW
	jc5IaxA05sY5qD2HEkf2gqScp3Of38KMH009w+6TDRDruXepqRnwwhTvEGthx2YRK4d7z53ElA/oL
	AHVksWxtGfpLWhzGreJRlU3KLtMycl3boloCcYZZf/gwnmG9NUBKqoBB7EtaqZqwQoOH+rzE3H9qL
	0Zd6Xb7j2Xm5AHi99qB5sOA3dHy52Nt7yvq0ygIMwugSEVDgs4Gg6uLjorotcxBzkK51I6fabzL0w
	nun8aYcZMjgiZ8qndpgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyrG-006gzd-1H;
	Tue, 16 May 2023 17:53:10 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyrD-006gyx-27
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 17:53:09 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6ab15dbef23so8349077a34.3
        for <b43-dev@lists.infradead.org>; Tue, 16 May 2023 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684259585; x=1686851585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tOI1hYW67SjZXfGOAMASjvbTwzn47DF5rYlXPgVWPpM=;
        b=VVHHTpRXqC3V+VFxXYETdejgUe3qThzYQe2uCdWp6NI61RxmRjSneqHbHEWIYh+29L
         WY+IAveCsBjw/t9lowHvkFDGfPuz8xmO2+nTC9SdEOoCjeQ0UFk8XklDCw2Vq/5PZePu
         rBBelLWarDf7lKhGEmA1BvWwhgeWbh7sQuzpKw4iq2CwKrPmbXCSVGHeGZACCyHTSTJh
         scIQVUOG7SJVEhBOqVFFES8Q8rMaK+69ueLAo1Lfn+h3HA6pkbkkgrC6TTGj7aRF79dT
         kzsy0t8rZgrkmFG79+CcwGQ/gij6ASjeURcVOGpj9f43PO1bK+vs/5eAm/TjyPMHdUmN
         XJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684259585; x=1686851585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tOI1hYW67SjZXfGOAMASjvbTwzn47DF5rYlXPgVWPpM=;
        b=hx8kq76O9ErIvHNAPDsfRL2BCpvwOy2FDLhkBb4C+m/HCbVf5rvPDBHqja/mmq0Znm
         qezgfwOmhW0vcz+PmAsH7EnQIXN7/dQLp5bF96HM9Yi2C7tJR8nQUP5UbwLjuWQTyNOm
         AkYlLs6dxvWrYjxhHQnMjG8T74FgEmluozPaLy0IWnlXjuc53M3aTnM5Xaj3sLT9mVMv
         hcksu+wj6yuw7S9tczvjnSFRFSSibIW17J2C5Xy8BZFbzqEJ9ZJUPeREUjXsW1B6wiTx
         qYQQWld9+nD+Qx1Bh5SMSID9jC+AktfLfrh6cgxcDU6L2l0xoSH9nn7kdnGFSPBbG7gc
         ICXQ==
X-Gm-Message-State: AC+VfDzJkSySjYqFfz8jfDrzalKCnSpGd3CijDhRieefeAQGhc4QYTsA
	kygQ6vslnIqDFwjQoop+hO0=
X-Google-Smtp-Source: ACHHUZ5ZRxQEd6piT85OMVZwtPep8hK0vyFbEtWIgfKfIATKxhHVJs7wQvmtMQTt3s6kfkezMYepPQ==
X-Received: by 2002:a05:6830:3a8f:b0:6ab:30f3:6e69 with SMTP id dj15-20020a0568303a8f00b006ab30f36e69mr10718110otb.15.1684259585284;
        Tue, 16 May 2023 10:53:05 -0700 (PDT)
Received: from [192.168.0.200] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id g26-20020a9d6b1a000000b006a647f65d03sm4402113otp.41.2023.05.16.10.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 10:53:04 -0700 (PDT)
Message-ID: <b8e61f82-bb1d-4778-3624-157890b1b8dd@lwfinger.net>
Date: Tue, 16 May 2023 12:53:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] wifi: b43: fix incorrect __packed annotation
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, Kalle Valo <kvalo@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, llvm@lists.linux.dev
References: <20230516074554.1674536-1-arnd@kernel.org>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20230516074554.1674536-1-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_105307_694438_461615D7 
X-CRM114-Status: GOOD (  19.91  )
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

On 5/16/23 02:45, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang warns about an unpacked structure inside of a packed one:
> 
> drivers/net/wireless/broadcom/b43/b43.h:654:4: error: field data within 'struct b43_iv' is less aligned than 'union (unnamed union at /home/arnd/arm-soc/drivers/net/wireless/broadcom/b43/b43.h:651:2)' and is usually due to 'struct b43_iv' being packed, which can lead to unaligned accesses [-Werror,-Wunaligned-access]
> 
> The problem here is that the anonymous union has the default alignment
> from its members, apparently because the original author mixed up the
> placement of the __packed attribute by placing it next to the struct
> member rather than the union definition. As the struct itself is
> also marked as __packed, there is no need to mark its members, so just
> move the annotation to the inner type instead.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/net/wireless/broadcom/b43/b43.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
> index 9fc7c088a539..67b4bac048e5 100644
> --- a/drivers/net/wireless/broadcom/b43/b43.h
> +++ b/drivers/net/wireless/broadcom/b43/b43.h
> @@ -651,7 +651,7 @@ struct b43_iv {
>   	union {
>   		__be16 d16;
>   		__be32 d32;
> -	} data __packed;
> +	} __packed data >   } __packed;

This change works on a BCM4306 and BCM4318=.

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

To answer Michael's question, b43legacy has the same issue.

Larry


Larry



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
