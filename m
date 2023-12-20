Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A0FC41535
	for <b43-dev@archiver.kernel.org>; Wed, 20 Dec 2023 01:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D7fVmq6iOI66X8Oxtep78FYYqY3SDrzlUiV+zRVajEY=; b=BSgiVtLUAlIJfA
	dt+9ZesZJqMSog5vkv1R2Ps7AiXBXpqns5+yP2z10bzukiYKTNl8udJcx1muAwWCqjXzKjKoFoxHR
	a5tlyoh+xc4/GlbAj6bi871HQUxg/W3CUExrM/tPZCqYXipO6t/XX7vOXbeGkFZBrHZSSHfWkMQ4g
	/vN4hEKHJHHU62YXX9Edyrn6YUzrsuT7licNKFaftqBGdY9O5YNPIatQmuzZh11zpzGlVRDc25/o0
	6OO3kiFZ4H6lUVHHB6p3JRYWZTG7ILFfHUTbn+jdIma8GaFYFjKXbmKJd2KeqmSTQBtVVFAdgShHa
	nWqebb2Fweu+OD6Gq5Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFl8O-00FrdQ-0U;
	Wed, 20 Dec 2023 01:12:28 +0000
Received: from out30-119.freemail.mail.aliyun.com ([115.124.30.119])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFl8I-00Frd5-0M
	for b43-dev@lists.infradead.org;
	Wed, 20 Dec 2023 01:12:25 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045192;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0VysF4Sy_1703034730;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VysF4Sy_1703034730)
          by smtp.aliyun-inc.com;
          Wed, 20 Dec 2023 09:12:11 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: Larry.Finger@lwfinger.net,
	kvalo@kernel.org
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH net-next] wifi: b43legacy: clean up some inconsistent indentings
Date: Wed, 20 Dec 2023 09:12:09 +0800
Message-Id: <20231220011209.127586-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_171222_334251_582DA993 
X-CRM114-Status: UNSURE (   7.74  )
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

drivers/net/wireless/broadcom/b43legacy/dma.c:178 priority_to_txring() warn: inconsistent indenting

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=7783
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/wireless/broadcom/b43legacy/dma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index 60e41de72f29..ea73c594d846 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -174,8 +174,8 @@ static struct b43legacy_dmaring *priority_to_txring(
 {
 	struct b43legacy_dmaring *ring;
 
-/*FIXME: For now we always run on TX-ring-1 */
-return dev->dma.tx_ring1;
+	/*FIXME: For now we always run on TX-ring-1 */
+	return dev->dma.tx_ring1;
 
 	/* 0 = highest priority */
 	switch (queue_priority) {
-- 
2.20.1.7.g153144c


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
