Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9949C6FD20
	for <b43-dev@archiver.kernel.org>; Fri, 24 Mar 2023 16:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fdiHPjKKn1Me7DXv9JIKbOU/7A6f2XxTw2U+ikYxxQ=; b=kE2zvEWSdZy0Ab
	Rzh/q18DI+iKwPg3y7EPIfF8QbuKm2NBk6uGlDGzfze5Shw3E/pqAGjIhroLYFIc1RgJGwjPVtGHi
	ppWhS/N0b0blz7nVARNuULNzCwwJoHHeqx737qtPdpQBPDXyC8/mMvennFN2QJAMqfZYTn1ciSER2
	E0kZ+oY+CyROjjuhCfEVzsliKLpTOMno8dHR+l34drvWpZVGr0Omn48qR8q+xaZpHAFIOasonnh8C
	82OmGIe2B05BkJVCHJ2fLS7mLS68kX6lsheERIKr/gjW2ffUq1chtj3qhxxvcbBlSZgtNTVUc0//t
	4neMmqCte/0hvo8e3qeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfkcK-0051CF-2r;
	Fri, 24 Mar 2023 16:50:16 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfkcI-0051BI-02
	for b43-dev@lists.infradead.org;
	Fri, 24 Mar 2023 16:50:15 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-17aa62d0a4aso2320906fac.4
        for <b43-dev@lists.infradead.org>; Fri, 24 Mar 2023 09:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679676610;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1DGyIN34KgC0DU/dG7K0bXU7qcx4+HSMWL/GkKHyPhI=;
        b=bVwiBdzRLa1lsfOcclAi6GO+XbR6MVA+A6vuIkAiHb0mxBUtxOM1o+zrR8eExLmPMy
         QU4tTuE9ywhDKtQEbvYF2Fikp0sWcexTw68YVUiO0vwQGyWvABK/Qc5op/kOvpSKUd2e
         VlsVl/ClswPrkfpaj7k+YqIFu496lXYE39yXf1gHk9dHgbk9dDMBYmuEm/wUitBVVd+X
         lKc9DWaeVXTmkPwH1wUc/J3H5VE7UvDnSDdefpnrfjH+9FaMpH/xdjh38E7lXBASsZSI
         iN4Q0YP8WpCt2moeemCX8OJY6fxC5jvC/51XqI9uTZjRbiCh1pUdoV5iKUjd/7aPhNqi
         GhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679676610;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1DGyIN34KgC0DU/dG7K0bXU7qcx4+HSMWL/GkKHyPhI=;
        b=GYswGZeI7yQp1CoqQU9t297re1QFxvUMHXd8kut7uVwoDMn5f4K4VUAHUmigI0g24K
         Om23+CWAZbXWaiqR8kcg8NFzU5YuzwKIOk+JZ5OyvO0QSXv7zbMkYvvYM5lpXKuek/5N
         +bisaf2r//d1Sg/URTNVIY/QyfJyWHn1XB24B5Q58Xf6tqc+JrSHPLWvfYsULhipxCWh
         o2UHTA4/ylNTo6/aQ1Gr6XFozpQXEo7xSqv2qWPOwj2m5UrPKofN9/acjm6tZY6ty4jV
         0E16vUvsA7wp5FbkgR68ni3rCBYSu4H3zkfjHF+ORWFTfWrb7XIAyc7H4o7bqOI2e3o5
         BrdA==
X-Gm-Message-State: AAQBX9cQuAF9KLPEH0J5BlT/Wf6t9BFngq8CDjwiy/ZwxP9oYyeHZKQz
	iiyDe+Xp+shKKj4XJIU3c2k=
X-Google-Smtp-Source: AKy350YegC9Y5rZlLkkMA6KNYBOntyayTAXqWSJGwsQUTpx9mVId6Lbu7ZViY22SLpFM8rSCQ2JFTQ==
X-Received: by 2002:a05:6870:1608:b0:17e:9798:6e34 with SMTP id b8-20020a056870160800b0017e97986e34mr2398934oae.32.1679676610509;
        Fri, 24 Mar 2023 09:50:10 -0700 (PDT)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id ea43-20020a056870072b00b0017e0c13b29asm2345970oab.36.2023.03.24.09.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 09:50:10 -0700 (PDT)
Message-ID: <892fdfe5-ef22-a37a-20bc-912e67d6df4e@lwfinger.net>
Date: Fri, 24 Mar 2023 11:50:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] b43legacy: remove unused freq_r3A_value function
Content-Language: en-US
To: Tom Rix <trix@redhat.com>, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, nathan@kernel.org,
 ndesaulniers@google.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, llvm@lists.linux.dev
References: <20230324135022.2649735-1-trix@redhat.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20230324135022.2649735-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_095014_067001_C7A3ED7F 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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

On 3/24/23 08:50, Tom Rix wrote:
> clang with W=1 reports
> drivers/net/wireless/broadcom/b43legacy/radio.c:1713:5: error:
>    unused function 'freq_r3A_value' [-Werror,-Wunused-function]
> u16 freq_r3A_value(u16 frequency)
>      ^
> This function is not used so remove it.
> 
> Signed-off-by: Tom Rix<trix@redhat.com>
> ---
>   drivers/net/wireless/broadcom/b43legacy/radio.c | 17 -----------------
>   1 file changed, 17 deletions(-)

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
