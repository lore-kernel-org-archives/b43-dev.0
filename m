Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E3DFC433FE
	for <b43-dev@archiver.kernel.org>; Wed,  6 Apr 2022 12:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlQIBGlcpAB7FjEkFq3M9REO8dEneC7mlyHMeyksaoY=; b=eQLToJSBtjUZI0
	e9POQkI6IUCB6vdEJhj7jOzkzMGIqIMifYa/Y4FYsj2Y4fLY5QMBfJSliuaiB6yUuVcpaqyVOwgjo
	4SgqsY/rtz1TNVGVU7GShW91fKNdui5xHJnYAdeDJLA6qjr6syO/jJG+H350OrnQ2NNuTDl10dasc
	S3yBPauXio+iO5LZbG/fFWmfcSA7CN0nRAdBVAUOnO+YkzV6fng5S88aSRzWmV2ZGSrg4fv2VTkJ/
	mG57azaF0CrNOjDb1HK5iqh61uw/a5eB5R2DexBJUIPnV8Xh7/RdSUmZ/u3A349YIT7NgMrC8IP4J
	5M1SJw81hpntqsv8kcqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc4XM-005xf9-Sy; Wed, 06 Apr 2022 12:13:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc4XH-005xdO-Ez
 for b43-dev@lists.infradead.org; Wed, 06 Apr 2022 12:13:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9973761A1B;
 Wed,  6 Apr 2022 12:13:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0951DC385A3;
 Wed,  6 Apr 2022 12:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649247197;
 bh=C5yY4TzJsHO5v5SmsV4DdCVU8KzN24skgAd7g6PA70Q=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=f4Sn5I8ER6nvBYLy9ptHOBkC3EiOEEHM89nbOlt0vt6afUVcuXZpzNLUmvJxXittq
 2+2BvXchKEHZ17hbu9h6oFMYTKe4sibMtmYZ0ULB0x5Rir+W4LHX3nxEhnvrD2ZcPc
 V2ZVrLRXHbrHdfAETQm3D6VEyDnPkRxf6K+7YwuYKFh19yUd4/LUez7hHtUCMoR6xp
 eQOtETFdi2XHuTb8SqCxnOVfHDKH30shvaFQEUEflXMrMLMY7MfDgy1wDpqH60I04F
 VSqyl39xqtQNgG/SBKjnbKHX0Lb7E48vnRfpEpgtbz8D33oa00P7UZcH55auL2EdkE
 qTyb8hP/rboZQ==
MIME-Version: 1.0
Subject: Re: [PATCH V3] b43legacy: Fix assigning negative value to unsigned
 variable
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <1648203433-8736-1-git-send-email-baihaowen@meizu.com>
References: <1648203433-8736-1-git-send-email-baihaowen@meizu.com>
To: Haowen Bai <baihaowen@meizu.com>
Cc: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 Haowen Bai <baihaowen@meizu.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <164924719317.19026.17281329284987126566.kvalo@kernel.org>
Date: Wed,  6 Apr 2022 12:13:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_051319_590000_846F06A3 
X-CRM114-Status: UNSURE (   6.81  )
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
> drivers/net/wireless/broadcom/b43legacy/phy.c:1181 b43legacy_phy_lo_b_measure()
> warn: assigning (-772) to unsigned variable 'fval'
> 
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>

Patch applied to wireless-next.git, thanks.

3f6b867559b3 b43legacy: Fix assigning negative value to unsigned variable

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/1648203433-8736-1-git-send-email-baihaowen@meizu.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
