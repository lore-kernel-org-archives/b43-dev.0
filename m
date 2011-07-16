From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 01:06:04 +0200
Subject: [PATCH 2/4] bcma: allow setting FAST clockmode for a core
In-Reply-To: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
References: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310857566-2876-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/core.c       |   31 +++++++++++++++++++++++++++++++
 include/linux/bcma/bcma.h |    8 +++++++-
 2 files changed, 38 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/core.c b/drivers/bcma/core.c
index 1ec7d45..0686b1b 100644
--- a/drivers/bcma/core.c
+++ b/drivers/bcma/core.c
@@ -50,3 +50,34 @@ int bcma_core_enable(struct bcma_device *core, u32 flags)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(bcma_core_enable);
+
+void bcma_core_set_clockmode(struct bcma_device *core,
+			     enum bcma_clkmode clkmode)
+{
+	u16 i;
+
+	WARN_ON(core->id.id != BCMA_CORE_CHIPCOMMON &&
+		core->id.id != BCMA_CORE_PCIE &&
+		core->id.id != BCMA_CORE_80211);
+
+	switch (clkmode) {
+	case BCMA_CLKMODE_FAST:
+		bcma_set32(core, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT);
+		udelay(64);
+		for (i = 0; i < 1500; i++) {
+			if (bcma_read32(core, BCMA_CLKCTLST) &
+			    BCMA_CLKCTLST_HAVEHT) {
+				i = 0;
+				break;
+			}
+			udelay(10);
+		}
+		if (i)
+			pr_err("HT force timeout\n");
+		break;
+	case BCMA_CLKMODE_DYNAMIC:
+		pr_warn("Dynamic clockmode not supported yet!\n");
+		break;
+	}
+}
+EXPORT_SYMBOL_GPL(bcma_core_set_clockmode);
diff --git a/include/linux/bcma/bcma.h b/include/linux/bcma/bcma.h
index 6e5dc7b..37017c1 100644
--- a/include/linux/bcma/bcma.h
+++ b/include/linux/bcma/bcma.h
@@ -25,6 +25,11 @@ struct bcma_chipinfo {
 	u8 pkg;
 };
 
+enum bcma_clkmode {
+	BCMA_CLKMODE_FAST,
+	BCMA_CLKMODE_DYNAMIC,
+};
+
 struct bcma_host_ops {
 	u8 (*read8)(struct bcma_device *core, u16 offset);
 	u16 (*read16)(struct bcma_device *core, u16 offset);
@@ -253,6 +258,7 @@ void bcma_awrite32(struct bcma_device *core, u16 offset, u32 value)
 extern bool bcma_core_is_enabled(struct bcma_device *core);
 extern void bcma_core_disable(struct bcma_device *core, u32 flags);
 extern int bcma_core_enable(struct bcma_device *core, u32 flags);
-
+extern void bcma_core_set_clockmode(struct bcma_device *core,
+				    enum bcma_clkmode clkmode);
 
 #endif /* LINUX_BCMA_H_ */
-- 
1.7.3.4
