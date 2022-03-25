Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B7DBC433F5
	for <b43-dev@archiver.kernel.org>; Fri, 25 Mar 2022 10:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk/n5PhWIcbs6K6wEjYwoiPr85eLHSDPA37CGZKi1Ds=; b=sAyueL/ca4ngIK
	zaPtSTnYxJdL2MFV7O3IQnWBg2r7KMtIC2xDqTjo3l8KMQ00rdH49lr0o0d7qkzpulwAqw2uB/lFb
	dNGLSwt+FwPLO9RldfaBcMVHLnotsYJw6CivJjSYzklyYsypANQpKY9RnSJvIgL9AnfATX6trOUH+
	4CUVCDMOzV+JU8tCcGm8YKfbKO9F1uuymxhYUryA2zGUv4xX9TcQb3decP+ioyQa6VyofEqTlMV4r
	bPgPSryrkRkVUY4ao04caaj6TupM7BR4lCCYNi7kSDLA9RhMZbUgtpmWhBTiZ3n+bd10Tln9DI2rf
	RWPi3obylgzsZ1XQH6VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXgsg-001cSq-7x; Fri, 25 Mar 2022 10:09:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXgsd-001cRW-8I
 for b43-dev@lists.infradead.org; Fri, 25 Mar 2022 10:09:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 875FEB827E3;
 Fri, 25 Mar 2022 10:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D0D2C340E9;
 Fri, 25 Mar 2022 10:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648202952;
 bh=eyce1/xSBeTyjY0v43VNDgFQNPcxEbscZUL/X4uC6yY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cAdtU5fIAqHbF60Zc9Kp6EIoEq4oXsgOoGd01hUTOOfWahd0TAX0J32i5SAvZG5NY
 oE9zqjIh6fuTGJoSSaEgXZJfCi3n5sEO4qx2L5FZJNIW4w7aBS6fZJK+wpqPSZx47E
 EGrczuaOLDqpAs+xdCVm/Tap/vHzAHbRLiaUfMwDCjHKFxmqp4uc15j4GosoeLhcfK
 S2hGC62FggN8BR4EJ2F2GGGb/M+ZdDhqECqsL5stOC8j2IQokJNj8sw7u1XrpMkLDH
 A2NF59B3m0geeOsf/8UAR/2ZCH5QG4e42Qo0nlsh4Hzld6RfDq6Uuhqv7gkH1i5Ida
 o4/BHNJl0LIPw==
From: Kalle Valo <kvalo@kernel.org>
To: Haowen Bai <baihaowen@meizu.com>
Cc: <Larry.Finger@lwfinger.net>, <linux-wireless@vger.kernel.org>,
 <b43-dev@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2] wireless: broadcom: b43legacy: Fix assigning negative
 value to unsigned variable
References: <1648109173-28403-1-git-send-email-baihaowen@meizu.com>
Date: Fri, 25 Mar 2022 12:09:09 +0200
In-Reply-To: <1648109173-28403-1-git-send-email-baihaowen@meizu.com> (Haowen
 Bai's message of "Thu, 24 Mar 2022 16:06:13 +0800")
Message-ID: <87ee2q8htm.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_030915_547539_8B363BCB 
X-CRM114-Status: GOOD (  12.09  )
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

Haowen Bai <baihaowen@meizu.com> writes:

> fix warning reported by smatch:
> drivers/net/wireless/broadcom/b43legacy/phy.c:1181 b43legacy_phy_lo_b_measure()
> warn: assigning (-772) to unsigned variable 'fval'
>
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>
> ---
> V1->V2: modify title of this patch
>  drivers/net/wireless/broadcom/b43legacy/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The prefix should be only "b43legacy:", I can fix that.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
