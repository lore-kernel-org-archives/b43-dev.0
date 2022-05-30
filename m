Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F79C4321E
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 14:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lohq6tlKUzMmAsinz76KTiiTO4ZR7H1CZVsaAYNLT9U=; b=Q+eQ9trojcfwYc
	UR8gB24K61fV/gCFBrvG7u9ZvgQrtcaOFampvYvREfa5gqdPOaeo1ZQtF7QRKYc98qfbn/TNSQFHJ
	Xn9lL8bRaJ5C43jlyOXIZUcj7qkCVvOHjvFYrzKz2WhiEIK7X7XIeNQy4Q75mEjYRTtSAJFSbeBJl
	seuI3vXWOucyuQB0NeNJeMwAQzbeGsOZHPOXUqSX+JpMDEpN3Nr5GWZxRudeT3oAFu5nRYe4bQAgm
	9I6NwLSljPUq+6+Jz6iC5ucbB2KGtnL228sJ8jyamNQ0A0J9MLKNLnAMpCxb90RDO6u79rU+4uSiP
	OMsJ8gv4EE9sHDaQygMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvgEW-0078pn-An; Mon, 30 May 2022 14:19:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfm0-006teu-Cw
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:49:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA39F61029;
	Mon, 30 May 2022 13:49:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8510EC3411F;
	Mon, 30 May 2022 13:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918571;
	bh=gEvp05trtCahzfWE7DwLeU08NiFJsEmHDyAXVpflLBk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W8PfOjf3soIXZwF799vWifIvimRvLZk3tGOcZEic6qakJElLwFyT7QUvdbA/F+Ugm
	 eB28mbfjrPpLmIcqxpimxG3y+QCkoj+X/bxC2dATyUw9Mm1dG0nTQD229P/XqjgvrH
	 /5UNcwYzpL/EciADJVaTayDvaPweZB9N8/aiAyCV/zYUK6bazR83SmZPeFUrtth1Fk
	 dcopgqZhL83bsUjPNIQ6kWUR4jfIifr/WiwnHXqCuW4O06qZGvdxRQCSB3vOmLvZHm
	 9THPzBYA1cjlpM7jO/hZOqBcpx6hbD9t6ms/bzwR7FwWBhLgEOQUr8Pmg+K71OnwXQ
	 rfIWVUf3iI+Sw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Haowen Bai <baihaowen@meizu.com>,
	Kalle Valo <kvalo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	Larry.Finger@lwfinger.net,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 03/38] b43legacy: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:48:49 -0400
Message-Id: <20220530134924.1936816-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530134924.1936816-1-sashal@kernel.org>
References: <20220530134924.1936816-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064932_878116_CD7CCDD0 
X-CRM114-Status: GOOD (  11.81  )
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

From: Haowen Bai <baihaowen@meizu.com>

[ Upstream commit 3f6b867559b3d43a7ce1b4799b755e812fc0d503 ]

fix warning reported by smatch:
drivers/net/wireless/broadcom/b43legacy/phy.c:1181 b43legacy_phy_lo_b_measure()
warn: assigning (-772) to unsigned variable 'fval'

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
Signed-off-by: Kalle Valo <kvalo@kernel.org>
Link: https://lore.kernel.org/r/1648203433-8736-1-git-send-email-baihaowen@meizu.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/broadcom/b43legacy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/phy.c b/drivers/net/wireless/broadcom/b43legacy/phy.c
index 995c7d0c212a..11ee5ee48976 100644
--- a/drivers/net/wireless/broadcom/b43legacy/phy.c
+++ b/drivers/net/wireless/broadcom/b43legacy/phy.c
@@ -1148,7 +1148,7 @@ void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev)
 	struct b43legacy_phy *phy = &dev->phy;
 	u16 regstack[12] = { 0 };
 	u16 mls;
-	u16 fval;
+	s16 fval;
 	int i;
 	int j;
 
-- 
2.35.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
