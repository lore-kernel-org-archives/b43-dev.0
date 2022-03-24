Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3521DC433F5
	for <b43-dev@archiver.kernel.org>; Thu, 24 Mar 2022 08:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jtZRCUAnr1iwqxsmyvyMm85x6v4iGSNbjFs2rubf0U4=; b=lFDodbWi2Q15za
	Ahw71ztV7iUxFnOHcUQDoXqBWi5kftRFa1VsNfkBkB7MmRZL8IUUCjr3m7VcxR/U0to69NsgU4FSn
	5Uaz6aeuoY2VOGo+MytAeX5Tz23lN805IJtgnMmTc7dPT+lAygHRKacoc8AaqWrU+z/agUNrY+kUs
	eGjaPndbmnW7sBDV+iedaR6Vm+wnz5ql4awwxRC29MFx+8Ckw2YZZI4nUyK+vdBW5w6QbOR8K7wWJ
	N8hpr/sZ3ADw2D9o9a7jT+WW9Tpw7LSJy6XNqWWSxnhE40epJoZO7aIC+KVuB5G8aRaxmcNc004U+
	tyIK8Bl9CCJaYJH/iy0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXISA-00G0TX-LO; Thu, 24 Mar 2022 08:04:18 +0000
Received: from edge01.meizu.com ([14.29.68.187] helo=mail.meizu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXIS7-00G0SH-VB
 for b43-dev@lists.infradead.org; Thu, 24 Mar 2022 08:04:17 +0000
Received: from IT-EXMB-1-125.meizu.com (172.16.1.125) by mz-mail04.meizu.com
 (172.16.1.16) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 24 Mar
 2022 16:04:13 +0800
Received: from meizu.meizu.com (172.16.137.70) by IT-EXMB-1-125.meizu.com
 (172.16.1.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Thu, 24 Mar
 2022 16:04:08 +0800
From: Haowen Bai <baihaowen@meizu.com>
To: <kvalo@kernel.org>, <davem@davemloft.net>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Haowen Bai
 <baihaowen@meizu.com>
Subject: [PATCH] wireless: broadcom: b43: Fix assigning negative value to
 unsigned variable
Date: Thu, 24 Mar 2022 16:04:06 +0800
Message-ID: <1648109046-28108-1-git-send-email-baihaowen@meizu.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.137.70]
X-ClientProxiedBy: IT-EXMB-1-125.meizu.com (172.16.1.125) To
 IT-EXMB-1-125.meizu.com (172.16.1.125)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_010416_177342_90B369BB 
X-CRM114-Status: UNSURE (   8.85  )
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

fix warning reported by smatch:
drivers/net/wireless/broadcom/b43/phy_n.c:585 b43_nphy_adjust_lna_gain_table()
warn: assigning (-2) to unsigned variable '*(lna_gain[0])'

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index cf3ccf4d..aa5c994 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -582,7 +582,7 @@ static void b43_nphy_adjust_lna_gain_table(struct b43_wldev *dev)
 	u16 data[4];
 	s16 gain[2];
 	u16 minmax[2];
-	static const u16 lna_gain[4] = { -2, 10, 19, 25 };
+	static const s16 lna_gain[4] = { -2, 10, 19, 25 };
 
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 1);
-- 
2.7.4


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
