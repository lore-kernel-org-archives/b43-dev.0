From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 22:13:43 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130421204439.2fa95ecf@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
 <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202305470.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
 <20130421083822.5d6599e3@milhouse>
 <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211951130.13040@kelly.ryd.net>
 <20130421202601.179eaf44@milhouse>
 <CAOTQ16LCWpAOndQsHBxN1-X_8SLpcU8V=mM41gvcNRocA=GhsA@mail.gmail.com>
 <20130421204439.2fa95ecf@milhouse>
Message-ID: <alpine.DEB.2.02.1304212205360.13040@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



> Hm, ok. Well, sounds plausible. So you may keep it as-is.
> 
> But you should probably rename the function to b43_dma_handle_rx_overflow(),
> because the discard does not work properly, if the function is called without
> an overflow in progress.
Check, better?

//Thommy

Subject:[PATCH] B43: Handle DMA RX descriptor underrun
From: Thommy Jakobsson <thommyj@gmail.com>

Add handling of rx descriptor underflow. This fixes a fault that could
happen on slow machines, where data is received faster than the CPU can
handle. In such a case the device will use up all rx descriptors and
refuse to send any more data before confirming that it is ok. This
patch enables necessary interrupt to discover such a situation and will
handle them by dropping everything in the ring buffer.

Signed-off-by: Thommy Jakobsson <thommyj@gmail.com>
---
 drivers/net/wireless/b43/b43.h  |    1 +
 drivers/net/wireless/b43/dma.c  |   19 +++++++++++++++++
 drivers/net/wireless/b43/dma.h  |    4 +++-
 drivers/net/wireless/b43/main.c |   43 ++++++++++++++++-----------------------
 4 files changed, 41 insertions(+), 26 deletions(-)

diff --git a/drivers/net/wireless/b43/b43.h b/drivers/net/wireless/b43/b43.h
index 7f3d461..fdcd00f 100644
--- a/drivers/net/wireless/b43/b43.h
+++ b/drivers/net/wireless/b43/b43.h
@@ -680,6 +680,7 @@ struct b43_noise_calculation {
 
 struct b43_stats {
 	u8 link_noise;
+	u32 rxdesc_underruns;
 };
 
 struct b43_key {
diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index 1221469..84af9e1 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -1733,6 +1733,25 @@ drop_recycle_buffer:
 	sync_descbuffer_for_device(ring, dmaaddr, ring->rx_buffersize);
 }
 
+void b43_dma_handle_rx_overflow(struct b43_dmaring *ring)
+{
+	int current_slot, previous_slot;
+
+	B43_WARN_ON(ring->tx);
+
+	/* Device has filled all buffers, drop all packets and let TCP
+	 * decrease speed.
+	 * Decrement RX index by one will let the device to see all slots
+	 * as free again
+	 */
+	/*
+	*TODO: How to increase rx_drop in mac80211?
+	*/
+	current_slot = ring->ops->get_current_rxslot(ring);
+	previous_slot = prev_slot(ring, current_slot);
+	ring->ops->set_current_rxslot(ring, previous_slot);
+}
+
 void b43_dma_rx(struct b43_dmaring *ring)
 {
 	const struct b43_dma_ops *ops = ring->ops;
diff --git a/drivers/net/wireless/b43/dma.h b/drivers/net/wireless/b43/dma.h
index 9fdd198..df8c8cd 100644
--- a/drivers/net/wireless/b43/dma.h
+++ b/drivers/net/wireless/b43/dma.h
@@ -9,7 +9,7 @@
 /* DMA-Interrupt reasons. */
 #define B43_DMAIRQ_FATALMASK	((1 << 10) | (1 << 11) | (1 << 12) \
 					 | (1 << 14) | (1 << 15))
-#define B43_DMAIRQ_NONFATALMASK	(1 << 13)
+#define B43_DMAIRQ_RDESC_UFLOW		(1 << 13)
 #define B43_DMAIRQ_RX_DONE		(1 << 16)
 
 /*** 32-bit DMA Engine. ***/
@@ -295,6 +295,8 @@ int b43_dma_tx(struct b43_wldev *dev,
 void b43_dma_handle_txstatus(struct b43_wldev *dev,
 			     const struct b43_txstatus *status);
 
+void b43_dma_handle_rx_overflow(struct b43_dmaring *ring);
+
 void b43_dma_rx(struct b43_dmaring *ring);
 
 void b43_dma_direct_fifo_rx(struct b43_wldev *dev,
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index d377f77..618bb03 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -1902,30 +1902,18 @@ static void b43_do_interrupt_thread(struct b43_wldev *dev)
 		}
 	}
 
-	if (unlikely(merged_dma_reason & (B43_DMAIRQ_FATALMASK |
-					  B43_DMAIRQ_NONFATALMASK))) {
-		if (merged_dma_reason & B43_DMAIRQ_FATALMASK) {
-			b43err(dev->wl, "Fatal DMA error: "
-			       "0x%08X, 0x%08X, 0x%08X, "
-			       "0x%08X, 0x%08X, 0x%08X\n",
-			       dma_reason[0], dma_reason[1],
-			       dma_reason[2], dma_reason[3],
-			       dma_reason[4], dma_reason[5]);
-			b43err(dev->wl, "This device does not support DMA "
+	if (unlikely(merged_dma_reason & (B43_DMAIRQ_FATALMASK))) {
+		b43err(dev->wl,
+			"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\n",
+			dma_reason[0], dma_reason[1],
+			dma_reason[2], dma_reason[3],
+			dma_reason[4], dma_reason[5]);
+		b43err(dev->wl, "This device does not support DMA "
 			       "on your system. It will now be switched to PIO.\n");
-			/* Fall back to PIO transfers if we get fatal DMA errors! */
-			dev->use_pio = true;
-			b43_controller_restart(dev, "DMA error");
-			return;
-		}
-		if (merged_dma_reason & B43_DMAIRQ_NONFATALMASK) {
-			b43err(dev->wl, "DMA error: "
-			       "0x%08X, 0x%08X, 0x%08X, "
-			       "0x%08X, 0x%08X, 0x%08X\n",
-			       dma_reason[0], dma_reason[1],
-			       dma_reason[2], dma_reason[3],
-			       dma_reason[4], dma_reason[5]);
-		}
+		/* Fall back to PIO transfers if we get fatal DMA errors! */
+		dev->use_pio = true;
+		b43_controller_restart(dev, "DMA error");
+		return;
 	}
 
 	if (unlikely(reason & B43_IRQ_UCODE_DEBUG))
@@ -1944,6 +1932,11 @@ static void b43_do_interrupt_thread(struct b43_wldev *dev)
 		handle_irq_noise(dev);
 
 	/* Check the DMA reason registers for received data. */
+	if (dma_reason[0] & B43_DMAIRQ_RDESC_UFLOW) {
+		if (B43_DEBUG)
+			b43warn(dev->wl, "RX descriptor underrun\n");
+		b43_dma_handle_rx_overflow(dev->dma.rx_ring);
+	}
 	if (dma_reason[0] & B43_DMAIRQ_RX_DONE) {
 		if (b43_using_pio_transfers(dev))
 			b43_pio_rx(dev->pio.rx_queue);
@@ -2001,7 +1994,7 @@ static irqreturn_t b43_do_interrupt(struct b43_wldev *dev)
 		return IRQ_NONE;
 
 	dev->dma_reason[0] = b43_read32(dev, B43_MMIO_DMA0_REASON)
-	    & 0x0001DC00;
+	    & 0x0001FC00;
 	dev->dma_reason[1] = b43_read32(dev, B43_MMIO_DMA1_REASON)
 	    & 0x0000DC00;
 	dev->dma_reason[2] = b43_read32(dev, B43_MMIO_DMA2_REASON)
@@ -3130,7 +3123,7 @@ static int b43_chip_init(struct b43_wldev *dev)
 		b43_write32(dev, 0x018C, 0x02000000);
 	}
 	b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, 0x00004000);
-	b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001DC00);
+	b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001FC00);
 	b43_write32(dev, B43_MMIO_DMA1_IRQ_MASK, 0x0000DC00);
 	b43_write32(dev, B43_MMIO_DMA2_IRQ_MASK, 0x0000DC00);
 	b43_write32(dev, B43_MMIO_DMA3_IRQ_MASK, 0x0001DC00);
-- 
1.7.9.5
