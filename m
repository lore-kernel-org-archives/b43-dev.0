From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  7 Jul 2011 18:58:25 +0200
Subject: [PATCH 2/2] b43: LCN-PHY: include new PHY in common code
In-Reply-To: <1310057906-4088-1-git-send-email-zajec5@gmail.com>
References: <1310057906-4088-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310057906-4088-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_common.c |    6 ++++++
 drivers/net/wireless/b43/phy_common.h |    3 +++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index 9705950..1019575 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -32,6 +32,7 @@
 #include "phy_n.h"
 #include "phy_lp.h"
 #include "phy_ht.h"
+#include "phy_lcn.h"
 #include "b43.h"
 #include "main.h"
 
@@ -65,6 +66,11 @@ int b43_phy_allocate(struct b43_wldev *dev)
 		phy->ops = &b43_phyops_ht;
 #endif
 		break;
+	case B43_PHYTYPE_LCN:
+#ifdef CONFIG_B43_PHY_LCN
+		phy->ops = &b43_phyops_lcn;
+#endif
+		break;
 	}
 	if (B43_WARN_ON(!phy->ops))
 		return -ENODEV;
diff --git a/drivers/net/wireless/b43/phy_common.h b/drivers/net/wireless/b43/phy_common.h
index 47dcb80..aa77ba6 100644
--- a/drivers/net/wireless/b43/phy_common.h
+++ b/drivers/net/wireless/b43/phy_common.h
@@ -195,6 +195,7 @@ struct b43_phy_g;
 struct b43_phy_n;
 struct b43_phy_lp;
 struct b43_phy_ht;
+struct b43_phy_lcn;
 
 struct b43_phy {
 	/* Hardware operation callbacks. */
@@ -219,6 +220,8 @@ struct b43_phy {
 		struct b43_phy_lp *lp;
 		/* HT-PHY specific information */
 		struct b43_phy_ht *ht;
+		/* LCN-PHY specific information */
+		struct b43_phy_lcn *lcn;
 	};
 
 	/* Band support flags. */
-- 
1.7.3.4
