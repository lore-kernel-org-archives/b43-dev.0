Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE419C4706F
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 05:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoI0RU896T2oumzI+79p1GPTha8ujJky+74UJ0RLmvA=; b=zGpUzoG1M43qXl
	0WXFel3GMITQ4IqVTLTSTlGTftkzFDq9PWFmPZlpvUYQe+GtAwBSEEfXbkTv/9OCEure0AK16eG80
	C2o2Ax8iWLy2iwQ4Thzo0Lt5OqNzEjzaK0e2d22ZmlUq6aoQ1nKuYspteAp1nhHmvim5OnutZPSkw
	WDXeaLsB3O2OQZzM7nMUHbo25WJ8hPAOpT4wf1CfHdyp2t7tGzQSMoO3Y92qMIc2XyR8MQnvihNzu
	3DEqLKP+gXI8TJCjgGxGAxTf4AgZn7AtxczfBsd8PCzSkR0X3Vih2BHbQ6n+VAlCs+Y3y7gfk/FBb
	IDug8D7mafor7zLaLOdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzT-003yI4-0o;
	Sun, 31 Dec 2023 05:03:59 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzQ-003yHJ-2i
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 05:03:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703999034; x=1704258234;
	bh=nMmY4lgSrVOhiGZvska8zO0P9lepPYf3Fiw+Sy4tIfM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=jr2j+Kfc4KlGvnS8FgkLquzWm38h6gO/Dm8FrvOU5KyM+gSPjvfkFr8EZeaFjVD7A
	 6DewXceSr5rOj+JqkZVDf+yg14Ni5d0eYG/fKz1k/v1q7lMtOohYm8qdT+QQZrj3yw
	 /jdIYshMvSabOI9FoE4/OjKXnfkpfLijeXzfCTcjjDIcuIn2fR0opr1WIgp0yO48BQ
	 gDY2ccGLeCOwtReCvzlF2e663WorzVNdWrA+/sGbm9xQlIbcnRldTxZNvAMnGYj/g2
	 sI4vLxBF/E1b2YaCxb2gyImD6HGSrXltHyUCTa8JJAqGowJbg1zY01+wJBtJGsio7q
	 QEPjXlt3CPUoA==
Date: Sun, 31 Dec 2023 05:03:45 +0000
To: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Julian Calaby <julian.calaby@gmail.com>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless v2 2/4] wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
Message-ID: <20231231050300.122806-3-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-1-sergeantsagara@protonmail.com>
References: <20231231050300.122806-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_210357_025609_DA079EAC 
X-CRM114-Status: GOOD (  12.02  )
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
ieee80211 queue since there is only one queue. Stop/wake queue 0 when QoS
is disabled to prevent trying to stop/wake a non-existent queue and failing
to stop/wake the actual queue instantiated.

Fixes: 5100d5ac81b9 ("b43: Add PIO support for PCMCIA devices")
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---

Notes:
    Changes:
    
        v1->v2:
            - Refactored logic with helpers (suggested by Larry Finger
              <Larry.Finger@lwfinger.net>)
    
    Issue Details:
    
        When PIO support was first introduced to the b43 driver in commit
        5100d5ac81b9 ("b43: Add PIO support for PCMCIA devices"), four queues
        were allocated for different QoS priorities for video, voice, best
        effort, and background. This was modelled after commit
        e6f5b934fba8 ("b43: Add QOS support"), which has the following issue.
        The core networking stack maps these priorities in the skb, and these
        mappings are noted in the ring's queue_prio member. When disabling QoS
        in the driver, the skb will still contain the mapping for the core
        stack while only one queue is actually considered active (the best
        effort queue). In the situation that QoS is disabled, b43 needs to pass
        0 to ieee80211 queue functions since the number of queues is set to 1
        in the struct ieee80211_hw queues member.

 drivers/net/wireless/broadcom/b43/pio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/pio.c b/drivers/net/wireless/broadcom/b43/pio.c
index 0cf70fdb60a6..e41f2f5b4c26 100644
--- a/drivers/net/wireless/broadcom/b43/pio.c
+++ b/drivers/net/wireless/broadcom/b43/pio.c
@@ -525,7 +525,7 @@ int b43_pio_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	if (total_len > (q->buffer_size - q->buffer_used)) {
 		/* Not enough memory on the queue. */
 		err = -EBUSY;
-		ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
+		b43_stop_queue(dev, skb_get_queue_mapping(skb));
 		q->stopped = true;
 		goto out;
 	}
@@ -552,7 +552,7 @@ int b43_pio_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	if (((q->buffer_size - q->buffer_used) < roundup(2 + 2 + 6, 4)) ||
 	    (q->free_packet_slots == 0)) {
 		/* The queue is full. */
-		ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
+		b43_stop_queue(dev, skb_get_queue_mapping(skb));
 		q->stopped = true;
 	}
 
@@ -587,7 +587,7 @@ void b43_pio_handle_txstatus(struct b43_wldev *dev,
 	list_add(&pack->list, &q->packets_list);
 
 	if (q->stopped) {
-		ieee80211_wake_queue(dev->wl->hw, q->queue_prio);
+		b43_wake_queue(dev, q->queue_prio);
 		q->stopped = false;
 	}
 }
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
