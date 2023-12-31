Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4254C3DA6E
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 05:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OBuGZNp6hPYf8H/gi8dk6NH130j2TFpGKriL35GmWc=; b=SPEXQJbrRklJBy
	JM+AVLLbZLK/M+hF+MbTvJSeLH8iVCcjteGPm1hqgM33f2JoeXkxggtA7sASeFJDDho3Yt3dQjozw
	efpNeELm6YnfyMIYxbKHpGZTzfO2ulPdfblp6M+PZfMBIPaGhmQDTdIyZo1gUgvpYamTTmWM6UdSf
	5uAkW3Aaa/B0Dny64cK5+Qxb/CvCKtnv/xDepQgPiVAkZuxrGtw6HXpz0OUOubfSbS9YD7xScQoE8
	w4XB0r4odPzb/139BwlybnYL/k3Qb88TVYbgF5Go5OElAo+Ch3dQJ9gxSLmmYY+IyiYCPgAWgDe//
	Msxv1pGgUrTUPI3X9NLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzd-003yLU-13;
	Sun, 31 Dec 2023 05:04:09 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnza-003yJW-15
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 05:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703999044; x=1704258244;
	bh=NmMPrf58wJ+F6E+Z9exyRV+1aoIrZhkWoXl0KSFnTL8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=d53RqzNmwVXdT0sdMUyczQg3vCLBYpudkcdSeDv2z9O8kr5RRNoxoeSN0wIM4Wu55
	 s0Mjy/VXwTgV9ZdLes4EFNC5/6uoqz4A3RX20LoSHmj7TkfWfJa1WJPjA1guCSQQzR
	 Tr+4bt6qNyftRGhw+9+ZKoi9/N2UilHADgG+vRVTovZpIe8PvQYTlTWK+atiMf8LFb
	 5NIJbjbGjhJ0J4D1uDbMFw2Vuov+d081qOkg8FaZIj4lUpQY604ePhQqG6em1T1+yz
	 26U/ebp18KHovz6W0yN8gSiq3t6P2ZfabKCChawC5WOC3qmhaofHeQG6X2tUEZpJfS
	 R4LwqPKYCoi/w==
Date: Sun, 31 Dec 2023 05:03:51 +0000
To: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Julian Calaby <julian.calaby@gmail.com>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless v2 3/4] wifi: b43: Stop correct queue in DMA worker when QoS is disabled
Message-ID: <20231231050300.122806-4-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-1-sergeantsagara@protonmail.com>
References: <20231231050300.122806-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_210406_523394_E5027B91 
X-CRM114-Status: GOOD (  11.96  )
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

Notes:
    Changes:
    
        v1->v2:
            - Refactored logic with helpers (suggested by Larry Finger
              <Larry.Finger@lwfinger.net>)
    
    Issue Details:
    
        When QoS was first introduced to the b43 driver in commit
        e6f5b934fba8 ("b43: Add QOS support"), four rings were allocated for
        different QoS priorities for video, voice, best effort, and background.
        The core networking stack maps these priorities in the skb, and these
        mappings are noted in the ring's queue_prio member. When disabling QoS
        in the driver, the skb will still contain the mapping for the core
        stack while only one queue is actually considered active (the best
        effort queue). In the situation that QoS is disabled, b43 needs to pass
        0 to ieee80211 queue functions since the number of queues is set to 1
        in the struct ieee80211_hw queues member. This issue was then extended
        to the changes in commit bad691946966 ("b43: avoid packet losses in the
        dma worker code.").

 drivers/net/wireless/broadcom/b43/main.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 92ca0b2ca286..97d8bdeaa06c 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -3603,7 +3603,7 @@ static void b43_tx_work(struct work_struct *work)
 				err = b43_dma_tx(dev, skb);
 			if (err == -ENOSPC) {
 				wl->tx_queue_stopped[queue_num] = true;
-				ieee80211_stop_queue(wl->hw, queue_num);
+				b43_stop_queue(dev, queue_num);
 				skb_queue_head(&wl->tx_queue[queue_num], skb);
 				break;
 			}
@@ -3627,6 +3627,7 @@ static void b43_op_tx(struct ieee80211_hw *hw,
 		      struct sk_buff *skb)
 {
 	struct b43_wl *wl = hw_to_b43_wl(hw);
+	u16 skb_queue_mapping;
 
 	if (unlikely(skb->len < 2 + 2 + 6)) {
 		/* Too short, this can't be a valid frame. */
@@ -3635,12 +3636,12 @@ static void b43_op_tx(struct ieee80211_hw *hw,
 	}
 	B43_WARN_ON(skb_shinfo(skb)->nr_frags);
 
-	skb_queue_tail(&wl->tx_queue[skb->queue_mapping], skb);
-	if (!wl->tx_queue_stopped[skb->queue_mapping]) {
+	skb_queue_mapping = skb_get_queue_mapping(skb);
+	skb_queue_tail(&wl->tx_queue[skb_queue_mapping], skb);
+	if (!wl->tx_queue_stopped[skb_queue_mapping])
 		ieee80211_queue_work(wl->hw, &wl->tx_work);
-	} else {
-		ieee80211_stop_queue(wl->hw, skb->queue_mapping);
-	}
+	else
+		b43_stop_queue(wl->current_dev, skb_queue_mapping);
 }
 
 static void b43_qos_params_upload(struct b43_wldev *dev,
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
