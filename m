From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 24 Jul 2014 15:29:19 +0200
Subject: [PATCH 2/2] bcma: add support for BCM43131 that was found in Tenda
 W311E
In-Reply-To: <1406208559-19057-1-git-send-email-zajec5@gmail.com>
References: <1406208559-19057-1-git-send-email-zajec5@gmail.com>
Message-ID: <1406208559-19057-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/driver_chipcommon_pmu.c | 1 +
 drivers/bcma/host_pci.c              | 1 +
 drivers/bcma/sprom.c                 | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/bcma/driver_chipcommon_pmu.c b/drivers/bcma/driver_chipcommon_pmu.c
index bb694e2..fe0d48c 100644
--- a/drivers/bcma/driver_chipcommon_pmu.c
+++ b/drivers/bcma/driver_chipcommon_pmu.c
@@ -603,6 +603,7 @@ void bcma_pmu_spuravoid_pllupdate(struct bcma_drv_cc *cc, int spuravoid)
 		tmp = BCMA_CC_PMU_CTL_PLL_UPD | BCMA_CC_PMU_CTL_NOILPONW;
 		break;
 
+	case BCMA_CHIP_ID_BCM43131:
 	case BCMA_CHIP_ID_BCM43217:
 	case BCMA_CHIP_ID_BCM43227:
 	case BCMA_CHIP_ID_BCM43228:
diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
index 3cf725a..294a7dd 100644
--- a/drivers/bcma/host_pci.c
+++ b/drivers/bcma/host_pci.c
@@ -280,6 +280,7 @@ static const struct pci_device_id bcma_pci_bridge_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4359) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4365) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a9) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43aa) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4727) },
 	{ 0, },
 };
diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
index 97bb38e..efb037f 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -534,6 +534,7 @@ static bool bcma_sprom_onchip_available(struct bcma_bus *bus)
 		/* for these chips OTP is always available */
 		present = true;
 		break;
+	case BCMA_CHIP_ID_BCM43131:
 	case BCMA_CHIP_ID_BCM43217:
 	case BCMA_CHIP_ID_BCM43227:
 	case BCMA_CHIP_ID_BCM43228:
-- 
1.8.4.5
