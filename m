From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue,  5 Jun 2012 20:58:20 +0200
Subject: [PATCH v2] bcma: fix null pointer in bcma_core_pci_irq_ctl
Message-ID: <1338922700-16559-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, arend@broadcom.com, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

pc could be null if hosttype != BCMA_HOSTTYPE_PCI.
If we are on a device without a pci core this function is called with
pc = null by b43 and brcmsmac. If the host type is PCI we have a pci
core as well and pc can not be null.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/driver_pci.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

v2:
   - add check if pc is not null
I do not want to remove the braces, because it looks good to me.

diff --git a/drivers/bcma/driver_pci.c b/drivers/bcma/driver_pci.c
index 9a96f14..c32ebd5 100644
--- a/drivers/bcma/driver_pci.c
+++ b/drivers/bcma/driver_pci.c
@@ -232,17 +232,19 @@ void __devinit bcma_core_pci_init(struct bcma_drv_pci *pc)
 int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
 			  bool enable)
 {
-	struct pci_dev *pdev = pc->core->bus->host_pci;
+	struct pci_dev *pdev;
 	u32 coremask, tmp;
 	int err = 0;
 
-	if (core->bus->hosttype != BCMA_HOSTTYPE_PCI) {
+	if (!pc || core->bus->hosttype != BCMA_HOSTTYPE_PCI) {
 		/* This bcma device is not on a PCI host-bus. So the IRQs are
 		 * not routed through the PCI core.
 		 * So we must not enable routing through the PCI core. */
 		goto out;
 	}
 
+	pdev = pc->core->bus->host_pci;
+
 	err = pci_read_config_dword(pdev, BCMA_PCI_IRQMASK, &tmp);
 	if (err)
 		goto out;
-- 
1.7.9.5
