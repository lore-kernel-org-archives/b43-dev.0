From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 31 May 2012 22:39:30 +0200
Subject: [PATCH] bcma: fix null pointer in bcma_core_pci_irq_ctl
Message-ID: <1338496770-16381-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

pc could be null if hosttype != BCMA_HOSTTYPE_PCI.
If we are on a device without a pci core this function is called with
pc = null by b43 and brcmsmac. If the host type is PCI we have a pci
core as well and pc can not be null.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/driver_pci.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/bcma/driver_pci.c b/drivers/bcma/driver_pci.c
index 9a96f14..884b7af 100644
--- a/drivers/bcma/driver_pci.c
+++ b/drivers/bcma/driver_pci.c
@@ -232,7 +232,7 @@ void __devinit bcma_core_pci_init(struct bcma_drv_pci *pc)
 int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
 			  bool enable)
 {
-	struct pci_dev *pdev = pc->core->bus->host_pci;
+	struct pci_dev *pdev;
 	u32 coremask, tmp;
 	int err = 0;
 
@@ -243,6 +243,8 @@ int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
 		goto out;
 	}
 
+	pdev = pc->core->bus->host_pci;
+
 	err = pci_read_config_dword(pdev, BCMA_PCI_IRQMASK, &tmp);
 	if (err)
 		goto out;
-- 
1.7.9.5
