Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61DCAC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSfz1FH7/IwKgm3aZLMklmmGcGihiT1SmdMchgiyhHc=; b=wCcXBM8UfliizA
	OQmSe9YJRDe3YpY2zVju95HRyzXFyFd+zmFlfgfDSAxWGh4c1qRQaZulir5SQuNkoyAr8XNHZH2uO
	5t9MkfsZtZT3eTVj6tvyLVULP+O2kCZLwanW/6Cr6uBDtdZff/kd+/94bietcw6jdPeTe5Txge4NX
	d0mU/njWRt56EG07viQ6rcnsBLIcyKldBtM4xn6W/uUTXPQZgJgXuGbXROm+zkdB+hxYzOwd54zBK
	ig/cWamLLfjqhzqNOgHXk7zX3Z57ePcLP7Y+VL/p7RER+g/tMXNJbXz07P9rGEYMnKQdiApnlrEc8
	IQ/QBh//nLhih5SyFp9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdgz-003FbO-2w;
	Sat, 30 Dec 2023 18:04:13 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJdgv-003Fak-1r
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 18:04:10 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-203fed05a31so5941990fac.0
        for <b43-dev@lists.infradead.org>; Sat, 30 Dec 2023 10:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703959447; x=1704564247; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fpYHdg9CMaw6456egcFr0yg5mUTzURSDHrDt2C+JeYc=;
        b=TxVlc4ioCVr9Y+yb6tI0fgkWU2ylv6fDloesha5MpOpUOxNQSQuodYz6jtqKkMQ2Kw
         Bfc2nS/YJpCbV2XBxSZwEtKzcTMZNAb9stDwjZ6uBHB5Ob62EFi1uDDX0l28qTU6wIEV
         pF4/iRvkfDC3kEfGOJC5U5ZUy6GOaFYUpGMMijQ3cKxifel0BYpSTUUleuC19baVeJKM
         aCtgnUD0alK5cWYT1FSwW9hBFTZIM2fWm87pxdEJfzbqhWL9XbUzdEa3Rr9aVkCyJgSf
         5/0uMXnKNQAluEO8hf1tDq5XRDJqc6qJD5ROdDUAg8ns66vJcODxFhL/4Mx8rYqZ711F
         WS+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703959447; x=1704564247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpYHdg9CMaw6456egcFr0yg5mUTzURSDHrDt2C+JeYc=;
        b=Np0q4rGJBp3m6bRTHk20E+WmpUptBYFzmZe9J7+8ySwM7vcuck2FDSCcNiqIWJA3c/
         aMEI+ISdFc1dyNL/tqbb/mNgKoj/QN3uUFE67BqG5fAeTLJ+XyBwhiCmmAFl/+7NRtSe
         0rbAOGAtNVbBvxteIFxPj8B2c4hfVrKFbQQeXiRaEDsxCuJfe5JglkNqL7AXrt7QOkGy
         o6SNMhh+irWK3zFHlJvlQSHqpUDGckN+MmOWj9+kqRvkmoy5eYEdhuBb9Y08ppdYOus0
         vpLDA5fMW8uu1PZuBz58oF4LQMbLQO0Eso1GYoJ6toMnWWPIx4BebS86S3yoOs9oQF5J
         QJmQ==
X-Gm-Message-State: AOJu0YyZofhBOOhXhPaJ9nIE4zl8YHLWwkkfEZQWwBerHQ9gVpp6qVYz
	Exj3ZoOw4VyWJN4fKPotIec=
X-Google-Smtp-Source: AGHT+IGBLhlO2DsQhJl5YasbkNy/gvJ9k50GfzbjjS5fKNPrcVEIk2qhepd9yVSpqToecPLdE0nZEA==
X-Received: by 2002:a05:6870:c6a2:b0:203:bd9f:3be5 with SMTP id cv34-20020a056870c6a200b00203bd9f3be5mr15703938oab.106.1703959446795;
        Sat, 30 Dec 2023 10:04:06 -0800 (PST)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id q9-20020a9d57c9000000b006dbfc48c7f0sm1437696oti.63.2023.12.30.10.04.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Dec 2023 10:04:06 -0800 (PST)
Message-ID: <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net>
Date: Sat, 30 Dec 2023 12:04:02 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx
 path when QoS is disabled
Content-Language: en-US
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>,
 Kalle Valo <kvalo@kernel.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
 <20231230045105.91351-4-sergeantsagara@protonmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <20231230045105.91351-4-sergeantsagara@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_100409_636302_28E13CE8 
X-CRM114-Status: UNSURE (   7.76  )
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

On 12/29/23 22:51, Rahul Rameshbabu wrote:
> +		if (dev->qos_enabled)
> +			ieee80211_stop_queue(dev->wl->hw,
> +					     skb_get_queue_mapping(skb));
> +		else
> +			ieee80211_stop_queue(dev->wl->hw, 0);

This code sequence occurs in several places. Would it be better to put this in a 
routine specific to b43, thus it would only be used once?

We certainly could try extracting firmware from a newer binary. Any suggestions?

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
