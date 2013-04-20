From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 00:47:34 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <5172E001.7040700@lwfinger.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <5172E001.7040700@lwfinger.net>
Message-ID: <alpine.DEB.2.02.1304210041520.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sat, 20 Apr 2013, Larry Finger wrote:

> Thommy,
> 
> This version did apply cleanly; however, there are still a couple of things
> that need fixing.
> 
> With scripts/checkpatch.pl, there is a warning that a quoted string is split
> over two lines. Although testing for that condition is a recent addition to
> the script, it is probably best to honor that requirement with new code. To do
> so, the lines starting at 1907 in main.c should be
> 
>                 b43err(dev->wl,
>                        "Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X,
> 0x%08X, 0x%08X\n",
> 
> My mailer will likely wrap the string, but ignore that. Yes, that line is
> longer than 80 characters, but that is OK for quoted strings. The idea is that
> if they are not split, it is easier to grep for them. In this case, that is
> not an issue, but I prefer to make all new code be free of errors, warnings,
> and checks.
> 
> Your subject and commit message are not appropriate. Have you read
> Documentation/SubmittingPatches? The info you have at the start would not be
> appropriate for the permanent kernel record. If you want to add such informal
> remarks, include a line with --- after the formal commit message, and place
> informal remarks below that line. Everything is available at patch submission
> time, but the scripts strip it off before it is included in the git
> repositories. The b43-dev list is OK for discussions of the patch, but the
> final patch needs to be sent to John Linville <linville@tuxdriver.com>, with
> Cc: to b43-dev, and the linux-wireless mailing list
> <linux-wireless@vger.kernel.org>.
> 
> When the patch is appropriate for backporting to earlier, stable kernels, and
> this one certainly fits that criterion, follow the "Signed-off-by" line with
> one that says "Cc: Stable <stable@vger.kernel.org>". That way, the patch will
> automatically be included in earlier versions as soon as it is incorporated in
> the mainline version (Linus's tree).
> 
> Lastly, I have a question about the patch. Is it necessary to log every
> underrun? Perhaps you might want to place the b43_warn statement inside an "if
> (B43_DEBUG)" conditional. That way the condition will be logged for people
> really interested in debugging the driver, but the general user of a distro
> kernel will never see the message.
> 
> Thanks for finding this issue.
> 
> Larry
> 
>

New try, think I have fixed everything but have probably missed something. 
If not Piotras or someone else find a better way I planned to send this in 
to John.

Subject:[PATCH] B43: Handle DMA RX descriptor underrun
From: Thommy Jakobsson <thommyj@gmail.com>

Add handling of rx descriptor underflow. This fixes a fault that could
happen on slow machines, where data is received faster than the CPU can
handle. In such a case the device will use up all rx descriptors and
refuse to send any more data before confirming that it is ok. This
patch enables necessary interrupt to discover such a situation and will
handle them by dropping everything in the ring buffer.

Signed-off-by: Thommy Jakobsson <thommyj@gmail.com>
Cc: Stable <stable@vger.kernel.org>
---
 drivers/net/wireless/b43/b43.h  |    1 +
 drivers/net/wireless/b43/dma.c  |   15 ++++++++++++++
 drivers/net/wireless/b43/dma.h  |    4 +++-
 drivers/net/wireless/b43/main.c |   43 ++++++++++++++++-----------------------
 4 files changed, 37 insertions(+), 26 deletions(-)

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
index 1221469..df929b3 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -1733,6 +1733,21 @@ drop_recycle_buffer:
 	sync_descbuffer_for_device(ring, dmaaddr, ring->rx_buffersize);
 }
 
+void b43_dma_rx_discard(struct b43_dmaring *ring)
+{
+	B43_WARN_ON(ring->tx);
+
+	/* Device has filled all buffers, drop all packets in buffers
+	* and let TCP decrease speed.
+	* Set index to one desc after the last one
+	* so the device will see all slots as free again
+	*/
+	/*
+	*TODO: How to increase rx_drop in mac80211?
+	*/
+	ring->ops->set_current_rxslot(ring, ring->nr_slots);
+}
+
 void b43_dma_rx(struct b43_dmaring *ring)
 {
 	const struct b43_dma_ops *ops = ring->ops;
diff --git a/drivers/net/wireless/b43/dma.h b/drivers/net/wireless/b43/dma.h
index 9fdd198..fed8163 100644
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
 
+void b43_dma_rx_discard(struct b43_dmaring *ring);
+
 void b43_dma_rx(struct b43_dmaring *ring);
 
 void b43_dma_direct_fifo_rx(struct b43_wldev *dev,
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index d377f77..5662f18 100644
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
+		b43_dma_rx_discard(dev->dma.rx_ring);
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

 
