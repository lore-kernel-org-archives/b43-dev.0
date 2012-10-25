From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 25 Oct 2012 18:39:28 +0200
Subject: [PATCH 1/2] ssb: add PCI ID 0x4350
Message-ID: <1351183169-13392-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, m@bues.ch, b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>

14e4:4350 is found on a Broadcom BCM43222.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/ssb/b43_pci_bridge.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ssb/b43_pci_bridge.c b/drivers/ssb/b43_pci_bridge.c
index 266aa16..19396dc 100644
--- a/drivers/ssb/b43_pci_bridge.c
+++ b/drivers/ssb/b43_pci_bridge.c
@@ -37,6 +37,7 @@ static const struct pci_device_id b43_pci_bridge_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4329) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x432b) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x432c) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4350) },
 	{ 0, },
 };
 MODULE_DEVICE_TABLE(pci, b43_pci_bridge_tbl);
-- 
1.7.9.5
