Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57460C76196
	for <b43-dev@archiver.kernel.org>; Fri, 31 Mar 2023 14:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhHQgMK/XRpPaYut2OcosmJSo05k7R0WwLrTLIexD+c=; b=OwSHlf1yld7Xie
	nMsQEEnsaloJjnw44T9oMATSympXm0TIMdNJ80uYLoZneuhjVVFW08pxkfl+Mu37y8MmwVqAHdo1h
	RFMROIwL+v1hUzGJfZZ2CbvZ8aUg4BhBTxox6/4HFdYp8z9n+aaCo/vdsT3Xz92GD9Sd5x13r+rCs
	WM3rSwr4Ue8t7VdZpTvsXxqVy0BpIXxAbfEckFsJ5GON5ivLz6AtJbOuj035eHSZsZtCf2AgnE71i
	77qBNzc3Jvqpg+E5ZU0dj6ZKB1WI4kAJzAeSpCAxWIr6mPJ9SYGmLQDHNlQOBxB81uEcW7AIMmuho
	EEE+FcT/ZI5ajMnL3x9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piG5D-007nPf-1c;
	Fri, 31 Mar 2023 14:50:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piG58-007nOz-1X
	for b43-dev@lists.infradead.org;
	Fri, 31 Mar 2023 14:50:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E2FF062982;
	Fri, 31 Mar 2023 14:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E674C433D2;
	Fri, 31 Mar 2023 14:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680274221;
	bh=ctYNEcc9jCIfUQuOIrh2jlob6lV+dmKLxnBbL3nSjYg=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=SHW5AP/vlx371qVOYk22Frb70ZD9Wj1Gno8y45bOgYCzo0Cv2pFObv+o8O0Bu4XfP
	 C39wOuqpxEKUznIGzVraQwB+oYhliF3FZIxsRfT1UviYEm3qLmcqL6vafdb/wN4IK8
	 dlqQjSJYZOTo1/HZWjgeRV31oaXtvvBGUxvkBskdUF6cRJp9kvkbQE8qCbqlbRAjNP
	 1hfRGUOAZk3qsJXXLQqJ7QG9EmnrEMEf9WV0Y4xOtFmUy4G7yM8LI7IW4+RRNs/9tJ
	 CUaKHDqB2gmuO6i8iceVOsTfSyWDnGxq9NrGGaX1kyXWckAktrSQFIv6P9tLlTRzPE
	 qlKTZJurnvOAQ==
MIME-Version: 1.0
Subject: Re: wifi: b43legacy: remove unused freq_r3A_value function
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20230324135022.2649735-1-trix@redhat.com>
References: <20230324135022.2649735-1-trix@redhat.com>
To: Tom Rix <trix@redhat.com>
Cc: Larry.Finger@lwfinger.net, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, nathan@kernel.org,
 ndesaulniers@google.com, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev, Tom Rix <trix@redhat.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <168027421679.32751.109948738378187350.kvalo@kernel.org>
Date: Fri, 31 Mar 2023 14:50:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_075022_554531_DCFACF4B 
X-CRM114-Status: UNSURE (   7.95  )
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

Tom Rix <trix@redhat.com> wrote:

> clang with W=1 reports
> drivers/net/wireless/broadcom/b43legacy/radio.c:1713:5: error:
>   unused function 'freq_r3A_value' [-Werror,-Wunused-function]
> u16 freq_r3A_value(u16 frequency)
>     ^
> This function is not used so remove it.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Patch applied to wireless-next.git, thanks.

4c7f8c237d32 wifi: b43legacy: remove unused freq_r3A_value function

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20230324135022.2649735-1-trix@redhat.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
