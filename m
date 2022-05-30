Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2869C433FE
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 14:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uf9K3Xxi48SfAFhJx/xEaTf61Ppxn1Yj2GZPCkbfsIc=; b=u0VTw+9GCRLTDE
	PvttED1R7YxUL+w2/0Aa7/Mj2ykbYDqEA5FPPO+kccOOpbjTGwCN9fP+5m0L/T7l2NFHo/jcjWyLM
	96idRQZg+L/CU0KsCscOZDmpAI9zeocI2fE/VjFEjcOGtdk9VfB6J1NfPR0XVFP4Sr1CsDBvdcE2A
	49SE7syVx35ElJj0ZTfx7Ebb1FAsFl1Ezev/dcq/34Sis3CTbtCKR4NoaSUZfpMqoEiA+FW8u8AsI
	UwekAOBVe87AYQ1fuAENiuKkEE5i48Xwn538CyaFa9wUCU3BguW+zOhQZElhRy7po3ZXKmFUQbU0b
	KvPRc2clVg1+8mhE9Z0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvgIx-007B6o-IM; Mon, 30 May 2022 14:23:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfnY-006ubL-Jc
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:51:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0351A60EC3;
	Mon, 30 May 2022 13:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EB61C3411E;
	Mon, 30 May 2022 13:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918667;
	bh=hxKkS62U9ALvBp+JqKwQV60CfqU/ls8qBQP0BkI0t/s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gr2+eF2vcC/innIOB1CbkkW7DPBLoQs6bQXqgfyi8AhUEbCWuPBWd4/cc+K0QHhh2
	 Z+QzPmIw5lM6yYUwr2p7YqY3NfEk4YyKYoQOOdpzs2vg7lq06fTd48Q3AULmX9EOPa
	 J1Y9+hR7mE5j7XeIKukxfnKqSqe7eh2SUp1F+98pla2PdP9AVm00hnnk8Y23PQVl3A
	 nY+FRA8vjVBl4+B1FzSMMN1mx6FvWupxbgJY2S3xUYj6ncOjva0jFNd0R79bjpjUK5
	 7FYiYAF9KzOYmhzQQYIutsAMXfQhTPwfzYGZ7it4IqAVNSre0Gof50Cl5Hn1GYA4x8
	 F4MVTUifQIOUA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Haowen Bai <baihaowen@meizu.com>,
	Kalle Valo <kvalo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	thunder.leizhen@huawei.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 04/29] b43: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:50:31 -0400
Message-Id: <20220530135057.1937286-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530135057.1937286-1-sashal@kernel.org>
References: <20220530135057.1937286-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_065109_223239_5D57B9DD 
X-CRM114-Status: GOOD (  11.92  )
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

[ Upstream commit 11800d893b38e0e12d636c170c1abc19c43c730c ]

fix warning reported by smatch:
drivers/net/wireless/broadcom/b43/phy_n.c:585 b43_nphy_adjust_lna_gain_table()
warn: assigning (-2) to unsigned variable '*(lna_gain[0])'

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
Signed-off-by: Kalle Valo <kvalo@kernel.org>
Link: https://lore.kernel.org/r/1648203315-28093-1-git-send-email-baihaowen@meizu.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index d1afa74aa144..9cbc17c2751c 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -594,7 +594,7 @@ static void b43_nphy_adjust_lna_gain_table(struct b43_wldev *dev)
 	u16 data[4];
 	s16 gain[2];
 	u16 minmax[2];
-	static const u16 lna_gain[4] = { -2, 10, 19, 25 };
+	static const s16 lna_gain[4] = { -2, 10, 19, 25 };
 
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 1);
-- 
2.35.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
