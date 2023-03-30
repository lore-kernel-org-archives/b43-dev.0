Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240EFC74A5B
	for <b43-dev@archiver.kernel.org>; Thu, 30 Mar 2023 02:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cN1s7/BS4PsnbTLnizrActik++fnwaSsoqu3TGcDy7o=; b=tpVLDrJW3Qn/IH
	Ahb6e7WW0Lvfu98g3RV6FZlRSIpnbze/jgeOW40kB/02WdFJ3uj9619Tfqwf4qyYpc9dPeUQtmKMz
	ewcI0n127WVOqeD6xijausgPKi9glDQjUOw9NWwKZniPAa5KjZcIyFYn/ZpF7MtCufpW8/7Djm+dM
	LPznLPQ6zAkt088LplY1TsUwYK9qsnH/VmbgUAXBreRVBugPPaLB7gJBr97BczXuzzRxc5ukdEIW+
	YRVWkIeCUn9+iJt27Fyvqwzg5O8gRN75Di9tAZyTb1hclERXYrHtvm850oIeONvCi1CHsH6LSO+E6
	gD/vS44rNhN45VC9GLng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phhsU-002Ki3-1K;
	Thu, 30 Mar 2023 02:19:02 +0000
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phhsO-002KhC-0e
	for b43-dev@lists.infradead.org;
	Thu, 30 Mar 2023 02:18:57 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R411e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046051;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=12;SR=0;TI=SMTPD_---0VeyhhZG_1680142724;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VeyhhZG_1680142724)
          by smtp.aliyun-inc.com;
          Thu, 30 Mar 2023 10:18:50 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: Larry.Finger@lwfinger.net
Cc: kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] b43legacy: Remove the unused function prev_slot()
Date: Thu, 30 Mar 2023 10:18:41 +0800
Message-Id: <20230330021841.67724-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_191856_417278_F0CF7D06 
X-CRM114-Status: UNSURE (   7.22  )
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

The function prev_slot is defined in the dma.c file, but not called
elsewhere, so remove this unused function.

drivers/net/wireless/broadcom/b43legacy/dma.c:130:19: warning: unused function 'prev_slot'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4642
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/net/wireless/broadcom/b43legacy/dma.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index 6869f2bf1bae..60e41de72f29 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -127,14 +127,6 @@ static inline int next_slot(struct b43legacy_dmaring *ring, int slot)
 	return slot + 1;
 }
 
-static inline int prev_slot(struct b43legacy_dmaring *ring, int slot)
-{
-	B43legacy_WARN_ON(!(slot >= 0 && slot <= ring->nr_slots - 1));
-	if (slot == 0)
-		return ring->nr_slots - 1;
-	return slot - 1;
-}
-
 #ifdef CONFIG_B43LEGACY_DEBUG
 static void update_max_used_slots(struct b43legacy_dmaring *ring,
 				  int current_used_slots)
-- 
2.20.1.7.g153144c


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
