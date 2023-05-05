Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9A3C77B7C
	for <b43-dev@archiver.kernel.org>; Fri,  5 May 2023 07:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znEDnyIFVqA+1COnKXxmIsFa1JvhhwbiFsirZwEH/8A=; b=aIqvkFXEr60XC7
	Ma/PZwroS1AX0AjUXnVrupqx+qDREiAkoG9ND3F8fEdBpXYu7KZAts0Cf3T/nQmT805GZ1TyMY9gA
	Kp0mwp7Qn4Q8uJNvaV8gLqEI2D9LsQmuZ5WiJXu8iInw87w9bCeJAw8V5Mceu0lCQP/OMPtz3mOQ+
	vV9KM+vsMOniLP92yR5LHPQlPEcs4Lo620hlDORuU4dAb+aEauxeYpqSvV3rz+Rr15VKNtoognhSn
	CYNDNBzrdN0odFljNclF0BmaOt2kKU6l2M1OjFWidBgc/EMRlzYglCAI5zS8IuqGWKzfpkkjmaSpn
	RPLevQvrhzFKW/vVTNmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puprn-009vis-2e;
	Fri, 05 May 2023 07:28:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pupri-009viP-0Z
	for b43-dev@lists.infradead.org;
	Fri, 05 May 2023 07:28:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C3DC63B7B;
	Fri,  5 May 2023 07:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C2CC433EF;
	Fri,  5 May 2023 07:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683271708;
	bh=HGcw8Vw0AzQTVV6N2gMPiN/OeHEKIDyg23ka93ctRj4=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=qTSQOBucqeabhs5gStK3QY/z89vtK5rbUaN1AFcEERtYYIFm3UcKh/2P16HG6K//z
	 d+2bkfnjrtpd+rpL6ilQEz1KaIDRRj2z1gdTh/UqwwWZ6ni1NlviqlBpUPg9Wp1z1G
	 loIXVNmga3WFkI9sGKAnwuv+L5s62Im1Y9ZS5cDq0AenVMFotdA+mz9Mp60HunwEgT
	 kCvTV15TWTt3VDhNnZ+BlLQ0SFVZU1wrTSd/Ja9U4PCRe3bmLTrXl9M6hvgH+wf0RK
	 oYDM4oA8+yyY/Dju72VLEhhSrVdVFrKWThK+tjxcUZ7Xn0J0/cL8yPeadH5iJ+rMJF
	 4RpLH+TixdBqQ==
MIME-Version: 1.0
Subject: Re: [PATCH v2] b43legacy: Add checking for null for
 ssb_get_devtypedata(dev)
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
References: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
 Nikita Zhandarovich <n.zhandarovich@fintech.ru>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "John W. Linville" <linville@tuxdriver.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Natalia Petrova <n.petrova@fintech.ru>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <168327170198.10202.6098292886788823721.kvalo@kernel.org>
Date: Fri,  5 May 2023 07:28:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_002830_250213_342FE443 
X-CRM114-Status: GOOD (  12.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Nikita Zhandarovich <n.zhandarovich@fintech.ru> wrote:

> Since second call of ssb_get_devtypedata() may fail as well as the
> first one, the NULL return value in 'wl' will be later dereferenced in
> calls to b43legacy_one_core_attach() and schedule_work().
> 
> Instead of merely warning about this failure with
> B43legacy_WARN_ON(), properly return with error to avoid any further
> NULL pointer dereferences.
> 
> Found by Linux Verification Center (linuxtesting.org) with static
> analysis tool SVACE.
> 
> Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
> Co-developed-by: Natalia Petrova <n.petrova@fintech.ru>
> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
> Reviewed-by: Larry Finger <Larry.Finger@lwfinger.net>

Dropped per Michael's request.

Patch set to Rejected.

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20230418142918.70510-1-n.zhandarovich@fintech.ru/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
