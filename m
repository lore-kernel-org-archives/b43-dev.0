Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F251CA5FA1
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 06:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sh8UCcvLiBqHRlgmHINv1mU9ZoEsF/E54HNOaqNDpdc=; b=1jHUt4UXrJARL/
	z3mXWMcVSU2PjK0B4bd2VxsOOc6VdVQkJcOIXxjT/4ugxq9V6kkHhAGtQI43dHyK2wQAauTgZrn9S
	gMz9GrS7ypMu0W/5wcBfWVHBKDOzlOWs/NL5uUweRsoaz31DkLokwz/59Tpec9cM/t9H4roDgeCgi
	G/d09wZpSaBRLv9jcU8fPrU+obywdFVUInMiYm98opSN3Ona1BFQjH9nzuLIhMfGKfwNoxU0Gi77m
	oFxdpILbojFiMVD/cZQ1HT4xL7GNUT2E0574wrLdDhFlrZxU0Q58t+Wag4hFOZLScjZHjW467ztl4
	sBGJgM/IlG9HJqoQFSuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBROl-00000002SNn-48X6;
	Tue, 29 Sep 2026 06:33:07 +0000
Received: from mail-24429.protonmail.ch ([109.224.244.29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBROj-00000002SNN-0rvU
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 06:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790663582; x=1790922782;
	bh=ZJLjf/XSBsakccCAtQa7ls6vt5asSHX0Q72kjasJRNM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=COOqX5FZaIaG48mVHHU8Br/inrHruJQ1jN4lGcJ0pIRiIaP+HyMk0HC+krFH6qtOX
	 1ezOBKq2tCqwbz77rl1CEGF/kWeLKFImGUIAVSX2zg7kLyswzBsUThUwGxWfzDAiD5
	 ROk8e5MoDucKknj7i/PhS7z9xhtMocrFj/PgrgeCWT4IOa+dsGn8CDgoU1Y2AyN5AR
	 WCj+4CGv44W1uj2imblsjz7Bi/Tck8nMagMsS6xJbn3Gaq2koF8fERZyX2GLAKp9X6
	 lW3cnXlToUkkdgQXJX5qsOqPOEg7y9UGqvjERY5m9MbszcioBIQUcRb0oWy7Df3zV9
	 0PmGR5Httuf1A==
Date: Tue, 29 Sep 2026 06:32:57 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <zo8YVNaHZYNaNktRGNv_R6A9T0HZsUzzfs7_GFdLGK0Pt4kD8YIkowzbMySMQ3Td04j_h2HsfVwGy3d5w98pP4up1zGMPRj76g5dBGo1Ru8=@proton.me>
In-Reply-To: <20260929081403.6076a6da@barney>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me> <20260928200309.01a36f5e@barney> <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me> <20260929081403.6076a6da@barney>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: d0c8748c7560fce9e482a40ee3389e822e22ccf8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_233305_882614_E40B6491 
X-CRM114-Status: UNSURE (   5.08  )
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

> I think the number of people interested in working on this is probably approaching zero these days.

Probably.

> Maybe we can find somebody doing an AI implementation from specs.

Yes that should be fairly easy: Let AI write it and modprobe/rmmod it.

Maybe I can also start a new clean AI session with just the spec. Would that count?

> But then, why not publish yours instead?

I thought it would be easier if I don't do that, but of course I can make it public.

Best regards,
Andreas


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
