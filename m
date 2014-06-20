From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 20 Jun 2014 17:22:01 +0200
Subject: [PATCH 2/2] b43: add config for (en|dis)abling G-PHY support
In-Reply-To: <1403277721-25302-1-git-send-email-zajec5@gmail.com>
References: <1403277721-25302-1-git-send-email-zajec5@gmail.com>
Message-ID: <1403277721-25302-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This allows new devices users to save some space.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/Kconfig      | 9 +++++++++
 drivers/net/wireless/b43/Makefile     | 6 +-----
 drivers/net/wireless/b43/main.c       | 2 ++
 drivers/net/wireless/b43/phy_common.c | 2 ++
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index e3f67b8..037a4e3 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -122,6 +122,15 @@ config B43_PIO
 	select SSB_BLOCKIO
 	default y
 
+config B43_PHY_G
+	bool "Support for G-PHY (802.11g) devices"
+	depends on B43 && B43_SSB
+	default y
+	---help---
+	  This PHY type can be found in the following chipsets:
+	  PCI: BCM4306, BCM4311, BCM4318
+	  SoC: BCM4712, BCM5352E
+
 config B43_PHY_N
 	bool "Support for 802.11n (N-PHY) devices"
 	depends on B43
diff --git a/drivers/net/wireless/b43/Makefile b/drivers/net/wireless/b43/Makefile
index 098fe9e..6e00b88 100644
--- a/drivers/net/wireless/b43/Makefile
+++ b/drivers/net/wireless/b43/Makefile
@@ -1,13 +1,11 @@
 b43-y				+= main.o
 b43-y				+= bus.o
-b43-y				+= tables.o
+b43-$(CONFIG_B43_PHY_G)		+= phy_a.o phy_g.o tables.o lo.o wa.o
 b43-$(CONFIG_B43_PHY_N)		+= tables_nphy.o
 b43-$(CONFIG_B43_PHY_N)		+= radio_2055.o
 b43-$(CONFIG_B43_PHY_N)		+= radio_2056.o
 b43-$(CONFIG_B43_PHY_N)		+= radio_2057.o
 b43-y				+= phy_common.o
-b43-y				+= phy_g.o
-b43-y				+= phy_a.o
 b43-$(CONFIG_B43_PHY_N)		+= phy_n.o
 b43-$(CONFIG_B43_PHY_LP)	+= phy_lp.o
 b43-$(CONFIG_B43_PHY_LP)	+= tables_lpphy.o
@@ -17,8 +15,6 @@ b43-$(CONFIG_B43_PHY_HT)	+= radio_2059.o
 b43-$(CONFIG_B43_PHY_LCN)	+= phy_lcn.o tables_phy_lcn.o
 b43-y				+= sysfs.o
 b43-y				+= xmit.o
-b43-y				+= lo.o
-b43-y				+= wa.o
 b43-y				+= dma.o
 b43-y				+= pio.o
 b43-y				+= rfkill.o
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 4164afa..9cf07bb 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4306,10 +4306,12 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 	phy_type = (tmp & B43_PHYVER_TYPE) >> B43_PHYVER_TYPE_SHIFT;
 	phy_rev = (tmp & B43_PHYVER_VERSION);
 	switch (phy_type) {
+#ifdef CONFIG_B43_PHY_G
 	case B43_PHYTYPE_G:
 		if (phy_rev > 9)
 			unsupported = 1;
 		break;
+#endif
 #ifdef CONFIG_B43_PHY_N
 	case B43_PHYTYPE_N:
 		if (phy_rev > 9)
diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index ce486ee..3cbef21 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -46,7 +46,9 @@ int b43_phy_allocate(struct b43_wldev *dev)
 
 	switch (phy->type) {
 	case B43_PHYTYPE_G:
+#ifdef CONFIG_B43_PHY_G
 		phy->ops = &b43_phyops_g;
+#endif
 		break;
 	case B43_PHYTYPE_N:
 #ifdef CONFIG_B43_PHY_N
-- 
1.8.4.5
