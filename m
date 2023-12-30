Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 354EEC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 04:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lUbCdsDntg/V0ipbnmoMonOTiWnVRum4xc03ZhmwbY=; b=zjYd7RUDzGZMz8
	WF4T6lBpahS58ZKoxKSj4qJOVEnp4fjb0Pp25dWhoN+qD7aAz8di4Ffg9nPMPg/pOTiEEZrrvB29J
	iHSNN9fkt4gE4fzGKls8+nl97bjyJcQd4KFj/U/q73aTmm8Mzz0DdxUjBcqAIeaYYoHOWLSRW44bk
	VUiBm4Bg/I7gOjAWG0k70ILtnNRWGWInHdgmbt9SxSqsCuk9TSUMHDA6j/HuYzgZ5ki+X9j/J19on
	9mhNl2rmR+RDUk8hrD0Akq+8MVnX446YKv+8+9qsNakHBwIZTGlPUvO80/FefVSKxJWqA5M6zqp0O
	3IvWo9VsHF9LTyUG9bqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKd-002AFk-2g;
	Sat, 30 Dec 2023 04:52:19 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKa-002AB9-3A
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 04:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703911924; x=1704171124;
	bh=rgfZsgOJu+BPxq6BKookU94qgH8Sx+gD893GO289ygE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=BMA6j+KPHs0BKzmnYdHabhNlX82XaPT4Vs19q/lBXsgjVM5tM/MqSixLrmxuXd/QX
	 MmfJ18Ces8sM86qOBw+PaZdvO4Hdh/48gGhzydD/7XQ3NPwsApCx7JuhWJyLrdvp3t
	 EtX4C1LCu3qb/S0lxxS5hZIy8HMmZPxwpK5FDeLzBRBl8SpJOyarHn4dqy1upWEcAe
	 2+U32hBm/eofBgVW/6gXQw9ev2QTGv+SmA4m+mVglTTbOunDEZ9nD4gBarsMavVf4y
	 PSXFpQNOP8Tv1Pmuaj6z46XZabqljZJEz7px+Xo9Y1EZWZ/SLOn3TGLhIGcfc5jgOu
	 Y/HslpOMx/o1g==
Date: Sat, 30 Dec 2023 04:51:45 +0000
To: Kalle Valo <kvalo@kernel.org>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless 4/5] wifi: b43: Stop correct queue in DMA worker when QoS is disabled
Message-ID: <20231230045105.91351-5-sergeantsagara@protonmail.com>
In-Reply-To: <20231230045105.91351-1-sergeantsagara@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_205217_175563_B00DEC4F 
X-CRM114-Status: UNSURE (   8.10  )
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

When QoS is disabled, the queue priority value will not map to the correct
ieee80211 queue since there is only one queue. Stop queue 0 when QoS is
disabled to prevent trying to stop a non-existent queue and failing to stop
the actual queue instantiated.

Fixes: bad691946966 ("b43: avoid packet losses in the dma worker code.")
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index c81117a22ebf..b6ac1526c0e8 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -3603,7 +3603,10 @@ static void b43_tx_work(struct work_struct *work)
 				err = b43_dma_tx(dev, skb);
 			if (err == -ENOSPC) {
 				wl->tx_queue_stopped[queue_num] = true;
-				ieee80211_stop_queue(wl->hw, queue_num);
+				if (dev->qos_enabled)
+					ieee80211_stop_queue(wl->hw, queue_num);
+				else
+					ieee80211_stop_queue(wl->hw, 0);
 				skb_queue_head(&wl->tx_queue[queue_num], skb);
 				break;
 			}
@@ -3636,11 +3639,12 @@ static void b43_op_tx(struct ieee80211_hw *hw,
 	B43_WARN_ON(skb_shinfo(skb)->nr_frags);
 
 	skb_queue_tail(&wl->tx_queue[skb->queue_mapping], skb);
-	if (!wl->tx_queue_stopped[skb->queue_mapping]) {
+	if (!wl->tx_queue_stopped[skb->queue_mapping])
 		ieee80211_queue_work(wl->hw, &wl->tx_work);
-	} else {
+	else if (wl->current_dev->qos_enabled)
 		ieee80211_stop_queue(wl->hw, skb->queue_mapping);
-	}
+	else
+		ieee80211_stop_queue(wl->hw, 0);
 }
 
 static void b43_qos_params_upload(struct b43_wldev *dev,
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
