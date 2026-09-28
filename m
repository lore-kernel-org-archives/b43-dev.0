Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1707DCA5FA3
	for <b43-dev@archiver.kernel.org>; Mon, 28 Sep 2026 21:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OuhHsXuddf0FcMbEVSf157hVJu++YKWZyVPpW8g01o=; b=thZ3BW1svDHUae
	PcZ7doQ3WRF7rTiM+ffzoPLgRSawI/I43nsOaDm7zvm8aUgtalXeDDuU1rdgXypFz/1QvdvE6i+sv
	QFWEPaScFSfIxvSCWLtyJfGbNYSaDwhs9+kTngUf5EcGJJwFRv8wD84Yb/9lxW8q4dNA2//b8TidN
	2kV2h/o+L+qjV1kjiHTAP4zS9if5ZkZwUeZCis+f9s/NHF0Fu8YcQKu8nQBvztTS73sMr/daXePZF
	HlREzeqMqIi5js75tN+IDfQzl5SUq86ljpphi6hMX514brXPV4K69ZX4XUTFbIUv7419+BinEEnAr
	tmp6oiwlpM3eptEfkfcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBJE6-00000001hpP-1rdE;
	Mon, 28 Sep 2026 21:49:34 +0000
Received: from mail-24424.protonmail.ch ([109.224.244.24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBJE3-00000001hor-2Y4t
	for b43-dev@lists.infradead.org;
	Mon, 28 Sep 2026 21:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790632167; x=1790891367;
	bh=PNs/xjd+CmpCK8QDGuLrwOcskb3fP6eQToWpewAfVvI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=OykkXDzhez/BXrBMx5ymjDAgqVfIrQgReIcP47Ch+UaklYm8/CLuA1jJJANPk1lBy
	 +00qwQMSuQM06Y6kNSJYhRd+Kr0G0nqAFVhzdS+jzEo6y0Lgtgioz2WCSLOWR9WDIQ
	 QY2A40Pzh7aJfY39qlGT46Z3vvJ5ZkOdBNkgQLLsBFpNHzq1C5JMatdND8HODB726G
	 L44KXkhBQO3o9yGBrRXmh9+J8dXtBQ7aZnzt+cKd65IBEo+hUj0vHH+rwE5DSE6fhx
	 w4X3ubx5ZLP/WcU0GACye0ZPQ3lSRP9BHDZPGkducg7h4Q+9l7gMf4icakIOsxostf
	 2L4m2qr2oE2vg==
Date: Mon, 28 Sep 2026 21:49:23 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
In-Reply-To: <20260928200309.01a36f5e@barney>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me> <20260928200309.01a36f5e@barney>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: ba3b4ed9e1459082c2a0fc85a9bf61f856bed3a3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_144932_113617_05B5CEF4 
X-CRM114-Status: GOOD (  10.60  )
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

Hi Michael,

> So I think if you use one of these approaches, you are fine.

Definitely not. :o Apart from register dumps Ghidra was used to decompile and analyze the original driver and all steps were heavily AI assisted. Also, the driver is still kind of rough.

> I think there
> must be a human involved to review the specification for copyrighted material.
> But also for quality control.

I can have a look at every piece I give out.

> So, yeah. Feel free to post both your specification and your implementation if you like.
> Please also fully disclose how the intermediate steps were developed and
> what role AI assistance played.
> Then we can decide how to continue.

I'm keeping the repo private for now, I'm happy to review the spec or give it out piecewise, just to be safe, if someone is interested in implementing it.

> I hope that not too many changes to the existing common parts and other PHYs are
> needed, to keep the regression risk low.

It's about 11.000 lines but I think the common parts weren't changed too much.

I`m looking forward to hearing your opinion.

Best regards,
Andreas


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
