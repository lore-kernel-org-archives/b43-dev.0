From: Bjorn Helgaas <bhelgaas@google.com>
Date: Tue, 08 May 2012 17:27:32 -0600
Subject: [PATCH] b43: use pci_is_pcie() instead of obsolete pci_dev.is_pcie
Message-ID: <20120508232732.19543.37241.stgit@bhelgaas.mtv.corp.google.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, Stefano Brivio <stefano.brivio@polimi.it>, Kenji Kaneshige <kaneshige.kenji@jp.fujitsu.com>

Use pci_is_pcie() instead of looking at obsolete is_pcie field in
struct pci_dev.

CC: Stefano Brivio <stefano.brivio@polimi.it>
CC: b43-dev at lists.infradead.org
CC: Kenji Kaneshige <kaneshige.kenji@jp.fujitsu.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/net/wireless/b43/dma.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index b5f1b91..777cd74 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -1109,7 +1109,7 @@ static bool b43_dma_translation_in_low_word(struct b43_wldev *dev,
 #ifdef CONFIG_B43_SSB
 	if (dev->dev->bus_type == B43_BUS_SSB &&
 	    dev->dev->sdev->bus->bustype == SSB_BUSTYPE_PCI &&
-	    !(dev->dev->sdev->bus->host_pci->is_pcie &&
+	    !(pci_is_pcie(dev->dev->sdev->bus->host_pci) &&
 	      ssb_read32(dev->dev->sdev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64))
 			return 1;
 #endif
