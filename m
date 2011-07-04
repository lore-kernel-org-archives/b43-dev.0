From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 4 Jul 2011 19:51:11 +0200
Subject: [PATCH] b43: Add RX side DMA memory barrier
Message-ID: <20110704195111.272bbb3b@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

This adds a memory barrier to ensure the writes to the ring memory
are committed before the DMA ring pointer is updated.
We do a similar thing on the TX side already.

Signed-off-by: Michael Buesch <m@bues.ch>

---

There's no bug report or known breakage (as far as I know) on this,
so no CC to stable.


Index: linux-2.6.39/drivers/net/wireless/b43/dma.c
===================================================================
--- linux-2.6.39.orig/drivers/net/wireless/b43/dma.c	2011-05-19 06:06:34.000000000 +0200
+++ linux-2.6.39/drivers/net/wireless/b43/dma.c	2011-07-04 17:24:56.327210182 +0200
@@ -1599,6 +1599,7 @@ void b43_dma_rx(struct b43_dmaring *ring
 		dma_rx(ring, &slot);
 		update_max_used_slots(ring, ++used_slots);
 	}
+	wmb();
 	ops->set_current_rxslot(ring, slot);
 	ring->current_slot = slot;
 }


-- 
Greetings, Michael.
