Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE758C433EF
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 14:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3B0sIVZnfBT6ku9Owyn1rBp0IJFYOcSU/lY12l2ciig=; b=RwMdF3ToUwq/OK
	OvmzEQB/HEJZr/hT5zKDbLEifpCxfO3fF5nMghAXnyLq1EoNiULilUR+rR7Q62eAAQcXhCtzcv+ZK
	Am8pi1DmQawzeP0Dzg65loXwiQL3A9ToFKHdVVfqZ6rVn26oa7Esyyx2r+griOCwtiCpYamZhBsZI
	SR8dd84RmXM37JcaO9wMtMifOzw1AjOA66G9RfIR7Sa4knfTCH2zE9N7o038NkqkmXznyUNKVpksL
	kH9kkpkc1CieMjEgz7u/6VceJYvtsg9xMIjjRbq+sFzQAGdAnk9i4iYxK0WW7glZsOe1ItExT7d6C
	sP7EZpCBSP02BbZDn1TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvg9U-0076ab-Kk; Mon, 30 May 2022 14:13:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfjh-006s22-R0
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:47:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A0AF60EC3;
	Mon, 30 May 2022 13:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 619F8C3411E;
	Mon, 30 May 2022 13:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918428;
	bh=hnA5EyoeITBvXjoxz8y+FqzUH8+90/suivYDlXICjYM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n3vZ7/Q0xGcEB+fbqMg+Z3m4l+6T0h2zelNsKiz8hnkQYkzaZtV0rzlERm1lbtla3
	 Wuo3x/mEaDYu2xsY6M4DaMiEb3Z1dFK7bQgd4vWanQNsavw2+XaZLMJDStLw+65q+q
	 mXxxe/bHN/z+uDvCPJaxH5vk3JAm5jYRrWe71eGyXV0ERDiupql869MrGyp5shykr0
	 s4w1m3JzJJVZkugDPu+m5MYadqkUBwtORzBt3S7fM7HfsWtr8eWgJUcvplVBku1UX/
	 BDy6gOwWzLIytYJvHJx2qeRbxHGHt/mfBmAOlDMJNFDlGQ4/idjYoDEo+0chyMQ8AF
	 XNEblyRGOr5Rg==
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
Subject: [PATCH AUTOSEL 5.4 03/55] b43legacy: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:46:09 -0400
Message-Id: <20220530134701.1935933-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530134701.1935933-1-sashal@kernel.org>
References: <20220530134701.1935933-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064709_965872_9CD98149 
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
index a659259bc51a..6e76055e136d 100644
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
