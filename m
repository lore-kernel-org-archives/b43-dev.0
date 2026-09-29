Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EB79CA5FA1
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 08:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGnHp1lMAwCaiNAT3j8sWOqn/veom4e+5APMZe4QFAw=; b=PXt0OwJu91kRLt
	oGXC41VkZ8oFGwN8Pd1D6B+NjaF1Toq9i8LZnZPHnphn2L+9tFjqndgk/tDLuMPD/CyX+C/9DPNHQ
	8JL7pNkOcwkuMIJ9LFkFn8jbABhFy67BUKU1aJIhyhWOwAnXVI8wU48Ff1Mj14a9qqRuzz90TdtPe
	sjbLXEzjhuR41znDopt+jI5yfDSBL6uaKKX0966pFsiNEaeaWPtW/pa1n7ZGOx90h0vpaQ5+g/zGG
	QV1JnyssL5Q03IeYfpY41cnDI/AsQ3JmjTEN7hiYSSSGhiTWHvtQCZ5/5eWRrm9C7tqSyBAd1IWp5
	ws53w7I1j7S/tiGPhzfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTC4-00000002lvq-3NvS;
	Tue, 29 Sep 2026 08:28:08 +0000
Received: from mail-106103.protonmail.ch ([79.135.106.103])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTBx-00000002lsK-05kF
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 08:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790670477; x=1790929677;
	bh=yEwew7jBaK5kRRGaa2h0ZUzhCuD7vGgBcI47NzGlCZo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=xLB1XhM0dEG/N9RI58GswV/uJ19jn5I+e3zTMTRbdjlTqzCNSoy+kIMBhVqi92dTX
	 O4rNo2IYQ9N/M+ONyQoBRtDMots5VMDTr4mqrpDQ7Lqd88Mhj2sFwpLSmrdOPgjKZY
	 cpP1LedlwhxfHTRHEwStApfkqe37qgl1YUgrzXZ13B1K264JVn9VGiRzh3SYn5joo5
	 jgyru16pWxgj5n/sSTPEzERfOZc8LW9rmyzBhNglKdgz+kaV/reay3nPM4apH3boS0
	 4tVmmr6vKrIyTnYPU8yTkzpLw67TvdgtTJx1xJ9OGiw2q6an4piyLqX1ZGjeFyLhSB
	 z5ruXRelQeYSQ==
Date: Tue, 29 Sep 2026 08:27:53 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
In-Reply-To: <20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me> <20260928200309.01a36f5e@barney> <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me> <20260929081403.6076a6da@barney> <20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it> <hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me> <20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: 7e10b522f9f14ce1a37a129c44c67ea8e667b6ff
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_012802_386148_239192FB 
X-CRM114-Status: UNSURE (   5.96  )
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

> Least, but not last, the wl order of macro operation and b43 order are different in multiple places, how did you reconcile the two?

Good sign: we're core_rev 42 too, so our disassembly and yours should be
directly comparable.

femctrl/srom: not touched, no handling anywhere in our port. One fixed
test board, so we've never hit a different value. No data point to
offer - if you find out what it gates, let me know.

wl order vs b43 order: we captured wl's real register-access sequence live (bpftrace kprobes on its own osl_readl/writel/delay, wl left loaded and bound throughout - never touch its binding while probes attach) and diffed it against our call order, case by case. 

Sharpest example:
b43's generic switch_channel calls the per-channel tune, then
unconditionally re-applies a captured POR snapshot afterward - captured during wl's first association, on channel 1. So channel 6 got tuned correctly, then immediately overwritten back to channel 1's values.
wl's real order runs the POR replay once at attach, not after every
switch. Cost us a real mistune bug before the trace diff caught it.
Smaller example, same category: our TX-cal port was missing one PHY
register write wl issues between the gain-table override and starting the test tone - doesn't crash, just makes the measurement never differentiate.


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
