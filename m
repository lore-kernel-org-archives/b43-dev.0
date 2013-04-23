From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 23 Apr 2013 22:33:47 +0200
Subject: [PATCH] b43: rename stop-index DMA op
In-Reply-To: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
Message-ID: <20130423223347.4007fc5f@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: Thommy Jakobsson <thommyj@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry.Finger@lwfinger.net

Rename the stop-index-write DMA operation to set_rx_stop_slot().

Signed-off-by: Michael Buesch <m@bues.ch>

---

This patch depends on:
"B43: Handle DMA RX descriptor underrun"


Index: wireless-testing/drivers/net/wireless/b43/dma.c
===================================================================
--- wireless-testing.orig/drivers/net/wireless/b43/dma.c	2013-04-23 21:50:47.655004059 +0200
+++ wireless-testing/drivers/net/wireless/b43/dma.c	2013-04-23 21:51:24.132064549 +0200
@@ -156,9 +156,9 @@
 	return (val / sizeof(struct b43_dmadesc32));
 }
 
-static void op32_set_current_rxslot(struct b43_dmaring *ring, int slot)
+static void op32_set_rx_stop_slot(struct b43_dmaring *ring, int slot)
 {
-	b43_dma_write(ring, B43_DMA32_RXINDEX,
+	b43_dma_write(ring, B43_DMA32_RXSTOPINDEX,
 		      (u32) (slot * sizeof(struct b43_dmadesc32)));
 }
 
@@ -169,7 +169,7 @@
 	.tx_suspend = op32_tx_suspend,
 	.tx_resume = op32_tx_resume,
 	.get_current_rxslot = op32_get_current_rxslot,
-	.set_current_rxslot = op32_set_current_rxslot,
+	.set_rx_stop_slot = op32_set_rx_stop_slot,
 };
 
 /* 64bit DMA ops. */
@@ -251,9 +251,9 @@
 	return (val / sizeof(struct b43_dmadesc64));
 }
 
-static void op64_set_current_rxslot(struct b43_dmaring *ring, int slot)
+static void op64_set_rx_stop_slot(struct b43_dmaring *ring, int slot)
 {
-	b43_dma_write(ring, B43_DMA64_RXINDEX,
+	b43_dma_write(ring, B43_DMA64_RXSTOPINDEX,
 		      (u32) (slot * sizeof(struct b43_dmadesc64)));
 }
 
@@ -264,7 +264,7 @@
 	.tx_suspend = op64_tx_suspend,
 	.tx_resume = op64_tx_resume,
 	.get_current_rxslot = op64_get_current_rxslot,
-	.set_current_rxslot = op64_set_current_rxslot,
+	.set_rx_stop_slot = op64_set_rx_stop_slot,
 };
 
 static inline int free_slots(struct b43_dmaring *ring)
@@ -743,7 +743,7 @@
 			b43_dma_write(ring, B43_DMA64_RXCTL, value);
 			b43_dma_write(ring, B43_DMA64_RXRINGLO, addrlo);
 			b43_dma_write(ring, B43_DMA64_RXRINGHI, addrhi);
-			b43_dma_write(ring, B43_DMA64_RXINDEX, ring->nr_slots *
+			b43_dma_write(ring, B43_DMA64_RXSTOPINDEX, ring->nr_slots *
 				      sizeof(struct b43_dmadesc64));
 		} else {
 			u32 ringbase = (u32) (ring->dmabase);
@@ -758,7 +758,7 @@
 				value |= B43_DMA32_RXPARITYDISABLE;
 			b43_dma_write(ring, B43_DMA32_RXCTL, value);
 			b43_dma_write(ring, B43_DMA32_RXRING, addrlo);
-			b43_dma_write(ring, B43_DMA32_RXINDEX, ring->nr_slots *
+			b43_dma_write(ring, B43_DMA32_RXSTOPINDEX, ring->nr_slots *
 				      sizeof(struct b43_dmadesc32));
 		}
 	}
@@ -1749,7 +1749,7 @@
 	*/
 	current_slot = ring->ops->get_current_rxslot(ring);
 	previous_slot = prev_slot(ring, current_slot);
-	ring->ops->set_current_rxslot(ring, previous_slot);
+	ring->ops->set_rx_stop_slot(ring, previous_slot);
 }
 
 void b43_dma_rx(struct b43_dmaring *ring)
@@ -1768,7 +1768,7 @@
 		update_max_used_slots(ring, ++used_slots);
 	}
 	wmb();
-	ops->set_current_rxslot(ring, slot);
+	ops->set_rx_stop_slot(ring, slot);
 	ring->current_slot = slot;
 }
 
Index: wireless-testing/drivers/net/wireless/b43/dma.h
===================================================================
--- wireless-testing.orig/drivers/net/wireless/b43/dma.h	2013-04-23 21:50:47.655004059 +0200
+++ wireless-testing/drivers/net/wireless/b43/dma.h	2013-04-23 21:50:47.635003479 +0200
@@ -49,7 +49,7 @@
 #define		B43_DMA32_RXADDREXT_MASK		0x00030000
 #define		B43_DMA32_RXADDREXT_SHIFT		16
 #define B43_DMA32_RXRING				0x14
-#define B43_DMA32_RXINDEX				0x18
+#define B43_DMA32_RXSTOPINDEX				0x18
 #define B43_DMA32_RXSTATUS				0x1C
 #define		B43_DMA32_RXDPTR			0x00000FFF
 #define		B43_DMA32_RXSTATE			0x0000F000
@@ -117,7 +117,7 @@
 #define		B43_DMA64_RXPARITYDISABLE		0x00000800
 #define		B43_DMA64_RXADDREXT_MASK		0x00030000
 #define		B43_DMA64_RXADDREXT_SHIFT		16
-#define B43_DMA64_RXINDEX				0x24
+#define B43_DMA64_RXSTOPINDEX				0x24
 #define B43_DMA64_RXRINGLO				0x28
 #define B43_DMA64_RXRINGHI				0x2C
 #define B43_DMA64_RXSTATUS				0x30
@@ -207,7 +207,7 @@
 	void (*tx_suspend) (struct b43_dmaring * ring);
 	void (*tx_resume) (struct b43_dmaring * ring);
 	int (*get_current_rxslot) (struct b43_dmaring * ring);
-	void (*set_current_rxslot) (struct b43_dmaring * ring, int slot);
+	void (*set_rx_stop_slot) (struct b43_dmaring * ring, int slot);
 };
 
 enum b43_dmatype {


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130423/6bb7d021/attachment.sig>
