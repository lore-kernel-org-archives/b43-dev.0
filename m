Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FEDFCD98F6
	for <b43-dev@archiver.kernel.org>; Wed, 17 Jun 2026 21:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9fQ5enoKjz1jaA6f2P9pdeTUuk8EnxVod5HWA95wus=; b=LTRhAJ4KFrv7N2
	Kr5MiwLaaOmF6VVJyPD4kCcYigu3/PnDHxB7NobLytr16eGOgNzV/NnNWH5RYXPgWk+lvMJKIx1NR
	neWPzIetqP1PVxmHh6d8R6bfIObtwC3yoqbcHTn90oyOv4HPnvmQV7QpF9q1/7ZSMM4tzYk8j67sX
	vKpLpRu+vkMZgHpZVoyTb6nYkAAk7C6oQ7/65hI8FdANcc4MRidH3GH4FcTIS3DF7le7QoqT1YF3h
	RGrwr//TaErAd07eqb/OqEzh+P034WkoFz3mhc6lJ1BWs8zuNS4dmVV7AhGcTSnNPFeEGXQVupAXF
	JWZKZxgXMQ8TeIkPuGcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2R-00000000MOz-0npw;
	Wed, 17 Jun 2026 21:43:11 +0000
Received: from smtpcmd14162.aruba.it ([62.149.156.162])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2E-00000000MMW-3FWG
	for b43-dev@lists.infradead.org;
	Wed, 17 Jun 2026 21:43:02 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Zy28wJnjp4OeoZy29w46A1; Wed, 17 Jun 2026 23:42:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1781732573; bh=KoRl5cszPxC+nYwDhbgWi7ztNx3gYmQoEoOAcZ/bQpk=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=mPvSAITuz0XW8/pB4hcUgpPKmoKNBsgDIfCiKUzhDAiGM5OFPFs7InDpBnQFiuYyY
	 UNiLOn9EVKpNeSL0ZSLKBoHstKr4mlAi35z07VkCXeSIO4Of7UdibFYAlJlEcZY5g/
	 5UC35tTeWQ8Gcb63jhQ1AFvjt0jf3EehObpgXD5m6nG81As5K4YXZOjPjkuRjJUxHW
	 0gPeMPgfO7vXA8jqPzVrqCXQU8KmXcEBAN6vZawQJvv2SlVPEHmy7TREMf2BEW3yh/
	 RfNaTv2U/33zHI+Ydlm8V6flp5LJVstEC0dKLaNQyn9vk+1sw4P/GcVZoK43X/RYAh
	 RxPYpp5nqalGg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Wed, 17 Jun 2026 23:42:11 +0200
Subject: [PATCH 4/4] b43: align DMA64 descriptor ring to 64K on AC cores
MIME-Version: 1.0
Message-Id: <20260617-b43-add-4352-wip-v1-4-c81323496720@gmail.com>
References: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
In-Reply-To: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, 
 b43-dev@lists.infradead.org, Alessio Ferri <alessio.ferri@mythread.it>, 
 Alessio Ferri <alessio.ferri.3012@gmail.com>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfPga/+jcvE7OuVVkZZs2F7agCubGjDhtcpV1hH4MibJtEXcWFUoXf4T1Rcg46b/cSooFJI1uB+/CcAr/9DA2GnTTvr//ENtbOm4ZlZw14Hbjw+y03/8N
 i44DKnR74un2GonNyUEQSXpwwq/KsP0PseoIwO0fk9zgo2Y9wNj5nojY1FVIJ9Ib6fRVKLYs9RwK8D3eYFjibOy5IqEA6ec+2lisEMwSiQwiwWjH2/zN87eW
 pJYLaqmC4TX4aKJKhW2DnSD9+Qx5bCTexrywcCV81yUW0vva/8k/WRabCymJEErXpUPCB4SGuhMH9JhqKLdoZThVJi5iGOAeYeNaj5ar55WytF6pCt6C9vOf
 IFxNgFy2C4Vhx+LQbfeqHKI7f/Due0rsxajeRDiqdC4loLp7fhhxNHhS8H/OrJgZGypV1R8i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_144259_280019_3133341D 
X-CRM114-Status: GOOD (  10.87  )
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

From: Alessio Ferri <alessio.ferri.3012@gmail.com>

The AC d11 core (core_rev 40/42, BCM4352) exposes a 16-bit DMA descriptor
pointer (wrap mask 0xffff, not the 0x1fff b43 assumes). With an 8K-aligned
ring the engine wraps the pointer outside the ring and raises I_DE on RX.
Allocate the 64-bit ring with 64K size on these cores so the base is
64K-aligned and (base & 0xffff) == 0; dma_alloc_coherent() aligns to the
allocation size. ring_mem_size widens to u32 to hold 0x10000. N-PHY cores
report 0x1fff and keep the 8K allocation.

Assisted-by: claude:claude-Opus-4.8
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/dma.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 05da6987a845..cb308080312b 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -404,6 +404,18 @@ static inline
 	}
 }
 
+static u32 b43_dma64_ringmem_size(struct b43_dmaring *ring)
+{
+	/* AC d11 cores (core_rev 40/42) expose a 16-bit descriptor pointer
+	 * (mask 0xffff) and need a 64K-aligned ring; dma_alloc_coherent()
+	 * aligns to the (power-of-2) allocation size. Smaller cores use the
+	 * 0x1fff mask and are fine with 8K.
+	 */
+	if (ring->dev->dev->core_rev == 40 || ring->dev->dev->core_rev == 42)
+		return 0x10000;
+	return B43_DMA64_RINGMEMSIZE;
+}
+
 static int alloc_ringmemory(struct b43_dmaring *ring)
 {
 	/* The specs call for 4K buffers for 30- and 32-bit DMA with 4K
@@ -415,8 +427,8 @@ static int alloc_ringmemory(struct b43_dmaring *ring)
 	 * B43_DMA64_RXSTATDPTR. Let's just use 8K buffers even if we don't use
 	 * more than 256 slots for ring.
 	 */
-	u16 ring_mem_size = (ring->type == B43_DMA_64BIT) ?
-				B43_DMA64_RINGMEMSIZE : B43_DMA32_RINGMEMSIZE;
+	u32 ring_mem_size = (ring->type == B43_DMA_64BIT) ?
+			b43_dma64_ringmem_size(ring) : B43_DMA32_RINGMEMSIZE;
 
 	ring->descbase = dma_alloc_coherent(ring->dev->dev->dma_dev,
 					    ring_mem_size, &(ring->dmabase),
@@ -429,8 +441,8 @@ static int alloc_ringmemory(struct b43_dmaring *ring)
 
 static void free_ringmemory(struct b43_dmaring *ring)
 {
-	u16 ring_mem_size = (ring->type == B43_DMA_64BIT) ?
-				B43_DMA64_RINGMEMSIZE : B43_DMA32_RINGMEMSIZE;
+	u32 ring_mem_size = (ring->type == B43_DMA_64BIT) ?
+			b43_dma64_ringmem_size(ring) : B43_DMA32_RINGMEMSIZE;
 	dma_free_coherent(ring->dev->dev->dma_dev, ring_mem_size,
 			  ring->descbase, ring->dmabase);
 }

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
