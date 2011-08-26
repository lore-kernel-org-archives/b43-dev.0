From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 26 Aug 2011 20:41:38 +0200
Subject: [wireless-next][PATCH 1/3] b43: Relax requirement for descriptors to
	be in the DMA zone
Message-ID: <1314384100-3492-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>, Maxime Vincent <maxime.vince@gmail.com>, Darren <dmbtech@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, Michael Buesch <m@bues.ch>

From: Larry Finger <Larry.Finger@lwfinger.net>

When 64-bit DMA was first used, there were problems with the
BCM4311 (14e4:4311). The problem was "fixed" by using the GFP_DMA
flag in the allocation of coherent ring descriptor memory.

The original problem is now believed to have been due to bugs in
the 64-bit DMA implementation in the rest of the kernel, and that
those bugs have been fixed. Accordingly, the requirement for the
descriptors to be in the DMA zone is relaxed.

Bounce buffers are left in the DMA zone.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
Signed-off-by: Michael Buesch <m@bues.ch>
---
 drivers/net/wireless/b43/dma.c |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index c5d890e..e36e8b5 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -423,14 +423,7 @@ static int alloc_ringmemory(struct b43_dmaring *ring)
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
-- 
1.7.1
