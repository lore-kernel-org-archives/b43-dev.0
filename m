Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A42D0FD88D5
	for <b43-dev@archiver.kernel.org>; Wed, 11 Mar 2026 00:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TWVo8XWMPGiH0dWcvlhjhkMxLB+xUI51aQl+jKpupw=; b=oOoqD5M6sYb1cP
	HlvpERKOuUMtiHx7P0k7keFAbrlp/NAXdRXcE5gDNXdgqcYER4doy4AQ6bCtd6MtB1lFlrDUI9vUs
	Bll/AVB4nNtgfu1FzrolPrAHbXV2UtlMzRAZbmOdDx5DZ9jWV2QYVhDtTzGodaY70ihsW/8uQVap9
	FUO3blle2l18wnNszhZx+KPuShWmqk5UZFG3NScpdVgXEkizbVtA4jGMsFzQ2Dj6MTJEIopIolKbv
	Iwg3WY4RsEAoPFWNTM2EmPryzb1jaJEdZ1Ocrw4QJaCGRsK6hU4SyUF2O1mCBt+CEJwk4aAw6rboz
	eD3OnxlsL7Xq6XfQQSNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07k1-0000000ASxn-3SKy;
	Wed, 11 Mar 2026 00:48:01 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07jv-0000000ASxD-3kLf
	for b43-dev@lists.infradead.org;
	Wed, 11 Mar 2026 00:47:57 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-359f35dfef6so916245a91.2
        for <b43-dev@lists.infradead.org>; Tue, 10 Mar 2026 17:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773190075; x=1773794875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O664dCsdWRRkRc+ofehgmpux+USEDU3vAot0X1wBxCI=;
        b=eWjoZgBCzGyUHY36UsqFs1b10xcMsUz2w5VMR1iis9USdDjKmpcfkvzzsoeTeGKH/8
         S+YLuBC6vQjht1zEz7hNHlue2sMbhvy2HIYtHCbZz3v181q+pc2EHSEHGs8ElrTk1psk
         IqlLIdnH3UYIYmRA4SSpen/MqcONl9IR1R3VCCuzPTul/AF6sn7sr4B89oq2qonGPQsl
         WtZgcHo+89Lf/9cUNuSHt9q45sWHb4owRHSh4SYTfLAdQGy/yUPLQjL4xCn0m3wqSJyd
         GhfOC/iE0f4V5G90URVSI6U6JoInvK7oU+JUGCWfOFtClKGeGJ+asJuCuUXbp9XEp7pN
         +7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773190075; x=1773794875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O664dCsdWRRkRc+ofehgmpux+USEDU3vAot0X1wBxCI=;
        b=I00O4dghVoKIX8OxTUUhDljPEG2f7rVurFbKOxwL4CfZpUCZ4lZODCmOBk3dDGcB1a
         GswCqpt5ydhHhGDSUXdUR9+296eUfn818F3nHxlZoVQQf/n+uYJofNSbn5eOU/ucuctP
         /ObzuU8kEU/hopdNpSQdcxa+wO3TqjQ71o7xxpsXAZGQS5WgfGjoXuFy287Td2YY0pQ0
         SDA13MVZ+iyWRKHJeLjPobzS4K5rUh3LwRcSJYJC1A8wK1xWNC5NhryF+GMzY8Z7hiRS
         EghLRy6qaJH9sQ9bl413KUNoeSfnFgk4/RIBlyMWfw/6BaT8fkCuj4WBxs/PV5pOB3n1
         9DXw==
X-Forwarded-Encrypted: i=1; AJvYcCWx8bc414kuy/QBWyFie7rMDLACT2/9OtwfCLwAAA9HU6oFOxXxZLRbz5snndKTZ2o582Rd6waa@lists.infradead.org
X-Gm-Message-State: AOJu0Yx96USYE9ZvuzdJFUF4TQ703IqaSeid4D7RwT4lCSP+0z198AX3
	U0MBaVBc7oLh1Yhi/K9z6uLd6vrnJe0lBjULob/LXzi+wbftKuxDfUeho0VR115f
X-Gm-Gg: ATEYQzwW9CS4jR1SCGgh+o8OUHJnb+5CH4NfjAom+okYHFApoMIKQhUbCx3t9KtbX0+
	hLybaZVvHK96QsgwOdttNtnJ2bvn9XZlwOQ3k1i2++KLe7+RWXQW9l3rYTotI0LW7T5RAMxqfre
	ijchY+Jf1W+1tCwQf8ioiMmLqUrl563V9fGW1/Tto+QPsaIIFdvgpI/Kfj9ZRTeLH6VG+ckQE8h
	Vs7VYE4jQV0Yqm3qO3IqWotwYKgLriIoFCksazFSFnfV/WoRIfEnhWUyskU/5vQeydZ1h5uIu+Z
	h9WGSVuCh4sW/4HIHVc6opMe6VU1RMPiejk1e0kbIubDkKPxuS2q+tH3AgYGXkBrsx5NBcue+9B
	atWgcfWl2//cNazwcIMsqieEspnGq2+ag7Ps9NzijraF0Bjrv5/E4uwj5Um76oe1CQk7qE67tTH
	D7P5txVTL0Itrf56+2/Wwa3dphsv6Hpm6gSMFP7FcgcocfGbxIqSoI4A==
X-Received: by 2002:a17:90b:3dcd:b0:340:25f0:a9b with SMTP id 98e67ed59e1d1-35a019e88camr707120a91.33.1773190074956;
        Tue, 10 Mar 2026 17:47:54 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cde37ffesm373842a12.0.2026.03.10.17.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:47:54 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	b43-dev@lists.infradead.org (open list:B43 WIRELESS DRIVER),
	linux-kernel@vger.kernel.org (open list),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH] wifi: b43: kzalloc + kcalloc to kzalloc_flex
Date: Tue, 10 Mar 2026 17:47:36 -0700
Message-ID: <20260311004736.32730-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_174755_938018_79C3AD42 
X-CRM114-Status: GOOD (  15.49  )
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

Simplifies allocation and allows using __counted_by for extra runtime
analysis.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/dma.c | 18 ++++++++----------
 drivers/net/wireless/broadcom/b43/dma.h |  4 ++--
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 3a8df7a18042..05da6987a845 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -837,18 +837,19 @@ struct b43_dmaring *b43_setup_dmaring(struct b43_wldev *dev,
 	struct b43_dmaring *ring;
 	int i, err;
 	dma_addr_t dma_test;
+	size_t nr_slots;
 
-	ring = kzalloc_obj(*ring);
+	if (for_tx)
+		nr_slots = B43_TXRING_SLOTS;
+	else
+		nr_slots = B43_RXRING_SLOTS;
+
+	ring = kzalloc_flex(*ring, meta, nr_slots);
 	if (!ring)
 		goto out;
 
-	ring->nr_slots = B43_RXRING_SLOTS;
-	if (for_tx)
-		ring->nr_slots = B43_TXRING_SLOTS;
+	ring->nr_slots = nr_slots;
 
-	ring->meta = kzalloc_objs(struct b43_dmadesc_meta, ring->nr_slots);
-	if (!ring->meta)
-		goto err_kfree_ring;
 	for (i = 0; i < ring->nr_slots; i++)
 		ring->meta->skb = B43_DMA_PTR_POISON;
 
@@ -943,8 +944,6 @@ struct b43_dmaring *b43_setup_dmaring(struct b43_wldev *dev,
       err_kfree_txhdr_cache:
 	kfree(ring->txhdr_cache);
       err_kfree_meta:
-	kfree(ring->meta);
-      err_kfree_ring:
 	kfree(ring);
 	ring = NULL;
 	goto out;
@@ -1004,7 +1003,6 @@ static void b43_destroy_dmaring(struct b43_dmaring *ring,
 	free_ringmemory(ring);
 
 	kfree(ring->txhdr_cache);
-	kfree(ring->meta);
 	kfree(ring);
 }
 
diff --git a/drivers/net/wireless/broadcom/b43/dma.h b/drivers/net/wireless/broadcom/b43/dma.h
index c2a357219d4b..f9f65bbe2d76 100644
--- a/drivers/net/wireless/broadcom/b43/dma.h
+++ b/drivers/net/wireless/broadcom/b43/dma.h
@@ -228,8 +228,6 @@ struct b43_dmaring {
 	const struct b43_dma_ops *ops;
 	/* Kernel virtual base address of the ring memory. */
 	void *descbase;
-	/* Meta data about all descriptors. */
-	struct b43_dmadesc_meta *meta;
 	/* Cache of TX headers for each TX frame.
 	 * This is to avoid an allocation on each TX.
 	 * This is NULL for an RX ring.
@@ -273,6 +271,8 @@ struct b43_dmaring {
 	/* Statistics: Total number of TX plus all retries. */
 	u64 nr_total_packet_tries;
 #endif /* CONFIG_B43_DEBUG */
+	/* Meta data about all descriptors. */
+	struct b43_dmadesc_meta meta[] __counted_by(nr_slots);
 };
 
 static inline u32 b43_dma_read(struct b43_dmaring *ring, u16 offset)
-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
