Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005FCCD3427
	for <b43-dev@archiver.kernel.org>; Mon, 11 May 2026 04:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=11P+zFBT1Xp2sLntErGpzwTTNDwJBiJfUqrzqlmUbOg=; b=d5L6oIdp8c6HeH
	KQD+4aPj7UdYYiOHnfP0sEiIKgGETb4UlGQ3jaBmqLoss2cY+QVEx9fIvKiIhLkb7yGW+nrD3i6r8
	wvlx31lgMckkr3EtO5/gSRRoworl6Xy8WIWo46fUMl29369kzf6+12EiRPhPnAIDZI6qiTaFhqy/F
	FTWaVSTKZEzS4KAkXtyLKommaMcDKpNB8tBFjFOcjSjTvNKFrcl8BdIP2MW16s7WgMPrjcibliYzs
	JnsdWV+41kk/ngaAaT6aGs2CV4FDeIOOWhmMXAdvSMGjmnjmD67XXxk6kTLM0lhkQBE7rz+j7e8mg
	/bl9lm7pqB1sK1yJvSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMI7b-0000000CFSD-1ARW;
	Mon, 11 May 2026 04:19:59 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMI7V-0000000CFRK-0DN1
	for b43-dev@lists.infradead.org;
	Mon, 11 May 2026 04:19:54 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-83659d38e38so1643992b3a.1
        for <b43-dev@lists.infradead.org>; Sun, 10 May 2026 21:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778473192; x=1779077992; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yuGDf9iNAynlSPvBXud+v9E3yiQ53OcQ/UBsB/xF9OA=;
        b=GN3NorO6vtAA1eByNzdWzc+0JS+XJ3MSAudCnUPHw+2mjozd1rjNRIL7Q+vCHQign0
         zTbQsZ0swA4TwL+hQmLX82GWqiKqs2toI3uC8zacPbZXeFKd8Aa+iGyKCCA83+kgl+90
         jK3lHK3U/4u4ptmN9U9kQqCVuP4GSjj+s3igKTZO6xT1meVnYt5qjqW6cJLtVBn8HZFy
         sJSH1CJQQTu1ggl4OAUtjUlI5hMlTXAtmTOJZi1B0+Qlfmtpg8sdg7oBHVuttk1BpxFJ
         617Y3iz15vVajZoTwWCLgH0UTdBlI08W0zDU52Xb0kbFphIWIK/pguqI5wIRPp4zP6K7
         DCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778473192; x=1779077992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yuGDf9iNAynlSPvBXud+v9E3yiQ53OcQ/UBsB/xF9OA=;
        b=U2KR94Xe4kadFdulqJPKUOK6Vp9FA6Y6846ftoPeMjCZtxyvLb1BzOd3uAyOmHJoJw
         5QTvAmsW4ziRrK0PW5zUi1MW0AGMUvb0OYuRcMhqHG6oUVVOcwsfkHOv7YGV4YgUKyh1
         /UfpqFF9FUFG/OYewZPLRTQnzGvWXMvm5p/mquHpDgQ9k+J5kOcWLMLo+FKeNx7Nmv3S
         Ucgb0+1yl89HTWdz1QPgUicgQqA9Iehco1m6OTeRrA8yhBuwCRuDAjp16A2f3MQ8EYgc
         oNOvPxB/CPBwqz0jIyfB/fD1Ydzj8VKizuWjupJxvaRmzll+vAl+s9VSVC9x9GD86uZ9
         5oMw==
X-Forwarded-Encrypted: i=1; AFNElJ+dn0pfcSzt3gVyNV0m6a5IPSz4x9GAMipEG3wvCxpIqhXhdENPYBimL+qPdEF8CC8sxIt5lAlI@lists.infradead.org
X-Gm-Message-State: AOJu0YyJpuajvZLLvXhIfI1Ff4e0uTEhWOhUr313U1cVXfu5fswwfoyg
	dQoPLxZSyCooKQQhZPNO5oZViBXJ6LCNH3HBLKUeQSMZKVOvkltXJAf8MFShMKoS
X-Gm-Gg: Acq92OFAx2dw+rkoe/DVmksgyJ4fY0m8B13iZoQjUHlgK6C9eyUSil4s8Z1+yEMAxm+
	Dw4ANlVTHAVn75W4qb/AOnWBB/sxsnZOj+qGqgE++U4Uz7edJC9aLHnnL79YxB4dhIH7ogzvHNr
	20c61Wf7R49ryMQsbUm6wkZXbEVD+w/uEAIvezLDa4UXFXn+Lndi/wtMaGUCqjzAUKfCMCzzBTd
	KsT8GoWY9MhWQjMPEIdeHEwFGvYoGlloaDmKrtZ7Zv2mcP1dXHjWMH/Tk45p4gnuyzOmCkbnMR1
	Wtxb9hFuceim653meLufuKYm/8UaK1oYAb1kdjRD/IY4xaCBMyN4zdhENwsRAQel+rrNMefVXr+
	V7lCB1vZ2fnqsiVdV15hqKRl+nCIwk0scXNNRd0xX3+GX+pT42lijTecZ5Xv5rYmLpcb7cXtf4T
	sT7Yw8nb4LhnlvwQhwc6MQusI622UvBJkt1mKF4LifHge/znTBgTeWHwGu5TSGWQoVejC7M3fU2
	coX5mbRUtZWLFzbXLmUtAZslfSpi32Filx4o4nq8EAkng==
X-Received: by 2002:a05:6a00:2e90:b0:831:7f71:c810 with SMTP id d2e1a72fcca58-83a5d96fa9dmr22809905b3a.35.1778473192058;
        Sun, 10 May 2026 21:19:52 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d:7285:c2ff:fe45:8a32])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-839659498f1sm23736106b3a.17.2026.05.10.21.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2026 21:19:51 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	b43-dev@lists.infradead.org (open list:B43LEGACY WIRELESS DRIVER),
	linux-kernel@vger.kernel.org (open list),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH wireless-next] wifi: b43legacy: Use flexible array for DMA metadata
Date: Sun, 10 May 2026 21:19:34 -0700
Message-ID: <20260511041934.378209-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_211953_096127_583AD6C5 
X-CRM114-Status: GOOD (  15.39  )
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

Store the per-descriptor metadata in the DMA ring allocation instead of
allocating it separately.

This ties the metadata lifetime directly to the ring, removes a separate
allocation failure path, and keeps the descriptor count available for
__counted_by() bounds checking.

Assisted-by: Codex:GPT-5.5
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43legacy/dma.c | 24 ++++++++-----------
 drivers/net/wireless/broadcom/b43legacy/dma.h |  4 ++--
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index a9557356c9ab..6c3d847242bb 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -610,25 +610,25 @@ struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev,
 	int nr_slots;
 	dma_addr_t dma_test;
 
-	ring = kzalloc_obj(*ring);
+	if (for_tx)
+		nr_slots = B43legacy_TXRING_SLOTS;
+	else
+		nr_slots = B43legacy_RXRING_SLOTS;
+
+	ring = kzalloc_flex(*ring, meta, nr_slots);
 	if (!ring)
 		goto out;
+
+	ring->nr_slots = nr_slots;
 	ring->type = type;
 	ring->dev = dev;
 
-	nr_slots = B43legacy_RXRING_SLOTS;
-	if (for_tx)
-		nr_slots = B43legacy_TXRING_SLOTS;
-
-	ring->meta = kzalloc_objs(struct b43legacy_dmadesc_meta, nr_slots);
-	if (!ring->meta)
-		goto err_kfree_ring;
 	if (for_tx) {
 		ring->txhdr_cache = kcalloc(nr_slots,
 					sizeof(struct b43legacy_txhdr_fw3),
 					GFP_KERNEL);
 		if (!ring->txhdr_cache)
-			goto err_kfree_meta;
+			goto err_kfree_ring;
 
 		/* test for ability to dma to txhdr_cache */
 		dma_test = dma_map_single(dev->dev->dma_dev, ring->txhdr_cache,
@@ -643,7 +643,7 @@ struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev,
 					sizeof(struct b43legacy_txhdr_fw3),
 					GFP_KERNEL | GFP_DMA);
 			if (!ring->txhdr_cache)
-				goto err_kfree_meta;
+				goto err_kfree_txhdr_cache;
 
 			dma_test = dma_map_single(dev->dev->dma_dev,
 					ring->txhdr_cache,
@@ -660,7 +660,6 @@ struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev,
 				 DMA_TO_DEVICE);
 	}
 
-	ring->nr_slots = nr_slots;
 	ring->mmio_base = b43legacy_dmacontroller_base(type, controller_index);
 	ring->index = controller_index;
 	if (for_tx) {
@@ -694,8 +693,6 @@ struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev,
 	free_ringmemory(ring);
 err_kfree_txhdr_cache:
 	kfree(ring->txhdr_cache);
-err_kfree_meta:
-	kfree(ring->meta);
 err_kfree_ring:
 	kfree(ring);
 	ring = NULL;
@@ -720,7 +717,6 @@ static void b43legacy_destroy_dmaring(struct b43legacy_dmaring *ring)
 	free_ringmemory(ring);
 
 	kfree(ring->txhdr_cache);
-	kfree(ring->meta);
 	kfree(ring);
 }
 
diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.h b/drivers/net/wireless/broadcom/b43legacy/dma.h
index b5c1a51db2a4..edd06225b64f 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.h
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.h
@@ -122,8 +122,6 @@ enum b43legacy_dmatype {
 struct b43legacy_dmaring {
 	/* Kernel virtual base address of the ring memory. */
 	void *descbase;
-	/* Meta data about all descriptors. */
-	struct b43legacy_dmadesc_meta *meta;
 	/* Cache of TX headers for each slot.
 	 * This is to avoid an allocation on each TX.
 	 * This is NULL for an RX ring.
@@ -161,6 +159,8 @@ struct b43legacy_dmaring {
 	/* Last time we injected a ring overflow. */
 	unsigned long last_injected_overflow;
 #endif /* CONFIG_B43LEGACY_DEBUG*/
+	/* Meta data about all descriptors. */
+	struct b43legacy_dmadesc_meta meta[] __counted_by(nr_slots);
 };
 
 
-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
