From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:20 +0100
Subject: [PATCH 1/6] b43: use defines for board_type
Message-ID: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_lp.c |    4 ++--
 drivers/net/wireless/b43/phy_n.c  |    6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_lp.c b/drivers/net/wireless/b43/phy_lp.c
index 5ed352d..a316579 100644
--- a/drivers/net/wireless/b43/phy_lp.c
+++ b/drivers/net/wireless/b43/phy_lp.c
@@ -281,8 +281,8 @@ static void lpphy_baseband_rev0_1_init(struct b43_wldev *dev)
 		b43_phy_maskset(dev, B43_LPPHY_TR_LOOKUP_8, 0xFFC0, 0x000A);
 		b43_phy_maskset(dev, B43_LPPHY_TR_LOOKUP_8, 0xC0FF, 0x0B00);
 	} else if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ ||
-		  (dev->dev->board_type == 0x048A) || ((dev->phy.rev == 0) &&
-		  (sprom->boardflags_lo & B43_BFL_FEM))) {
+		   dev->dev->board_type == SSB_BOARD_BU4312 ||
+		   (dev->phy.rev == 0 && (sprom->boardflags_lo & B43_BFL_FEM))) {
 		b43_phy_maskset(dev, B43_LPPHY_TR_LOOKUP_1, 0xFFC0, 0x0001);
 		b43_phy_maskset(dev, B43_LPPHY_TR_LOOKUP_1, 0xC0FF, 0x0400);
 		b43_phy_maskset(dev, B43_LPPHY_TR_LOOKUP_2, 0xFFC0, 0x0001);
diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 9ec6e0c..efc3f9d 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1016,7 +1016,7 @@ static void b43_radio_init2055_post(struct b43_wldev *dev)
 
 	if (sprom->revision < 4)
 		workaround = (dev->dev->board_vendor != PCI_VENDOR_ID_BROADCOM
-			      && dev->dev->board_type == 0x46D
+			      && dev->dev->board_type == SSB_BOARD_CB2_4321
 			      && dev->dev->board_rev >= 0x41);
 	else
 		workaround =
@@ -2616,7 +2616,7 @@ static void b43_nphy_workarounds_rev1_2(struct b43_wldev *dev)
 	u8 delays2[7] = { 0x8, 0x6, 0x2, 0x4, 0x4, 0x6, 0x1 };
 
 	if (sprom->boardflags2_lo & B43_BFL2_SKWRKFEM_BRD ||
-	    dev->dev->board_type == 0x8B) {
+	    dev->dev->board_type == BCMA_BOARD_TYPE_BCM943224M93) {
 		delays1[0] = 0x1;
 		delays1[5] = 0x14;
 	}
@@ -5006,7 +5006,7 @@ int b43_phy_initn(struct b43_wldev *dev)
 
 	if (sprom->boardflags2_lo & B43_BFL2_SKWRKFEM_BRD ||
 	    (dev->dev->board_vendor == PCI_VENDOR_ID_APPLE &&
-	     dev->dev->board_type == 0x8B))
+	     dev->dev->board_type == BCMA_BOARD_TYPE_BCM943224M93))
 		b43_phy_write(dev, B43_NPHY_TXREALFD, 0xA0);
 	else
 		b43_phy_write(dev, B43_NPHY_TXREALFD, 0xB8);
-- 
1.7.10.4
