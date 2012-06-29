From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 30 Jun 2012 01:44:40 +0200
Subject: [PATCH v2 4/9] bcma: add PCI ID for BCM43224
In-Reply-To: <1341013486-2520-1-git-send-email-hauke@hauke-m.de>
References: <1341013486-2520-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1341013486-2520-5-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, arend@broadcom.com, linux-wireless@vger.kernel.org, brcm80211-dev-list@broadcom.com, Hauke Mehrtens <hauke@hauke-m.de>

This ID was found on the PCIe wireless card on the board of a Netgear
WNDR3400 using a bcm4716. The device with this ID is identified by b43
as "Broadcom 43224 WLAN".

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/host_pci.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
index 6c05cf4..c693c0b 100644
--- a/drivers/bcma/host_pci.c
+++ b/drivers/bcma/host_pci.c
@@ -268,6 +268,7 @@ static SIMPLE_DEV_PM_OPS(bcma_pm_ops, bcma_host_pci_suspend,
 
 static DEFINE_PCI_DEVICE_TABLE(bcma_pci_bridge_tbl) = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x0576) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43224) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4331) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4353) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4357) },
-- 
1.7.9.5
