Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34158C04A68
	for <b43-dev@archiver.kernel.org>; Wed, 27 Jul 2022 12:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZnQkQTEK5WxVE7yUrNhEWuNYOjkhZPrgPXm91e4Dw0=; b=Y/gMS9j6d79c8O
	XNGKeKrpQpKYVP1+XYZCq5QLC7QoRGn4uZRx79Xr+UDWGU6EcAOUFpHjFTY+93K/IemadTT8EpSv8
	pOD76ZfNAvL+ftdqBz2Lxb8mPpkpR4fWqOBn5fxOwJOH23zM8UZ5CA8pP5y8z9qznhqjihrr1XbkQ
	SfVB0wt1Mh4eWCo6QUg2fkPLm/ZI4Vbnq5UJc9enyw5E4w7LOJCg1h75AnWB2pbP29UcpP6MreDk2
	+sWkMCTqKIV4mctfmKwFD62YfQ+gdwICkXvIkAlixBljKXhOvCz+n/pxf1VZR2ks1mcVWOJHgL7f7
	eU3CSbLHELs973TO3HaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGgXs-00DiuK-6s; Wed, 27 Jul 2022 12:53:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGgXm-00Diqw-LL
	for b43-dev@lists.infradead.org; Wed, 27 Jul 2022 12:53:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 82F8E615F4;
	Wed, 27 Jul 2022 12:53:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A5E5C433D6;
	Wed, 27 Jul 2022 12:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658926417;
	bh=3RCDpDtQR1Vz/cIwomt6p/0yfoytC9LPqFXeIvarhMU=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=NbEFoU8nnEVQi7h6uQ51HrNGIYIfL6aKGERBViggvZfbxgys6RhUL68IATnbGYJxV
	 3jKhxJCtaFxgMzriKUgIARjZMhUSk/pRIUseqogPIy4Nqd2UnsDtOx/du51mgokNCd
	 Cb2Q57NUwVeqJCTKf8sGIfqEH3U0xB2Fh675DsiM47TX/GfgiMTNaW9pir4OYZqBSz
	 H+LieArSx4DrU7AkN7wGe5mW7UNiTCnRhHh5BhkYZIzZY8EwOQk2NwN0aaTf/Hs1AU
	 l50sT3xB+RtzJcUfUQhV/dfDaVjApqjAxieFCQjU8wF73/JeJNklY2Y3pCOplCnwRZ
	 bN2+jbNoMtXrQ==
MIME-Version: 1.0
Subject: Re: [-next,v2] wifi: b43legacy: clean up one inconsistent indenting
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20220719075637.111716-1-yang.lee@linux.alibaba.com>
References: <20220719075637.111716-1-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, johannes@sipsolutions.net, Larry.Finger@lwfinger.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yang Li <yang.lee@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <165892641335.11639.12371328790924183483.kvalo@kernel.org>
Date: Wed, 27 Jul 2022 12:53:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_055342_768095_07F58A9A 
X-CRM114-Status: UNSURE (   5.79  )
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

Yang Li <yang.lee@linux.alibaba.com> wrote:

> Eliminate the follow smatch warning:
> drivers/net/wireless/broadcom/b43legacy/main.c:2947 b43legacy_wireless_core_stop() warn: inconsistent indenting
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Patch applied to wireless-next.git, thanks.

7d13c0ae38a6 wifi: b43legacy: clean up one inconsistent indenting

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20220719075637.111716-1-yang.lee@linux.alibaba.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
