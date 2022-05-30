Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23D2C433F5
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 13:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NZJCK7+f+ZVAa8ceRa07TiUtAYAam+KGjE0kFJkBFY=; b=I+tob3cdtYRrGw
	xoAaQX8y/0Sos2XPYsD+aOVBexv7MWcygNDhqKOQlIpTwtCn4OXwu0yzbakkUvJqvdqs7ferERV8n
	iW84JuRKx3n9X14kv4uhkZRAtn1YwLfnRnyIov9/brFf0Vjyb47N5y2jaxfeh6yanfJ3PkthnWRPN
	0CuxS38PpmCIx3onrqt0YcBaPJZ/Lqp7i4bEwn5T9VqrLDlBeOtbCyxdLaEcq1TrnD0ueHl//Ph08
	GmRuwASXy9sx7mRRVNbZdsVzbsJHkx3AmrIV5px6SiGbNc3LBmYAzoDOwQXZQdysSClYIidjRl/ik
	Pa+JKByQF6rL2/7kfw/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfaq-006mnL-1w; Mon, 30 May 2022 13:38:00 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfV3-006jZE-MU
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:32:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 14FDCB80DB2;
	Mon, 30 May 2022 13:32:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DE6DC3411A;
	Mon, 30 May 2022 13:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653917518;
	bh=nQbb+Dvg94Bd3lpBOt9d1emxz4LV6Rz434ipGpczzEo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SjEaaHvRaPBWOZXYO60/XjyjWJi7bPcaHQmj6FmWGviFqwpEhV0VzA8hXqpKOqF0e
	 y5Cv0vxz/fucA5Vm19b/vj5P+ysz/fz2ltCLiyn1erM5f/XgM1lDiaE4UC4zWIyvJN
	 alyCpHkbaTb0l2OrPO/5yETV1YpMVm0Mg9chQeFtKnBZPoK3GhkTmNElJ9iMiGo5YB
	 o1ChrV1vlbTDRKQ9hhnMsjoqIqKdY1eMtwP45DGoAYuVUCl14Ghnv9LkqsRxrAjuVA
	 qhyfR5OsEX6VeDw1A9Q5Ou2wemYU28p7R9/V1395J67n/1vgErlnpv3ZerljyPWL4m
	 T5JwuZRIU0RrA==
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
Subject: [PATCH AUTOSEL 5.17 009/135] b43legacy: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:29:27 -0400
Message-Id: <20220530133133.1931716-9-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133133.1931716-1-sashal@kernel.org>
References: <20220530133133.1931716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_063201_945435_9A38A6AC 
X-CRM114-Status: GOOD (  11.71  )
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
index 05404fbd1e70..c1395e622759 100644
--- a/drivers/net/wireless/broadcom/b43legacy/phy.c
+++ b/drivers/net/wireless/broadcom/b43legacy/phy.c
@@ -1123,7 +1123,7 @@ void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev)
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
