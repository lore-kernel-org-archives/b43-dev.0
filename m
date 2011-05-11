From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 11 May 2011 02:10:58 +0200
Subject: [PATCH 1/2] ssb: move ssb_commit_settings and export it
Message-ID: <1305072659-4011-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Commiting settings is possible on devices without PCI core (but with CC
core). Export it for usage in drivers supporting other cores.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_pcicore.c |   26 --------------------------
 drivers/ssb/main.c           |   25 +++++++++++++++++++++++++
 include/linux/ssb/ssb.h      |    1 +
 3 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 8fde122..82feb34 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -21,8 +21,6 @@ static u16 ssb_pcie_mdio_read(struct ssb_pcicore *pc, u8 device, u8 address);
 static void ssb_pcie_mdio_write(struct ssb_pcicore *pc, u8 device,
 				u8 address, u16 data);
 
-static void ssb_commit_settings(struct ssb_bus *bus);
-
 static inline
 u32 pcicore_read32(struct ssb_pcicore *pc, u16 offset)
 {
@@ -659,30 +657,6 @@ static void ssb_pcie_mdio_write(struct ssb_pcicore *pc, u8 device,
 	pcicore_write32(pc, mdio_control, 0);
 }
 
-static void ssb_broadcast_value(struct ssb_device *dev,
-				u32 address, u32 data)
-{
-	/* This is used for both, PCI and ChipCommon core, so be careful. */
-	BUILD_BUG_ON(SSB_PCICORE_BCAST_ADDR != SSB_CHIPCO_BCAST_ADDR);
-	BUILD_BUG_ON(SSB_PCICORE_BCAST_DATA != SSB_CHIPCO_BCAST_DATA);
-
-	ssb_write32(dev, SSB_PCICORE_BCAST_ADDR, address);
-	ssb_read32(dev, SSB_PCICORE_BCAST_ADDR); /* flush */
-	ssb_write32(dev, SSB_PCICORE_BCAST_DATA, data);
-	ssb_read32(dev, SSB_PCICORE_BCAST_DATA); /* flush */
-}
-
-static void ssb_commit_settings(struct ssb_bus *bus)
-{
-	struct ssb_device *dev;
-
-	dev = bus->chipco.dev ? bus->chipco.dev : bus->pcicore.dev;
-	if (WARN_ON(!dev))
-		return;
-	/* This forces an update of the cached registers. */
-	ssb_broadcast_value(dev, 0xFD8, 0);
-}
-
 int ssb_pcicore_dev_irqvecs_enable(struct ssb_pcicore *pc,
 				   struct ssb_device *dev)
 {
diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index ad3da93..ee2937c 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -1329,6 +1329,31 @@ error:
 }
 EXPORT_SYMBOL(ssb_bus_powerup);
 
+static void ssb_broadcast_value(struct ssb_device *dev,
+				u32 address, u32 data)
+{
+	/* This is used for both, PCI and ChipCommon core, so be careful. */
+	BUILD_BUG_ON(SSB_PCICORE_BCAST_ADDR != SSB_CHIPCO_BCAST_ADDR);
+	BUILD_BUG_ON(SSB_PCICORE_BCAST_DATA != SSB_CHIPCO_BCAST_DATA);
+
+	ssb_write32(dev, SSB_PCICORE_BCAST_ADDR, address);
+	ssb_read32(dev, SSB_PCICORE_BCAST_ADDR); /* flush */
+	ssb_write32(dev, SSB_PCICORE_BCAST_DATA, data);
+	ssb_read32(dev, SSB_PCICORE_BCAST_DATA); /* flush */
+}
+
+void ssb_commit_settings(struct ssb_bus *bus)
+{
+	struct ssb_device *dev;
+
+	dev = bus->chipco.dev ? bus->chipco.dev : bus->pcicore.dev;
+	if (WARN_ON(!dev))
+		return;
+	/* This forces an update of the cached registers. */
+	ssb_broadcast_value(dev, 0xFD8, 0);
+}
+EXPORT_SYMBOL(ssb_commit_settings);
+
 u32 ssb_admatch_base(u32 adm)
 {
 	u32 base = 0;
diff --git a/include/linux/ssb/ssb.h b/include/linux/ssb/ssb.h
index 7e99b34..f017b89 100644
--- a/include/linux/ssb/ssb.h
+++ b/include/linux/ssb/ssb.h
@@ -518,6 +518,7 @@ extern int ssb_bus_may_powerdown(struct ssb_bus *bus);
  * Otherwise static always-on powercontrol will be used. */
 extern int ssb_bus_powerup(struct ssb_bus *bus, bool dynamic_pctl);
 
+extern void ssb_commit_settings(struct ssb_bus *bus);
 
 /* Various helper functions */
 extern u32 ssb_admatch_base(u32 adm);
-- 
1.7.3.4
