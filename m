From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 18:14:26 +0100
Subject: [PATCH] b43: HT-PHY: use enum for RSSI types
Message-ID: <1363713266-10644-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_ht.c |   21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index ccd70ac..b443530 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -30,6 +30,17 @@
 #include "radio_2059.h"
 #include "main.h"
 
+/* Force values to keep compatibility with wl */
+enum ht_rssi_type {
+	HT_RSSI_W1 = 0,
+	HT_RSSI_W2 = 1,
+	HT_RSSI_NB = 2,
+	HT_RSSI_IQ = 3,
+	HT_RSSI_TSSI_2G = 4,
+	HT_RSSI_TSSI_5G = 5,
+	HT_RSSI_TBD = 6,
+};
+
 /**************************************************
  * Radio 2059.
  **************************************************/
@@ -383,7 +394,7 @@ static void b43_phy_ht_tx_tone(struct b43_wldev *dev)
  **************************************************/
 
 static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
-				   u8 rssi_type)
+				   enum ht_rssi_type rssi_type)
 {
 	static const u16 ctl_regs[3][2] = {
 		{ B43_PHY_HT_AFE_C1, B43_PHY_HT_AFE_C1_OVER, },
@@ -404,7 +415,7 @@ static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
 				continue;
 
 			switch (rssi_type) {
-			case 4:
+			case HT_RSSI_TSSI_2G:
 				b43_phy_set(dev, ctl_regs[core][0], 0x3 << 8);
 				b43_phy_set(dev, ctl_regs[core][0], 0x3 << 10);
 				b43_phy_set(dev, ctl_regs[core][1], 0x1 << 9);
@@ -422,8 +433,8 @@ static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
 	}
 }
 
-static void b43_phy_ht_poll_rssi(struct b43_wldev *dev, u8 type, s32 *buf,
-				 u8 nsamp)
+static void b43_phy_ht_poll_rssi(struct b43_wldev *dev, enum ht_rssi_type type,
+				 s32 *buf, u8 nsamp)
 {
 	u16 phy_regs_values[12];
 	static const u16 phy_regs_to_save[] = {
@@ -549,7 +560,7 @@ static void b43_phy_ht_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 
 	b43_phy_ht_tx_tone(dev);
 	udelay(20);
-	b43_phy_ht_poll_rssi(dev, 4, rssi_buf, 1);
+	b43_phy_ht_poll_rssi(dev, HT_RSSI_TSSI_2G, rssi_buf, 1);
 	b43_phy_ht_stop_playback(dev);
 	b43_phy_ht_reset_cca(dev);
 
-- 
1.7.10.4
