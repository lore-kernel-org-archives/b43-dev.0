From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  9 Sep 2014 21:17:06 +0200
Subject: [PATCH 1/4] b43: HT-PHY: Move radio preparation into init function
Message-ID: <1410290229-7033-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>, linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Radio should be prepared only before initialization. We need this to be
able to call b43_radio_2059_init conditionally (in the future).
This also documents RF control register a bit.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.c | 24 +++++++++++++-----------
 drivers/net/wireless/b43/phy_ht.h |  4 +++-
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index c4dc8b0..7b44541 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -89,6 +89,14 @@ static void b43_radio_2059_channel_setup(struct b43_wldev *dev,
 	udelay(300);
 }
 
+static void b43_radio_2059_init_pre(struct b43_wldev *dev)
+{
+	b43_phy_mask(dev, B43_PHY_HT_RF_CTL_CMD, ~B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
+	b43_phy_set(dev, B43_PHY_HT_RF_CTL_CMD, B43_PHY_HT_RF_CTL_CMD_FORCE);
+	b43_phy_mask(dev, B43_PHY_HT_RF_CTL_CMD, ~B43_PHY_HT_RF_CTL_CMD_FORCE);
+	b43_phy_set(dev, B43_PHY_HT_RF_CTL_CMD, B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
+}
+
 static void b43_radio_2059_init(struct b43_wldev *dev)
 {
 	const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3 };
@@ -97,6 +105,9 @@ static void b43_radio_2059_init(struct b43_wldev *dev)
 	};
 	u16 i, j;
 
+	/* Prepare (reset?) radio */
+	b43_radio_2059_init_pre(dev);
+
 	b43_radio_write(dev, R2059_ALL | 0x51, 0x0070);
 	b43_radio_write(dev, R2059_ALL | 0x5a, 0x0003);
 
@@ -1002,19 +1013,10 @@ static void b43_phy_ht_op_software_rfkill(struct b43_wldev *dev,
 	if (b43_read32(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
 		b43err(dev->wl, "MAC not suspended\n");
 
-	/* In the following PHY ops we copy wl's dummy behaviour.
-	 * TODO: Find out if reads (currently hidden in masks/masksets) are
-	 * needed and replace following ops with just writes or w&r.
-	 * Note: B43_PHY_HT_RF_CTL1 register is tricky, wrong operation can
-	 * cause delayed (!) machine lock up. */
 	if (blocked) {
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL_CMD,
+			     ~B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
 	} else {
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
-		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x1);
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
-		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x2);
-
 		if (dev->phy.radio_ver == 0x2059)
 			b43_radio_2059_init(dev);
 		else
diff --git a/drivers/net/wireless/b43/phy_ht.h b/drivers/net/wireless/b43/phy_ht.h
index 6cae370..67b208e 100644
--- a/drivers/net/wireless/b43/phy_ht.h
+++ b/drivers/net/wireless/b43/phy_ht.h
@@ -81,7 +81,9 @@
 #define B43_PHY_HT_RF_SEQ_STATUS		B43_PHY_EXTG(0x004)
 /* Values for the status are the same as for the trigger */
 
-#define B43_PHY_HT_RF_CTL1			B43_PHY_EXTG(0x010)
+#define B43_PHY_HT_RF_CTL_CMD			0x810
+#define  B43_PHY_HT_RF_CTL_CMD_FORCE		0x0001
+#define  B43_PHY_HT_RF_CTL_CMD_CHIP0_PU		0x0002
 
 #define B43_PHY_HT_RF_CTL_INT_C1		B43_PHY_EXTG(0x04c)
 #define B43_PHY_HT_RF_CTL_INT_C2		B43_PHY_EXTG(0x06c)
-- 
1.8.4.5
