From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 01:06:05 +0200
Subject: [PATCH 3/4] bcma: allow enabling PLL
In-Reply-To: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
References: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310857566-2876-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/core.c       |   25 +++++++++++++++++++++++++
 include/linux/bcma/bcma.h |    2 ++
 2 files changed, 27 insertions(+), 0 deletions(-)

diff --git a/drivers/bcma/core.c b/drivers/bcma/core.c
index 0686b1b..2d8506d 100644
--- a/drivers/bcma/core.c
+++ b/drivers/bcma/core.c
@@ -81,3 +81,28 @@ void bcma_core_set_clockmode(struct bcma_device *core,
 	}
 }
 EXPORT_SYMBOL_GPL(bcma_core_set_clockmode);
+
+void bcma_core_pll_ctl(struct bcma_device *core, u32 req, u32 status, bool on)
+{
+	u16 i;
+
+	WARN_ON(req & ~BCMA_CLKCTLST_EXTRESREQ);
+	WARN_ON(status & ~BCMA_CLKCTLST_EXTRESST);
+
+	if (on) {
+		bcma_set32(core, BCMA_CLKCTLST, req);
+		for (i = 0; i < 10000; i++) {
+			if ((bcma_read32(core, BCMA_CLKCTLST) & status) ==
+			    status) {
+				i = 0;
+				break;
+			}
+			udelay(10);
+		}
+		if (i)
+			pr_err("PLL enable timeout\n");
+	} else {
+		pr_warn("Disabling PLL not supported yet!\n");
+	}
+}
+EXPORT_SYMBOL_GPL(bcma_core_pll_ctl);
diff --git a/include/linux/bcma/bcma.h b/include/linux/bcma/bcma.h
index 37017c1..cc1582d 100644
--- a/include/linux/bcma/bcma.h
+++ b/include/linux/bcma/bcma.h
@@ -260,5 +260,7 @@ extern void bcma_core_disable(struct bcma_device *core, u32 flags);
 extern int bcma_core_enable(struct bcma_device *core, u32 flags);
 extern void bcma_core_set_clockmode(struct bcma_device *core,
 				    enum bcma_clkmode clkmode);
+extern void bcma_core_pll_ctl(struct bcma_device *core, u32 req, u32 status,
+			      bool on);
 
 #endif /* LINUX_BCMA_H_ */
-- 
1.7.3.4
