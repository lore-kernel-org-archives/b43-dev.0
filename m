From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 10 Jun 2012 22:11:56 +0200
Subject: [PATCH] ssb: add missing PCI ID for b/g/n single band BCM4322
Message-ID: <1339359116-6878-1-git-send-email-jonas.gorski@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>, Michael Buesch <m@bues.ch>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>

14e4:432c is found on some bcm63xx devices. The device is working fine
with b43.

Reported-by: ?lvaro Fern?ndez Rojas <noltari@gmail.com>
Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
---
 drivers/ssb/b43_pci_bridge.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/b43_pci_bridge.c b/drivers/ssb/b43_pci_bridge.c
index f551e53..266aa16 100644
--- a/drivers/ssb/b43_pci_bridge.c
+++ b/drivers/ssb/b43_pci_bridge.c
@@ -36,6 +36,7 @@ static const struct pci_device_id b43_pci_bridge_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4328) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4329) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x432b) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x432c) },
 	{ 0, },
 };
 MODULE_DEVICE_TABLE(pci, b43_pci_bridge_tbl);
-- 
1.7.2.5
