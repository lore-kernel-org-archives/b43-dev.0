From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Jul 2011 00:12:20 +0200
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just a one,
	commented
In-Reply-To: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
Message-ID: <1311113542-2540-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Pavel Roskin <proski@gnu.org>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Routing bits are always placed in 0xC0000000, there is no any special
bit shifting for 64-bit DMA. We just workaround wrong value (passed by
ssb) in this way. Replace that with just a one workaround and comment
it. Real fix for this requires testing with all ssb drivers.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/dma.c |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index ce572ae..530a153 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -174,7 +174,7 @@ static void op64_fill_descriptor(struct b43_dmaring *ring,
 	addrhi = (((u64) dmaaddr >> 32) & ~SSB_DMA_TRANSLATION_MASK);
 	addrext = (((u64) dmaaddr >> 32) & SSB_DMA_TRANSLATION_MASK)
 	    >> SSB_DMA_TRANSLATION_SHIFT;
-	addrhi |= (ring->dev->dma.translation << 1);
+	addrhi |= ring->dev->dma.translation;
 	if (slot == ring->nr_slots - 1)
 		ctl0 |= B43_DMA64_DCTL0_DTABLEEND;
 	if (start)
@@ -675,7 +675,7 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			b43_dma_write(ring, B43_DMA64_TXRINGHI,
 				      ((ringbase >> 32) &
 				       ~SSB_DMA_TRANSLATION_MASK)
-				      | (trans << 1));
+				      | trans);
 		} else {
 			u32 ringbase = (u32) (ring->dmabase);
 
@@ -708,7 +708,7 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			b43_dma_write(ring, B43_DMA64_RXRINGHI,
 				      ((ringbase >> 32) &
 				       ~SSB_DMA_TRANSLATION_MASK)
-				      | (trans << 1));
+				      | trans);
 			b43_dma_write(ring, B43_DMA64_RXINDEX, ring->nr_slots *
 				      sizeof(struct b43_dmadesc64));
 		} else {
@@ -1060,6 +1060,12 @@ int b43_dma_init(struct b43_wldev *dev)
 #ifdef CONFIG_B43_SSB
 	case B43_BUS_SSB:
 		dma->translation = ssb_dma_translation(dev->dev->sdev);
+		/* ssb does not handle 64-bit DMA case, where Client Mode
+		 * Translation is set with value 0x2 instead of 0x1. This should
+		 * be fixed on ssb side, but requires testing with b43,
+		 * b43legacy and b44. */
+		if (b43_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64)
+			dma->translation <<= 1;
 		break;
 #endif
 	}
-- 
1.7.3.4
