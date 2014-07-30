From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 30 Jul 2014 15:38:00 +0200
Subject: [PATCH] b43: update PHY descriptions in Kconfig
Message-ID: <1406727480-19952-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Add lists of chipsets, so people can enable support for their device
easier (at least after checking lspci).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/Kconfig | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index d4c6ae3..64a5b67 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -132,35 +132,31 @@ config B43_PHY_G
 	  SoC: BCM4712, BCM5352E
 
 config B43_PHY_N
-	bool "Support for 802.11n (N-PHY) devices"
+	bool "Support for N-PHY (the main 802.11n series) devices"
 	depends on B43
 	default y
 	---help---
-	  Support for the N-PHY.
-
-	  This enables support for devices with N-PHY.
-
-	  Say N if you expect high stability and performance. Saying Y will not
-	  affect other devices support and may provide support for basic needs.
+	  This PHY type can be found in the following chipsets:
+	  PCI: BCM4321, BCM4322,
+	       BCM43222, BCM43224, BCM43225,
+	       BCM43131, BCM43217, BCM43227, BCM43228
+	  SoC: BCM4716, BCM4717, BCM4718, BCM5356, BCM5357, BCM5358
 
 config B43_PHY_LP
-	bool "Support for low-power (LP-PHY) devices"
+	bool "Support for LP-PHY (low-power 802.11g) devices"
 	depends on B43 && B43_SSB
 	default y
 	---help---
-	  Support for the LP-PHY.
 	  The LP-PHY is a low-power PHY built into some notebooks
 	  and embedded devices. It supports 802.11a/b/g
 	  (802.11a support is optional, and currently disabled).
 
 config B43_PHY_HT
-	bool "Support for HT-PHY (high throughput) devices"
+	bool "Support for HT-PHY (high throughput 802.11n) devices"
 	depends on B43 && B43_BCMA
 	default y
 	---help---
-	  Support for the HT-PHY.
-
-	  Enables support for BCM4331 and possibly other chipsets with that PHY.
+	  This PHY type with 3x3:3 MIMO can be found in the BCM4331 PCI chipset.
 
 config B43_PHY_LCN
 	bool "Support for LCN-PHY devices (BROKEN)"
-- 
1.8.4.5
