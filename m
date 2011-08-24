From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 24 Aug 2011 17:02:52 -0500
Subject: [RFC/RFT] b43: Relax requirement for descriptors to be in the DMA zone
Message-ID: <4e55750c.GPPIrbNLynUMWY/U%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>
Cc: zajec5@gmail.com, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

When 64-bit DMA was first used, there were problems with the
BCM4311 (14e4:4311). The problem was "fixed" by using the GFP_DMA
flag in the allocation of coherent ring descriptor memory.

The original problem is now believed to have been due to bugs in
the 64-bit DMA implementation in the rest of the kernel, and that
those bugs have been fixed. Accordingly, the requirement for the
descriptors to be in the DMA zone is relaxed.

Bounce buffers are left in the DMA zone.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---

John,

This material is for next.

Larry
---

Index: wireless-testing-new/drivers/net/wireless/b43/dma.c
===================================================================
--- wireless-testing-new.orig/drivers/net/wireless/b43/dma.c
+++ wireless-testing-new/drivers/net/wireless/b43/dma.c
@@ -393,14 +393,7 @@ static int alloc_ringmemory(struct b43_d
 	 * has shown that 4K is sufficient for the latter as long as the buffer
 	 * does not cross an 8K boundary.
 	 *
-	 * For unknown reasons - possibly a hardware error - the BCM4311 rev
-	 * 02, which uses 64-bit DMA, needs the ring buffer in very low memory,
-	 * which accounts for the GFP_DMA flag below.
-	 *
-	 * The flags here must match the flags in free_ringmemory below!
 	 */
-	if (ring->type == B43_DMA_64BIT)
-		flags |= GFP_DMA;
 	ring->descbase = dma_alloc_coherent(ring->dev->dev->dma_dev,
 					    B43_DMA_RINGMEMSIZE,
 					    &(ring->dmabase), flags);
