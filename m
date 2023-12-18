Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DE8C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 14:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scQ2IRcd5AfWD896deDBVBSNDRA3V47bNruExoCOq3c=; b=2NhEs4ulQbS2h5
	MNtEjF82oY8Ss+hpDIczq0ztSnR0BcR+QFSTpRPCw4AcW92SeffGBDDgSgVbUvjRyghEZm+rWXsjp
	s68XCMeI0mta2BDjkOPUX60XYVGo5kBfw7RCVNsuBj+lbjlyj1chJ2wRwFG1HwktUamCrICsN3K4A
	XamOMHStGLIGEvK2SvF5DEQsTHa/d2Mo0MbyOMNBmf0dFauHGn3vUy1ZsIYukSF4uIC24NOwGSOMl
	AOhEiUWTS9Jn7rQggu+aSAiq4QM1lsk5jsSOVaCJUvKJImCcGEEqeWMle//JFqkaZUIgOhHQmUihz
	iscs+5Iqb0Ff/2MNTSbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFF5Q-00B7Zp-27;
	Mon, 18 Dec 2023 14:59:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFF5N-00B7Y2-12
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 14:59:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 664E1CE119E;
	Mon, 18 Dec 2023 14:59:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA42CC433C7;
	Mon, 18 Dec 2023 14:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702911546;
	bh=j87jRYCDb0lryskWckm01CmOmZHH/yU/DZt9Eohvopc=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=FB2bklC7bgMwydcNe05LbcKSrZQkpwU3XM7a4FBsc4CwXCXqoZTJ2xpb3d/KNKaUR
	 s8uBjmxMXBlgPkCqFgYT1BFwBQMBOudZnE8VDB1WDYgNVGK1xLneO0Klcewxx6M3aY
	 leC550vsP7nom003KJ+i5j+KieIfcqb9CV0NrRh+LqhShsmBidzqb3LiIpSPD2LPqq
	 x22BCQm9hAH3cbZOvx/stEsxLYxrj5NHPHoexwVP0wmmwNmXWutEmMj61pVv+YfSXT
	 LilzcFIpXt+DD3yGOF8Q9pdrpzwfp+zsS7amRP0FvCVWbeQRvOvmCHRKqhOzY+Anct
	 6LApnitldUI+g==
From: Kalle Valo <kvalo@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb
 drivers
References: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
	<26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
Date: Mon, 18 Dec 2023 16:59:00 +0200
In-Reply-To: <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
	(Johannes Berg's message of "Mon, 18 Dec 2023 14:17:59 +0100")
Message-ID: <87o7ensgjv.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_065913_612758_A2366C9F 
X-CRM114-Status: GOOD (  14.74  )
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <aspriel@gmail.com>, kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Jakub Kicinski <kuba@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> On Mon, 2023-12-18 at 12:58 +0100, Lukas Bulwahn wrote:
>
> Dunno, I'm not super involved with this but ...
>
>> +++ b/drivers/bcma/Kconfig
>> @@ -1,12 +1,7 @@
>>  # SPDX-License-Identifier: GPL-2.0
>> -config BCMA_POSSIBLE
>> -	bool
>> -	depends on HAS_IOMEM && HAS_DMA
>> -	default y
>> -
>>  menuconfig BCMA
>>  	tristate "Broadcom specific AMBA"
>> -	depends on BCMA_POSSIBLE
>> +	depends on HAS_IOMEM && HAS_DMA
>
> [...]
>>  config BRCMSMAC
>>  	tristate "Broadcom IEEE802.11n PCIe SoftMAC WLAN driver"
>> -	depends on MAC80211
>> -	depends on BCMA_POSSIBLE
>> +	depends on HAS_IOMEM && HAS_DMA && MAC80211
>>  	select BCMA
>
> to me it kind of seems more obvious for example in this case to say
> "depend on BCMA_POSSIBLE and select BCMA" rather than open-coding the
> BCMA dependencies both here and in BCMA? Now granted, they're rather
> unlikely to _change_, but it still seems more obvious?

I was thinking the same. Lukas, is there a specific reason why you want
to change this or this just something you noticed by chance?

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
