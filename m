Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC21C77B61
	for <b43-dev@archiver.kernel.org>; Wed, 26 Apr 2023 00:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhO81piKnHoX/qXZo21+UIVukP/ZWagzFZZj3ItpZKo=; b=EknY7ewqgMRwoD
	75gcgX9QGfWVL28fSF+PFaNVQy+J+yZr0AJHtRoAeZHI/ZKz8QuGTtb0LGOYGK+vP+vZqllWfvrxm
	hc9GSKhrKpa4X+frzUQCWlYRwZztkzaNFMjKiRriC7tbWCOTpON1sPGTiKQxRQYOywDwsfExzShfZ
	The37nWFduzu2jDiRvhaHVdI0pxVK0bVjCiRyY4tdcAGtQC7zJl6iZ51J0mf7/wMVM/rFCwvG3uJ5
	7NwwXeRFMjNFFYfQIU5yJ378xoguTw2iVdhFmj9Lcx9xA5POdEZ3qWjYehfsZfE3sL1FeV3+mLhjr
	D8yf+vJup0sXP9atQBRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prSoI-002T5F-0y;
	Wed, 26 Apr 2023 00:15:02 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prSoE-002T4N-0T
	for b43-dev@lists.infradead.org;
	Wed, 26 Apr 2023 00:14:59 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6a64b5bc7aaso3752454a34.1
        for <b43-dev@lists.infradead.org>; Tue, 25 Apr 2023 17:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682468096; x=1685060096;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dHIxYfqlvG5lVLwt2OXQGNRVrrdNI5Pksh5M42AIBsY=;
        b=dIV6Dp3+YMLtH8NMvMF8DGsrC4gi3OG6RyF11H8HFNOxndYfUfdjsyEOwNaUDIdqU4
         S9nYetc6wyAaUdm6pU0uZ9+08miV6r7a+UquD/lq0yHrLX3AsuFzxWtECDoV95f4Cyv/
         jgUQ8f9ru7Ix2K/jIVo1u4lojSS4wAc2lpjMT46TsdxHZZEexDNjOlGaHlEArSuTmip0
         fb1Lx15EpO9Jg2Rans+ayqwM2o9kWx8yI4W6IOaC03S7Vqrm3OMVRq6g6uZ0UuOEBO0K
         4dnkydhFl19MID25vCvstYnkp/r9lD0GCxzXB4h55QF4KhQWW9IOEfHaH10xvYn6arkX
         67ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682468096; x=1685060096;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dHIxYfqlvG5lVLwt2OXQGNRVrrdNI5Pksh5M42AIBsY=;
        b=UHk4W0SHdfHsQjgbOWeF7tjc5/29OXGwqXe9PAbkF6b75y6108kp7+4gpgmHV6BZMx
         ns4/rxsEpAJhfLQ0rLa+Ak+TIuQntHx4fNmIGhEGtsfip/AG3smZYhUVM4520QRVKpqo
         HrixQPjURiYOOkfrtIPUqVso8/eLMCGZVDyrEXXJMK7MAewbBYjpWO6OjT2UtarPePfd
         mpa4gHxpWnAghLqnyFwBWx1NbFY8lP8BbIkPBhwaM9Gjd4N92gKbk4Q7b3YjpvNZh3XI
         LGuPGdttsLkSAR5p3C+uaQjUVTw9cp6z5vAuZqrUVXk+vuHqjIP/JGMkK3XCQj9yg6er
         Ranw==
X-Gm-Message-State: AAQBX9egX8+0pPApLrmAjMU6JraAAAWWDKmvoqXbFo7NVpvLQNobxOaR
	b8mTMuFAN9wKDO8G5NgfoFm0CHKjnd4=
X-Google-Smtp-Source: AKy350YCJTLIuPDRcYi/1NhFTYWse9MqBKk9GxaJDqwiALy2uC2yshgG/CTYRdu1/ex4T+mqMTgLRg==
X-Received: by 2002:a9d:7e95:0:b0:6a5:fdac:a6e5 with SMTP id m21-20020a9d7e95000000b006a5fdaca6e5mr10024294otp.29.1682468095912;
        Tue, 25 Apr 2023 17:14:55 -0700 (PDT)
Received: from [192.168.1.119] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id f11-20020a9d7b4b000000b006a42e87aee4sm6256763oto.32.2023.04.25.17.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 17:14:55 -0700 (PDT)
Message-ID: <716d9146-605e-b370-b3e2-ded0849cddeb@lwfinger.net>
Date: Tue, 25 Apr 2023 19:14:54 -0500
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
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <726093C0-6877-4427-B7FF-9DACE88B9982@rslp.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_171458_206417_EA4FC2AD 
X-CRM114-Status: UNSURE (   8.74  )
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

On 4/25/23 17:30, Pogprogrammer wrote:
> Additionally, my dmesg is available on anonfiles. I'm pretty sure I sent you a link before as well but it may be down by now.
> 
> https://anonfiles.com/Y2Ad37n8z6
> 

I forgot to tell you that anonfiles tried to install all manner of extensions 
into Google Chrome. As far as I am concerned, that site is malware!!

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
