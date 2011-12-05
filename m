From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon,  5 Dec 2011 19:13:39 +0100
Subject: [PATCH] bcma: pci: use fixed windows when possible
Message-ID: <1323108819-15063-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Arend Van Spriel <arend@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Some cores are mapped in the fixed way, they registers can be accessed
all the time.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/host_pci.c |   32 +++++++++++++++++++++-----------
 1 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
index 1b51d8b..b0994c0 100644
--- a/drivers/bcma/host_pci.c
+++ b/drivers/bcma/host_pci.c
@@ -21,48 +21,58 @@ static void bcma_host_pci_switch_core(struct bcma_device *core)
 	pr_debug("Switched to core: 0x%X\n", core->id.id);
 }
 
-static u8 bcma_host_pci_read8(struct bcma_device *core, u16 offset)
+/* Provides access to the requested core. Returns base offset that has to be
+ * used. It makes use of fixed windows when possible. */
+static u16 bcma_host_pci_provide_access_to_core(struct bcma_device *core)
 {
+	switch (core->id.id) {
+	case BCMA_CORE_CHIPCOMMON:
+		return 3 * BCMA_CORE_SIZE;
+	case BCMA_CORE_PCIE:
+		return 2 * BCMA_CORE_SIZE;
+	}
+
 	if (core->bus->mapped_core != core)
 		bcma_host_pci_switch_core(core);
+	return 0;
+}
+
+static u8 bcma_host_pci_read8(struct bcma_device *core, u16 offset)
+{
+	offset += bcma_host_pci_provide_access_to_core(core);
 	return ioread8(core->bus->mmio + offset);
 }
 
 static u16 bcma_host_pci_read16(struct bcma_device *core, u16 offset)
 {
-	if (core->bus->mapped_core != core)
-		bcma_host_pci_switch_core(core);
+	offset += bcma_host_pci_provide_access_to_core(core);
 	return ioread16(core->bus->mmio + offset);
 }
 
 static u32 bcma_host_pci_read32(struct bcma_device *core, u16 offset)
 {
-	if (core->bus->mapped_core != core)
-		bcma_host_pci_switch_core(core);
+	offset += bcma_host_pci_provide_access_to_core(core);
 	return ioread32(core->bus->mmio + offset);
 }
 
 static void bcma_host_pci_write8(struct bcma_device *core, u16 offset,
 				 u8 value)
 {
-	if (core->bus->mapped_core != core)
-		bcma_host_pci_switch_core(core);
+	offset += bcma_host_pci_provide_access_to_core(core);
 	iowrite8(value, core->bus->mmio + offset);
 }
 
 static void bcma_host_pci_write16(struct bcma_device *core, u16 offset,
 				 u16 value)
 {
-	if (core->bus->mapped_core != core)
-		bcma_host_pci_switch_core(core);
+	offset += bcma_host_pci_provide_access_to_core(core);
 	iowrite16(value, core->bus->mmio + offset);
 }
 
 static void bcma_host_pci_write32(struct bcma_device *core, u16 offset,
 				 u32 value)
 {
-	if (core->bus->mapped_core != core)
-		bcma_host_pci_switch_core(core);
+	offset += bcma_host_pci_provide_access_to_core(core);
 	iowrite32(value, core->bus->mmio + offset);
 }
 
-- 
1.7.3.4
