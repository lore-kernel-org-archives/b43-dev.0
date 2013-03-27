From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 27 Mar 2013 15:35:17 -0500
Subject: [PATCH] b43: remove warning for LP-PHY with sprom < 8
In-Reply-To: <20130327200737.GJ2873@Vault13>
References: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
 <20130323174732.GE2873@Vault13> <51533C70.1070904@hauke-m.de>
 <51533F88.5050001@lwfinger.net> <20130327200737.GJ2873@Vault13>
Message-ID: <51535805.2010502@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/27/2013 03:07 PM, Christian Klein wrote:
> Hello Larry,
>
> thanks, I'll revert the number of slots back to 64 and see if that helps.
> How much memory does one slot take? May it be worthwile to decrease the
> B43_TXRING_SLOTS value, too?

Each slot is only the size of an RX or TX descriptor, which is only 12 bytes. 
The real use of memory comes because a buffer is allocated for every RX slot 
when initializing. For TX, the buffers are attached to the slot when the data is 
ready. Reducing the TX ring size will reduce the peak memory demand at 
throughput expense as the queues will be stopped more.

> The device has 4MB Flash and 16 MB Ram. Although this is not much, according
> to the openwrt supported hardware wiki page there seem to be quite a few
> routers with 16MB that run with kernel 2.6 and b43.
>
>  From what I found on the internet it seems that this router never really
> worked with 2.6+ kernels, at least in AP mode.  Most Info I saw blamed it on
> the Broadcom 5354 SOC.  One mail I found from 06/2010 suggested that the
> LP-PHY of this SoC may not be fully supported.
> (http://comments.gmane.org/gmane.linux.drivers.bcm54xx.devel/10671)

Until the RX ring size was increased, my LP PHY devices were not very reliable 
as STAs. I never tried them as an AP.

> Is there any way to find out what may cause the problems and if it really is
> a memory problem?  I saw the OOM-Killer only with the 666.2 firmware, for
> the 410.2160 firmware it seemed to slow to a crawl and die without memory
> troubles. What seemed strange to me in the dmesg output was
> [  240.560000] b43-phy0 debug: Adding Interface type 2
> [  240.568000] b43-phy0 debug: Removing Interface type 2
> [  240.568000] b43-phy0 debug: Wireless interface stopped
> [...]
> [  247.184000] b43-phy0 debug: Adding Interface type 3
>
> Why would the driver switch interface types here?

I do not know why it would change interface types.

One thing that might be useful in your code would be the patch to work around RX 
buffer overflows. A copy is attached.

Larry

-------------- next part --------------
Index: wireless-testing-rebased/drivers/net/wireless/b43/dma.c
===================================================================
--- wireless-testing-rebased.orig/drivers/net/wireless/b43/dma.c
+++ wireless-testing-rebased/drivers/net/wireless/b43/dma.c
@@ -1692,6 +1692,50 @@ drop_recycle_buffer:
 	sync_descbuffer_for_device(ring, dmaaddr, ring->rx_buffersize);
 }
 
+/* check for overflow of the RX descriptor ring. If found, reset the DMA
+ * controller and return true.
+ */
+static bool dma_rx_check_overflow(struct b43_dmaring *ring)
+{
+	if (ring->type == B43_DMA_64BIT) {
+		u64 state;
+		u64 rxctl;
+
+		state = b43_dma_read(ring, B43_DMA64_RXSTATUS) &
+			B43_DMA64_RXSTAT;
+		if (state != B43_DMA64_RXSTAT_IDLEWAIT)
+			return false;
+		rxctl = b43_dma_read(ring, B43_DMA64_RXCTL);
+		b43_dmacontroller_rx_reset(ring->dev, ring->mmio_base,
+					   ring->type);
+
+		b43_dma_write(ring, B43_DMA64_RXCTL, rxctl);
+		b43_dma_write(ring, B43_DMA64_RXINDEX, ring->nr_slots *
+			      sizeof(struct b43_dmadesc64));
+	} else {
+		u32 state;
+		u32 rxctl;
+
+		state = b43_dma_read(ring, B43_DMA32_RXSTATUS) &
+				     B43_DMA32_RXSTAT;
+		if (state != B43_DMA32_RXSTAT_IDLEWAIT)
+			return false;
+
+		rxctl = b43_dma_read(ring, B43_DMA32_RXCTL);
+		b43_dmacontroller_rx_reset(ring->dev, ring->mmio_base,
+					   ring->type);
+
+		b43_dma_write(ring, B43_DMA32_RXCTL, rxctl);
+		b43_dma_write(ring, B43_DMA32_RXINDEX, ring->nr_slots *
+			      sizeof(struct b43_dmadesc32));
+	}
+	ring->current_slot = 0;
+
+	b43err(ring->dev->wl, "DMA RX reset due to overflow\n");
+
+	return true;
+}
+
 void b43_dma_rx(struct b43_dmaring *ring)
 {
 	const struct b43_dma_ops *ops = ring->ops;
@@ -1703,9 +1747,23 @@ void b43_dma_rx(struct b43_dmaring *ring
 	B43_WARN_ON(!(current_slot >= 0 && current_slot < ring->nr_slots));
 
 	slot = ring->current_slot;
-	for (; slot != current_slot; slot = next_slot(ring, slot)) {
-		dma_rx(ring, &slot);
-		update_max_used_slots(ring, ++used_slots);
+
+	/* XXX: BRCM4318(?) dirty workaround:
+	 *	it seems sometimes the RX ring overflows due to interrupt
+	 *	latencies; particularly for systems with slow CPUs and tight
+	 *	memory constraints
+	 */
+	if (slot == current_slot) {
+		/* Try to reset the RX channel, will cost us few lost frames,
+		 * but will recover from an eternal stall
+		 */
+		if (dma_rx_check_overflow(ring))
+			return; /* exit on overflow and reset */
+        }
+        
+        for (; slot != current_slot; slot = next_slot(ring, slot)) {
+                dma_rx(ring, &slot);
+                update_max_used_slots(ring, ++used_slots);
 	}
 	wmb();
 	ops->set_current_rxslot(ring, slot);
