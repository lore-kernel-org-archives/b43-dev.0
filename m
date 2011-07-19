From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Jul 2011 10:05:00 +0200
Subject: [PATCH 1/2] bcma: inform drivers about translation bits needed for
	the board
Message-ID: <1311062701-3455-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Pavel Roskin <proski@gnu.org>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

When using DMA, drivers need to pass special translation info to the
hardware.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/main.c       |   12 ++++++++++++
 include/linux/bcma/bcma.h |    2 ++
 2 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
index 873e2e4..660288c 100644
--- a/drivers/bcma/main.c
+++ b/drivers/bcma/main.c
@@ -164,6 +164,18 @@ int bcma_bus_register(struct bcma_bus *bus)
 	return 0;
 }
 
+u32 bcma_dma_translation(struct bcma_bus *bus)
+{
+	switch (bus->hosttype) {
+	case BCMA_HOSTTYPE_PCI:
+		return 0x40000000;
+	default:
+		pr_err("DMA translation unknown for host %d\n", bus->hosttype);
+	}
+	return 0;
+}
+EXPORT_SYMBOL(bcma_dma_translation);
+
 void bcma_bus_unregister(struct bcma_bus *bus)
 {
 	bcma_unregister_cores(bus);
diff --git a/include/linux/bcma/bcma.h b/include/linux/bcma/bcma.h
index cc1582d..921671b 100644
--- a/include/linux/bcma/bcma.h
+++ b/include/linux/bcma/bcma.h
@@ -255,6 +255,8 @@ void bcma_awrite32(struct bcma_device *core, u16 offset, u32 value)
 #define bcma_maskset32(cc, offset, mask, set) \
 	bcma_write32(cc, offset, (bcma_read32(cc, offset) & (mask)) | (set))
 
+extern u32 bcma_dma_translation(struct bcma_bus *bus);
+
 extern bool bcma_core_is_enabled(struct bcma_device *core);
 extern void bcma_core_disable(struct bcma_device *core, u32 flags);
 extern int bcma_core_enable(struct bcma_device *core, u32 flags);
-- 
1.7.3.4
