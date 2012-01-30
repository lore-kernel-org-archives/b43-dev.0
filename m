From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue, 31 Jan 2012 00:03:33 +0100
Subject: [PATCH 3/7] bcma: export bcma_pcie_read()
In-Reply-To: <1327964617-7910-1-git-send-email-hauke@hauke-m.de>
References: <1327964617-7910-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1327964617-7910-4-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

This will be needed by the host controller.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/bcma_private.h |    3 +++
 drivers/bcma/driver_pci.c   |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/bcma_private.h b/drivers/bcma/bcma_private.h
index 0def898..6109da5 100644
--- a/drivers/bcma/bcma_private.h
+++ b/drivers/bcma/bcma_private.h
@@ -48,6 +48,9 @@ extern int __init bcma_host_pci_init(void);
 extern void __exit bcma_host_pci_exit(void);
 #endif /* CONFIG_BCMA_HOST_PCI */
 
+/* driver_pci.c */
+u32 bcma_pcie_read(struct bcma_drv_pci *pc, u32 address);
+
 #ifdef CONFIG_BCMA_DRIVER_PCI_HOSTMODE
 void bcma_core_pci_hostmode_init(struct bcma_drv_pci *pc);
 #endif /* CONFIG_BCMA_DRIVER_PCI_HOSTMODE */
diff --git a/drivers/bcma/driver_pci.c b/drivers/bcma/driver_pci.c
index 970a38e..20ceebd 100644
--- a/drivers/bcma/driver_pci.c
+++ b/drivers/bcma/driver_pci.c
@@ -17,7 +17,7 @@
  * R/W ops.
  **************************************************/
 
-static u32 bcma_pcie_read(struct bcma_drv_pci *pc, u32 address)
+u32 bcma_pcie_read(struct bcma_drv_pci *pc, u32 address)
 {
 	pcicore_write32(pc, BCMA_CORE_PCI_PCIEIND_ADDR, address);
 	pcicore_read32(pc, BCMA_CORE_PCI_PCIEIND_ADDR);
-- 
1.7.5.4
