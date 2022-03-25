Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73066C433F5
	for <b43-dev@archiver.kernel.org>; Fri, 25 Mar 2022 10:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAzHTmBvxF5J5q3GzyEouJihN6x/GwvalOGvAo9mGvc=; b=CYLqv9Nnd6JsOz
	AtcMZ3vGyhLbrQbxfROVzQmCtgkx724BcjWMW0F+camrdAzHmIwdnlP4dtbfQVzT+b+e8cdpVyT5j
	ib72tKsGSJg3UQfOr4JT+EoK33JZkb9sqyXBhrW/gWHc+w2K5cvK/Xstd+6NCyVy5W9R/+SLgW7iA
	t9992dg3gvhzzxo7B+IYpJRaQxEyPSO60NNDV6syDKTj7VF+YY7S/344MsoLwSjZ9b6xL0qbQAFts
	jH6L7qpr8DQbTbKYP7WAF25SUo4OIEGtMntvu5j9AQKHAqwVHBuXdxumFpYubeV85Z1lhsDKF/V/3
	F6ohrzanxdXp/AKd/0OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXgrY-001cAv-Hh; Fri, 25 Mar 2022 10:08:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXgrT-001c9k-82
 for b43-dev@lists.infradead.org; Fri, 25 Mar 2022 10:08:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1B5EA6143D;
 Fri, 25 Mar 2022 10:08:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A3EC340E9;
 Fri, 25 Mar 2022 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648202881;
 bh=qnTrwxZwlx4JG6ef5Hpqjr7DBS+5G7kxBbPkVdOe7v4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=TbC6WVNLkuiB6WiLwbiYIc3o/1tuKdJ1cgZDmibGQFeacOxRvaE7P5NOvcmwY5O7k
 xEbcX6AKPCzMdfQUjY5vQeawr4nCSZ1gFsHPQEIgNdkvXn/Vvudv7UyPqeJl9yt76c
 HrXN+73ndmvDjSEmLwu6VpydmIujy5SYaIF/beSawrX+GNCUsNYZwLxhQmp8OFspan
 fYbnlr9mDGz9tAIGYMzJIXktLNbug+m/LuVlqJxaDmTo8NEUNzi9iYWrN8KCmAgR3a
 Wn6VjQaWwcRWh5KZ7QIRYzuQo5sgvwpf3jujZO4frXajZ6m2piT/HXFM43ATxKy77F
 Sp/LwCvebj5RA==
From: Kalle Valo <kvalo@kernel.org>
To: Haowen Bai <baihaowen@meizu.com>
Cc: <Larry.Finger@lwfinger.net>, <linux-wireless@vger.kernel.org>,
 <b43-dev@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] wireless: broadcom: b43legacy: Fix assigning negative
 error code to unsigned variable
References: <1648108733-27272-1-git-send-email-baihaowen@meizu.com>
Date: Fri, 25 Mar 2022 12:07:55 +0200
In-Reply-To: <1648108733-27272-1-git-send-email-baihaowen@meizu.com> (Haowen
 Bai's message of "Thu, 24 Mar 2022 15:58:53 +0800")
Message-ID: <87pmma8hvo.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_030803_362758_8841C939 
X-CRM114-Status: GOOD (  11.14  )
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
