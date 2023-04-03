Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A2BC761A6
	for <b43-dev@archiver.kernel.org>; Mon,  3 Apr 2023 13:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOMITR79+Ma6uzVRmCAqnby8rV8KDibepGl41Ychgy8=; b=4kIz72jRAfbJj1
	8Y1maPTb4W511aZVIjcIlqijawUrSYzVXPR/TPi8tAXKpuTK/8JYVjj4p6/SMsufWBtqGCaRT1gxp
	hFvsKUp7nANJfdrWCDWEAtAVgrqYCuVCF8jGEfVjhA9TEjQHSQCvl3SS78Wvyedl9pJ6XhlwMhqUz
	rraz8RIkVsjNk6a0D2tw2g3V+laq1+0vDZtKnjcuN0ePp8oVMu6M8FpQXW52cMTDUNGJH/GuevLIY
	7p5BXFGC/GSHY532JToun71F1tROvH3WyQ8xe5VOWpWlE2u51ZOS6Khlo1wbcJ9xyo2tjC/qDh6Mp
	p/jGN1I/Hrny+fjfB7zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjKST-00FV4F-36;
	Mon, 03 Apr 2023 13:42:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjKSN-00FV3M-2L
	for b43-dev@lists.infradead.org;
	Mon, 03 Apr 2023 13:42:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C4DC61A15;
	Mon,  3 Apr 2023 13:42:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03780C433D2;
	Mon,  3 Apr 2023 13:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680529366;
	bh=owyom4CpdsC7GEmcYFEc5y8r7LgfED1mw1+NirsoRf0=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=D5RNrASxmZ7G3Cn8ml/ukv+Y4dVsKQxdjihXNg7D1nsNfa3wD7s257+KBFagv+6Dq
	 q9U+WHYsun/hcLIiN7bkfAyUEWvpy/gldxu3NKZzgvo67lQCs9uqmrBC4UQgiWcvrh
	 ifO0VjLej/cGjSQF3Pl0ZxagLSUx6pu8MTyxtpRsMzBhz+X7Aw/Y5mmxLIwR9eTPKP
	 n3oavfUVfy8haumlJg6kCFuyzGavuKSNBO48h8IETz+Eh5sATqDzNE8tJlM7C2nBCm
	 UM0RoSukVPMzlwqZrMoyj6owrfqZYZbBQddZCnpAg7Z56CxNopVCYW1POBJLV7OnIs
	 WTjrrPF4vNDOA==
MIME-Version: 1.0
Subject: Re: wifi: b43legacy: Remove the unused function prev_slot()
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20230330021841.67724-1-jiapeng.chong@linux.alibaba.com>
References: <20230330021841.67724-1-jiapeng.chong@linux.alibaba.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Larry.Finger@lwfinger.net, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Abaci Robot <abaci@linux.alibaba.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <168052936227.11825.11333120719656159579.kvalo@kernel.org>
Date: Mon,  3 Apr 2023 13:42:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_064247_803524_8D4B6C68 
X-CRM114-Status: UNSURE (   9.11  )
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

Jiapeng Chong <jiapeng.chong@linux.alibaba.com> wrote:

> The function prev_slot is defined in the dma.c file, but not called
> elsewhere, so remove this unused function.
> 
> drivers/net/wireless/broadcom/b43legacy/dma.c:130:19: warning: unused function 'prev_slot'.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4642
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Patch applied to wireless-next.git, thanks.

e83ce86aa7d9 wifi: b43legacy: Remove the unused function prev_slot()

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20230330021841.67724-1-jiapeng.chong@linux.alibaba.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
