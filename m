Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAF1C433EF
	for <b43-dev@archiver.kernel.org>; Mon, 18 Jul 2022 12:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVyFqym3mHJYou6MSVF39fT6gzm0/8YHHR0qAWLowgM=; b=DaYTqOV+YG+3Pm
	s85DNsACJLjlG87Mk+8lP0FlTz9qlcD1Sk3IFCEJRvdjOYaDHQhFdrGZzRHAkaVV5sdaTX2UIwoE8
	JWcIL54fHBzO08m51FGDQadJ9BcsiTILY0Gxc+4TgtxbSToA4IBwZugdqBrmwgm3ofxR1VcszdwjJ
	qFkN1qt0ozRCSUV+vaog4dMv0ZxBQINylH5CzrxOAY5RYI1TbAOLHSjtcuGiX5F6moejcZyRHS1PK
	JPZp39Y/ws1a7x0cFomGEegVe3Eww8YH84NDlFbm6j8KpUKYSO3MW2wrEKzO2AW4kZoVww+uc8vb0
	ycWcjiSRLbaEH1CiEhLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPXK-00D6ol-Gm; Mon, 18 Jul 2022 12:07:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPXF-00D6lF-61
	for b43-dev@lists.infradead.org; Mon, 18 Jul 2022 12:07:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5BD466146E;
	Mon, 18 Jul 2022 12:07:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82C58C341C0;
	Mon, 18 Jul 2022 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658146055;
	bh=UrxKT41abmSdbKRzjqBkgtXEAHHMGNKmuOTzccd+mpQ=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=hSByNAyDnYY5KQ71gNIXM0NnJ6VtQM0Kr4+M0xDm+X8+46S9zX2SxYMDMLiXd4qYH
	 zJgmr1akBi4Yf9h+sNGv2rek66/Nb/4AIMWojJIO8bGl3/hIY4txIdm3mRhWpVQO/b
	 GN7NDM0KohO75G5Ta5T8DYuTXtclia+WOEB5OvSEsrAf1VQBQhEtTcz1uWrILhAC95
	 zozbsFkeiNy5rJ4rV5/26WYDlPojU0o/jIcRoz8KODhN8lniZyVlpXvYYnjbBJyrZ7
	 8vd0WiDiODg+0THX0Zt+ehuI6uV2ktH0XQuc/jgCRaNs+MTbntUU6P2mz2X3Ap+fa0
	 xKqUhkKyFohCg==
MIME-Version: 1.0
Subject: Re: [PATCH] wifi: b43: fix repeated words in comments
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20220709133119.21076-1-yuanjilin@cdjrlc.com>
References: <20220709133119.21076-1-yuanjilin@cdjrlc.com>
To: Jilin Yuan <yuanjilin@cdjrlc.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jilin Yuan <yuanjilin@cdjrlc.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <165814605166.32602.7331424475643392487.kvalo@kernel.org>
Date: Mon, 18 Jul 2022 12:07:33 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_050737_303416_5DF82086 
X-CRM114-Status: UNSURE (   6.58  )
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

Jilin Yuan <yuanjilin@cdjrlc.com> wrote:

> Delete the redundant word 'early'.
> 
> Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>

Patch applied to wireless-next.git, thanks.

e2dfb8a5c605 wifi: b43: fix repeated words in comments

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20220709133119.21076-1-yuanjilin@cdjrlc.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
