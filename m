Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A6CC04A68
	for <b43-dev@archiver.kernel.org>; Wed, 27 Jul 2022 12:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHkig+a1LIHtzCTYTbwaOvCpntIcv/Lgxw/+S0CCWIw=; b=B2Fa7VzYihZl6E
	FUX1wUwubxxBiVfOh1DmwTWcnzxq6ci4rqM3DgQWfgYTu+eikKhEXdNsrlMDlP4HrpmXLm/xOi3dt
	YLq5hBfTXJ/ZY/fw2b1Wvcx3HhsiAIJheJRd7prIKl6ddK5TMl6gsbNiZ/yuLKdI/GNyZ8lgyqPtX
	XRm8t+i52lpy06l3+Czf3W3n+p34KHFQkKqGy5cNQJ6atpXRjXZQGuzd6Wj86gw81HzwgBMp//K1X
	ET++/zIUiyslN/rNaQsSJeH0yOmu0qp8QYgdA8VGw3RZIKcdpbFGlG6vmbZMKU6vkok3LowvG0NST
	9bbdZVo2Yb0tuqO6vbYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGgYF-00Dj9x-P8; Wed, 27 Jul 2022 12:54:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGgYB-00Dj5y-Id
	for b43-dev@lists.infradead.org; Wed, 27 Jul 2022 12:54:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D2C3B615FB;
	Wed, 27 Jul 2022 12:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFEAC433C1;
	Wed, 27 Jul 2022 12:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658926446;
	bh=bUI8RRcRRi8N4BCjRhAZBlP3oQu0WfRYo+LB9U7ijHI=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=JCHGNXwGYot1cE5EL6Gc3+C09mDz8gC6wsoK7F+rP4k6EuhITigg3GaQXGPRg3GmV
	 Pl7jfG5plca5zDcHmeAM47HBPux8Dw8QLBSmMvE+tNpbjiBKXweXjGpbV3Jx/NrDgA
	 PBgUJPE4rkdvgioC+hPE0tefuicFIwpDDumQkL+pKXOYbWuGzpwMWh2CPdrwbkRIt7
	 09aDkk2Oe1kyVOpM6qo7tP+YaTmMGbs/wFlkBOOEayw2BvZN9/z1G2pHrkoyHqt+sK
	 RoBx2TqQJGMTf+CbVrJXlLRqEkR6pRZC+OfidtHElKtiypk1AQUdPDuMSWEaWO5vMe
	 2Hjnq/JaUcWtQ==
MIME-Version: 1.0
Subject: Re: wifi: b43: do not initialise static variable to 0
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20220720194245.8442-1-gaoxin@cdjrlc.com>
References: <20220720194245.8442-1-gaoxin@cdjrlc.com>
To: Xin Gao <gaoxin@cdjrlc.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xin Gao <gaoxin@cdjrlc.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <165892644221.11639.11999522991830836091.kvalo@kernel.org>
Date: Wed, 27 Jul 2022 12:54:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_055407_690726_73E7F5B7 
X-CRM114-Status: UNSURE (   6.51  )
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

Xin Gao <gaoxin@cdjrlc.com> wrote:

> No need to initialise static variables to zero.
> 
> Signed-off-by: Xin Gao <gaoxin@cdjrlc.com>
> Acked-by: Larry Finger <Larry.Finger@lwfinger.net>
> [kvalo@kernel.org: improve commit log]

Patch applied to wireless-next.git, thanks.

dbf8cd368a47 wifi: b43: do not initialise static variable to 0

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20220720194245.8442-1-gaoxin@cdjrlc.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
