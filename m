From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun,  9 Jun 2013 18:59:42 +0200
Subject: [PATCH 1/2] bcma: activate PCI host option by default
Message-ID: <1370797183-5510-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>

Most users are using bcma with a PCIe card, activate support for
this by default.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bcma/Kconfig b/drivers/bcma/Kconfig
index 8b4221c..380a200 100644
--- a/drivers/bcma/Kconfig
+++ b/drivers/bcma/Kconfig
@@ -26,6 +26,7 @@ config BCMA_HOST_PCI_POSSIBLE
 config BCMA_HOST_PCI
 	bool "Support for BCMA on PCI-host bus"
 	depends on BCMA_HOST_PCI_POSSIBLE
+	default y
 
 config BCMA_DRIVER_PCI_HOSTMODE
 	bool "Driver for PCI core working in hostmode"
-- 
1.7.10.4
