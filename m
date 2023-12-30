Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B713C4706F
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 04:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCdTlgVIJTzkCcmYZAVtb6gGe6T2SYVZCtkDz7zfqd8=; b=4X0qUAFf0IGAW1
	Lyp/Qwcgh0oV2coYr7MTBG+564K/+jdUkNH0lJeDls0jwpJpCy7SryIXmlzVuagDTH/dLxJp1kPaJ
	bt0V8TD2Se6CObKE8F8azOwIDUbgjyoiaa6DJ2sVBu7+1Ze9u2vX3jtYN3nghhAZf8+oQKJ1dVGab
	6MslcO9969A2V18ytmtKRRxsuWLippiE2asj5NRGMdbvz4bNbFMKCWhUEHzqQOEF34VWuejhNq/Rb
	OJ6Q/qW/SeHW4/omb1ymbag97M+yUAsbs5dHEpjDJz+D9pvsEUwLI9wygiyjAKpquO5Yj2eGwpDA2
	ZFYYOd5oZTDTGF5gr/KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKM-002AA2-0F;
	Sat, 30 Dec 2023 04:52:02 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKI-002A8t-1P
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 04:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703911916; x=1704171116;
	bh=caRSz9JKsn3mBdUsKSY4AOfcZFf54zv3YQQgaKNP9h8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=njDNIiTL3IF6x3x/pXq0Ry8quqaGuG+CzH54ahHsfyz+W9qccrydDwGbmqrzrCiXb
	 sqqjDsPkSodTUlwTgtcdPPGNbJrE9btj76ixqdc1ueE8oAiKqZmfCDvpsApMDQ8SIr
	 qY3kJpQ1H3auM0Q4I11P/ro6ivWXDDREHKOjhfLNxCCyfiLBxt4zs9M7TW1sK+hA9+
	 nbNckCWKvkDxJtTd61NfF16H77lrJRY9s4D3nv83TCFJ9Qv+jomqj5cxVQICc/3O2w
	 sCVU66WXaT+qO4m+PXOrw9D8sUWiWn5fRgY9rDhBQkVmMXDVBJCimasNFRzENUls95
	 mIhtexoqM3YLQ==
Date: Sat, 30 Dec 2023 04:51:40 +0000
To: Kalle Valo <kvalo@kernel.org>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
Message-ID: <20231230045105.91351-4-sergeantsagara@protonmail.com>
In-Reply-To: <20231230045105.91351-1-sergeantsagara@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_205158_624544_A43D2AD2 
X-CRM114-Status: UNSURE (   7.79  )
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
ieee80211 queue since there is only one queue. Stop/wake queue 0 when QoS
is disabled to prevent trying to stop/wake a non-existent queue and failing
to stop/wake the actual queue instantiated.

Fixes: 5100d5ac81b9 ("b43: Add PIO support for PCMCIA devices")
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---
 drivers/net/wireless/broadcom/b43/pio.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/pio.c b/drivers/net/wireless/broadcom/b43/pio.c
index 0cf70fdb60a6..7168fe50af5b 100644
--- a/drivers/net/wireless/broadcom/b43/pio.c
+++ b/drivers/net/wireless/broadcom/b43/pio.c
@@ -525,7 +525,11 @@ int b43_pio_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	if (total_len > (q->buffer_size - q->buffer_used)) {
 		/* Not enough memory on the queue. */
 		err = -EBUSY;
-		ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
+		if (dev->qos_enabled)
+			ieee80211_stop_queue(dev->wl->hw,
+					     skb_get_queue_mapping(skb));
+		else
+			ieee80211_stop_queue(dev->wl->hw, 0);
 		q->stopped = true;
 		goto out;
 	}
@@ -552,7 +556,11 @@ int b43_pio_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	if (((q->buffer_size - q->buffer_used) < roundup(2 + 2 + 6, 4)) ||
 	    (q->free_packet_slots == 0)) {
 		/* The queue is full. */
-		ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
+		if (dev->qos_enabled)
+			ieee80211_stop_queue(dev->wl->hw,
+					     skb_get_queue_mapping(skb));
+		else
+			ieee80211_stop_queue(dev->wl->hw, 0);
 		q->stopped = true;
 	}
 
@@ -587,7 +595,10 @@ void b43_pio_handle_txstatus(struct b43_wldev *dev,
 	list_add(&pack->list, &q->packets_list);
 
 	if (q->stopped) {
-		ieee80211_wake_queue(dev->wl->hw, q->queue_prio);
+		if (dev->qos_enabled)
+			ieee80211_wake_queue(dev->wl->hw, q->queue_prio);
+		else
+			ieee80211_wake_queue(dev->wl->hw, 0);
 		q->stopped = false;
 	}
 }
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
