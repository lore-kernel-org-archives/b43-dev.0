Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CD4C43334
	for <b43-dev@archiver.kernel.org>; Tue, 19 Jul 2022 07:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5SvFR9SngaB6mqOwSvc6N3jDv4cRQRZHY49W45s90eI=; b=Azi3+zJ7bVbyJf
	eW1h/4/7ycJV/8PcLBtlB70/+1Xb7vZ2miPZOe6elEW3SScxM/VDsgZz829XRHyKY1w+2OyHYuUY8
	IA+UCON0nkLdfrixqOlL37aEeUe2A73TtSR+xxXhuND2o1nyYQh7Zf6Mn+Juf+qJ0HNddDChnSCmE
	pfYZTw3qumoPfHy4Aw8wSxFo4bX5EKnqsoDNbEMwZr8URtlzuXHJv0k5nxG8AwVU0a7lzi/X5xugq
	/ctbQ6YM0qo8IIvJPD5G7W68Ta+Nh9aN2xr8yNHcfNNuT4bTq4nuzD727mYUkVPL4Ri+xPR4hJraD
	CR6mXXjDQa+MuqgIgreA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDi6A-0066Tv-Un; Tue, 19 Jul 2022 07:56:54 +0000
Received: from out199-5.us.a.mail.aliyun.com ([47.90.199.5])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDi62-0066Km-AG
	for b43-dev@lists.infradead.org; Tue, 19 Jul 2022 07:56:50 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046051;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0VJqwIJv_1658217398;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VJqwIJv_1658217398)
          by smtp.aliyun-inc.com;
          Tue, 19 Jul 2022 15:56:39 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: johannes@sipsolutions.net,
	Larry.Finger@lwfinger.net,
	kvalo@kernel.org,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next v2] wifi: b43legacy: clean up one inconsistent indenting
Date: Tue, 19 Jul 2022 15:56:37 +0800
Message-Id: <20220719075637.111716-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_005646_624251_EDD9F2AE 
X-CRM114-Status: UNSURE (   7.33  )
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

Eliminate the follow smatch warning:
drivers/net/wireless/broadcom/b43legacy/main.c:2947 b43legacy_wireless_core_stop() warn: inconsistent indenting

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index cbc21c7c3138..4022c544aefe 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -2944,7 +2944,7 @@ static void b43legacy_wireless_core_stop(struct b43legacy_wldev *dev)
 			dev_kfree_skb(skb_dequeue(&wl->tx_queue[queue_num]));
 	}
 
-b43legacy_mac_suspend(dev);
+	b43legacy_mac_suspend(dev);
 	free_irq(dev->dev->irq, dev);
 	b43legacydbg(wl, "Wireless interface stopped\n");
 }
-- 
2.20.1.7.g153144c


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
