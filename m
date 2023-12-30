Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7921BC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 22:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxQTzz1OPwrvCEatMEEwA43b+F01/+ScAq9Ydt0SAJ0=; b=iu6ysVNqoAbZFD
	RIg/CJ0R8KuHPe5HjGyzswN5YpEkBmFhL0d7IWYLPKBbV65M1s/AmcrBDWWRHlh3OxuGzAHPGm9WB
	MDZY7Bd+3JCahRPkE+9Iy7Soq6rKJ9zTa1JUZaE/Eo7DmrBTr7QH0XInfPvfd0zxXDL1FGsv5RSsA
	0/sEMM2GL7klz+kE84/MKp6igflbyPkz1m2Tu6CVsPmvJRdinbifDABYLF+ypfesreX4zFYpYpRn4
	jBzpWF5aymftygNeOV5dC+z6Wi7od1cBOTGaoI1wWngNuwCZ0ZIpIqJZU2A3Dm6EdQiwNalRHTCK3
	1HyeQau7Udbanb4A+L3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJhkV-003Weh-2G;
	Sat, 30 Dec 2023 22:24:07 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJhkS-003WeB-0v
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 22:24:06 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-67f911e9ac4so62829406d6.3
        for <b43-dev@lists.infradead.org>; Sat, 30 Dec 2023 14:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703975043; x=1704579843; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ytqw2FHmhrz2Q/Vvd/gZICZv8ex4sbCt21vyO6FDogw=;
        b=Tkx5N0LQnuhbSRGxX8et1annVXbNzq3P/RR7k82kPzfPqvJ2iZ/eB3qsJt9O7XA8KM
         Ldh4eCpnO5LhmTC1YwCgsvhTabrVtwKUXgHHGiqxf0qgcTLoSfYQFzEAWXYrQhhnP9gf
         hhLm3AnwVhsvqD+AXrE4fGUfrHeaaX9lX0VvSXGCQw9Uk+OLq2cdoWHsu2iZLY5jYOO5
         Sx/CizqVjK7NLx+dhlIlDLjtnw2fCetIaRe7CT0AkXmIvT/udnRmf2a06w4w3C6yqjPM
         sXMasthtLVLWqjikU5qhU7ka3D43pTDjZRLTvKFh5AeyAJFZfYUvrKNPcUdx9xeRC/N1
         mRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703975043; x=1704579843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ytqw2FHmhrz2Q/Vvd/gZICZv8ex4sbCt21vyO6FDogw=;
        b=DmzCDYJCbmkcOq11O1+Qcyo31QgPJs5MX3NA0fJ+eilJ/slGlUT5RjlN/dpMUmVphC
         O13QG+L9e7bS8S/onou834uZHeqhCo+eBLIZTEARcbZcS27Lo8eMT2EfilnuyE+huLRa
         wKtxml7nzyADIDeqlXA0xTz3shDKER1R8FKSPZxF2V912KXDhEqXaaQqdUtPzl3lDm3r
         mI3mDSjtQb52gbNGcmBVCB/beY98UCB0xrOXpKGIBJC6iuuDQsL6/AORSYYm50+O4kHh
         AjeazIXziZRQTBaD8kT/jilCNLnWIk4gbuOEtgDc+7oFgLvDoGZ2YkuK2UFr/dX1CR/J
         4iqA==
X-Gm-Message-State: AOJu0YwgA2eX9JZQyGoDE9iPnuWzRVPxvowfj3ggtPd9QhSmANKklgrj
	a0n4g8tsxZWwfvPaU6A8bZI=
X-Google-Smtp-Source: AGHT+IGTWXvfDNFHuJs/2JwYmQDseU7HorFDI4IceT3cAbf4f88WDlSNXxN5ZhWt0jW2njXpvMCx1Q==
X-Received: by 2002:a05:620a:1aa9:b0:781:5c68:a5ee with SMTP id bl41-20020a05620a1aa900b007815c68a5eemr9616536qkb.45.1703975042959;
        Sat, 30 Dec 2023 14:24:02 -0800 (PST)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id u11-20020a9d4d8b000000b006d9fb0458cdsm3232223otk.39.2023.12.30.14.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Dec 2023 14:24:02 -0800 (PST)
Message-ID: <ca357d13-7da9-490f-9e69-4674c6ede057@lwfinger.net>
Date: Sat, 30 Dec 2023 16:23:58 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx
 path when QoS is disabled
Content-Language: en-US
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
 <20231230045105.91351-4-sergeantsagara@protonmail.com>
 <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net>
 <877ckvwk5v.fsf@protonmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <877ckvwk5v.fsf@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_142404_366811_5E9640FC 
X-CRM114-Status: GOOD (  10.77  )
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

On 12/30/23 13:43, Rahul Rameshbabu wrote:
> Unfortunately, new firmware would not prevent the need to fix up the
> code with regards to QoS being disabled via the kernel parameter or
> using OpenFW. That said, new firmware could help us drop the fifth patch
> in this series. I am thinking about using b43-fwcutter to extract
> proprietary fw from a newer release of broadcom-wl to see if that makes
> a difference. That said, I am a bit puzzled since the device I am
> testing on released in early 2011, and I used firmware released in late
> 2012.

Unfortunately, it is very difficult to get the parameters for fwcutter from an 
x86 binary. Some of the other architectures are easier.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
