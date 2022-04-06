Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B77C433F5
	for <b43-dev@archiver.kernel.org>; Wed,  6 Apr 2022 12:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWO0d65W1lgKyEjYu+aDQZmolecFULD0ato9HY52vIw=; b=OVxUsRNE/pa/i6
	rWLQErsdhUkceABp89xRzZ+qUWX4Sj0xF14ALcqFq7Y8zj6CYEtbSe1/aarObHXSZ/0aQBGGAly4l
	qo7DseQ/B+L/ZoRUFTExc4dbAZK5uFEDmNyKP42E2s2m8Q4IzJf0euvL2ZAG8SI/lKnQWInDU3ezq
	zES0915eP+SN8+XzepG1Ce/mkitN4B5Adord52TcROQe2sYgv4sVH2RcS+l9oJS/yqhhWxKwwx9mb
	5jyoSPhDRg6sGDz7WZ2GJ5s/UMeOWqQWGYFbWNiYLwZIK0kyftaDbO/mawc0mxeEEBe3368LXuyCw
	TPQAi9L+HjlhWLb5CS6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc4YY-005y6k-8Y; Wed, 06 Apr 2022 12:14:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc4YV-005y5b-En
 for b43-dev@lists.infradead.org; Wed, 06 Apr 2022 12:14:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A37C3B82271;
 Wed,  6 Apr 2022 12:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43586C385A3;
 Wed,  6 Apr 2022 12:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649247272;
 bh=qyZ9AYOMwCdHEOHTI0k1UmaT9fMUcZsXkV8dbGjNtOo=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=TkvO/07TjPSngk6jdULAnCyXGGMMEitdC3dkpQFfUlNMfYn/DmKfWzhlcEoeWXGEz
 U6d+ZtXEnCu8lpgPd9CjxFWMe2+00LGKo+u28QJxXiBARmRTo/c8admekhSt6nFo26
 fVX4yAPlOWzWZ+y/aa3qZqUC45dWUWGqs/VWVRUEYEmrrYHSn59rYvbms5AazxRCga
 ttsuBQvvzOQ57IJUqatNukmU3OODfccSkgvDP7HiU2OOFBx4GpFX8KkzpHKpvW4FP4
 6NihZzIEchc/1EacXPhusZC43bTHsrvXlUX1D8cr8Tx78jaV2H/U395tSiF/emWRzd
 KBT7z/B0PNq4w==
MIME-Version: 1.0
Subject: Re: [PATCH V2] b43: Fix assigning negative value to unsigned variable
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <1648203315-28093-1-git-send-email-baihaowen@meizu.com>
References: <1648203315-28093-1-git-send-email-baihaowen@meizu.com>
To: Haowen Bai <baihaowen@meizu.com>
Cc: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 Haowen Bai <baihaowen@meizu.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <164924726846.19026.10101315161220642062.kvalo@kernel.org>
Date: Wed,  6 Apr 2022 12:14:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_051435_689865_711BBEFE 
X-CRM114-Status: UNSURE (   7.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Haowen Bai <baihaowen@meizu.com> wrote:

> fix warning reported by smatch:
> drivers/net/wireless/broadcom/b43/phy_n.c:585 b43_nphy_adjust_lna_gain_table()
> warn: assigning (-2) to unsigned variable '*(lna_gain[0])'
> 
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>

Patch applied to wireless-next.git, thanks.

11800d893b38 b43: Fix assigning negative value to unsigned variable

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/1648203315-28093-1-git-send-email-baihaowen@meizu.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
