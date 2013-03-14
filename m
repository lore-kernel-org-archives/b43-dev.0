From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 14 Mar 2013 21:41:21 +0100
Subject: [RFT][PATCH] b43: DMA: debug rings alignment
Message-ID: <1363293681-23385-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
ISE: can you try this with your card? Provide output including "DBG"
messages please.
Hope it compiles.
---
 drivers/net/wireless/b43/dma.c |   15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index 38bc5a7..30da6ce 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -915,6 +915,21 @@ struct b43_dmaring *b43_setup_dmaring(struct b43_wldev *dev,
 	ring->last_injected_overflow = jiffies;
 #endif
 
+	if (type == B43_DMA_64BIT) {
+		u32 tmp;
+		if (for_tx) {
+			b43_write32(dev, ring->mmio_base + B43_DMA64_TXRINGLO, 0xff0);
+			tmp = b43_read32(dev, ring->mmio_base + B43_DMA64_TXRINGLO);
+			pr_info("[DBG] Testing TX on ring 0x%X: 0x%X\n", ring->mmio_base, tmp);
+		} else {
+			b43_write32(dev, ring->mmio_base + B43_DMA64_RXRINGLO, 0xff0);
+			tmp = b43_read32(dev, ring->mmio_base + B43_DMA64_RXRINGLO);
+			pr_info("[DBG] Testing RX on ring 0x%X: 0x%X\n", ring->mmio_base, tmp);
+		}
+	} else {
+		pr_err("[DBG] Whoops, it's not 64b DMA engine!\n");
+	}
+
 	if (for_tx) {
 		/* Assumption: B43_TXRING_SLOTS can be divided by TX_SLOTS_PER_FRAME */
 		BUILD_BUG_ON(B43_TXRING_SLOTS % TX_SLOTS_PER_FRAME != 0);
-- 
1.7.10.4
