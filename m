From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 10 May 2012 00:22:46 +0200
Subject: [PATCH v2] ssb: add PCI IDs 0x4322 and 43222
Message-ID: <1336602166-7518-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, m@bues.ch, Hauke Mehrtens <hauke@hauke-m.de>

The 0x4322 ID is found on the BCM4322 used on some SoCs like the
Linksys WRT610N V1 connected to a BCM4705. The 43222 (0xa8d6) ID
is found on the BCM43222 used on some other SoCs like the D-Link
DSL-2760U connected to a BCM63xx.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/ssb/b43_pci_bridge.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ssb/b43_pci_bridge.c b/drivers/ssb/b43_pci_bridge.c
index bad7ba5..f551e53 100644
--- a/drivers/ssb/b43_pci_bridge.c
+++ b/drivers/ssb/b43_pci_bridge.c
@@ -29,6 +29,8 @@ static const struct pci_device_id b43_pci_bridge_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4319) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4320) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4321) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4322) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43222) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4324) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4325) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4328) },
-- 
1.7.9.5
