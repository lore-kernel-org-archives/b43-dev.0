Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACB7C433F5
	for <b43-dev@archiver.kernel.org>; Fri, 25 Mar 2022 10:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DebDse+me9Sq28ZOGhAzk8ZZTlAKh+MmUm+UuU4sHq8=; b=aPB6x9WqVU1zSI
	Y3t8DbJOpJ+3cTF1e8o7wVNdCKYLAh+AX6Y86DZo3swhfVN1PCmxvtW6/MaHtXHnEb4x8AeM1KmZB
	WzuJWIXfBIiWW8WwSq2xsZylintXHsDxoJhj1/mGvcQK5LzMM0WQLTN+JVVeripnZvMnMZ1YwVVLq
	fZQtwve4wN5pgQo1abzTME8AMFVDRcl3gqO/d1I1ysYMlnuEkmRcIJQtXA0SAFzqMhDlZ+efx0jIY
	ivi+Ko6gtOyIRNSrLN/DaZeuJ25nmJ59lTvuG2mBnIOdrd+nRTsQPjx8YQnBq8N+qfYtfIP0DaFtb
	JA7Rzhx0raPdqooq3M4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXgs6-001cJo-84; Fri, 25 Mar 2022 10:08:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXgs3-001cId-2R
 for b43-dev@lists.infradead.org; Fri, 25 Mar 2022 10:08:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 89D77B827EF;
 Fri, 25 Mar 2022 10:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA03C340E9;
 Fri, 25 Mar 2022 10:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648202914;
 bh=VBttjChkFw1UXnGJ78buMMYVdi2J+mnqNsmcRmkvvHg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=RkXrLwgFLXMYmsyJrQajZYg9jUU1WA5KFvcTrijyxWnxym2RloCLV8SI8+TyXLday
 TV95p6GfEJDLWJ5E1Ak5qdaQb7nOb4XvxNhWXAtBV7c61RhtI+SYiMHltuRfx0xgH/
 QxbNPDpDljQzHjO/gdPsZnOPo9ME+8E95lmTPRyYeoFxHQ17iQ/NpwPBpV3hnNL1yI
 1llUMK0ZITMhmbrEGaNJp0WvN0jY3xlji9T4a27YriVl4XZQc8pUZ03i72kCo46Mo9
 gkgyMxxPsrVPjGDufxGLMxO/uwMd37HdpN2WnI7mrYRnA/F/Ty1y7D1f/p8JbMX4/G
 9z6wO0klFggGQ==
From: Kalle Valo <kvalo@kernel.org>
To: Haowen Bai <baihaowen@meizu.com>
Cc: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] wireless: broadcom: b43: Fix assigning negative value to
 unsigned variable
References: <1648109046-28108-1-git-send-email-baihaowen@meizu.com>
Date: Fri, 25 Mar 2022 12:08:31 +0200
In-Reply-To: <1648109046-28108-1-git-send-email-baihaowen@meizu.com> (Haowen
 Bai's message of "Thu, 24 Mar 2022 16:04:06 +0800")
Message-ID: <87lewy8huo.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_030839_294064_9F9BB054 
X-CRM114-Status: GOOD (  11.16  )
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
> drivers/net/wireless/broadcom/b43/phy_n.c:585 b43_nphy_adjust_lna_gain_table()
> warn: assigning (-2) to unsigned variable '*(lna_gain[0])'
>
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The prefix should be only "b43:", I can fix that.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
