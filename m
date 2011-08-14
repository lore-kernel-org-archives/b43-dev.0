From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 19:39:40 +0200
Subject: [PATCH RESEND 3.2 1/2] ssb: fix DMA translation for some specific
	boards
Message-ID: <1313343581-4395-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Michael Buesch <m@bues.ch>

Signed-off-by: Michael Buesch <m@bues.ch>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/main.c |   24 +++++++++++++++++++++---
 1 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index 29c7d4f..d0cbdb0 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -1260,16 +1260,34 @@ void ssb_device_disable(struct ssb_device *dev, u32 core_specific_flags)
 }
 EXPORT_SYMBOL(ssb_device_disable);
 
+/* Some chipsets need routing known for PCIe and 64-bit DMA */
+static bool ssb_dma_translation_special_bit(struct ssb_device *dev)
+{
+	u16 chip_id = dev->bus->chip_id;
+
+	if (dev->id.coreid == SSB_DEV_80211) {
+		return (chip_id == 0x4322 || chip_id == 43221 ||
+			chip_id == 43231 || chip_id == 43222);
+	}
+
+	return 0;
+}
+
 u32 ssb_dma_translation(struct ssb_device *dev)
 {
 	switch (dev->bus->bustype) {
 	case SSB_BUSTYPE_SSB:
 		return 0;
 	case SSB_BUSTYPE_PCI:
-		if (ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64)
+		if (pci_is_pcie(dev->bus->host_pci) &&
+		    ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64) {
 			return SSB_PCIE_DMA_H32;
-		else
-			return SSB_PCI_DMA;
+		} else {
+			if (ssb_dma_translation_special_bit(dev))
+				return SSB_PCIE_DMA_H32;
+			else
+				return SSB_PCI_DMA;
+		}
 	default:
 		__ssb_dma_not_implemented(dev);
 	}
-- 
1.7.3.4
