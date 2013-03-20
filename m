From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:47 +0100
Subject: [PATCH 1/6] b43: N-PHY: use enum for RAIL type
Message-ID: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |   26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index e014a7a..0a8165de 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -79,6 +79,11 @@ enum b43_nphy_rssi_type {
 	B43_NPHY_RSSI_TBD,
 };
 
+enum n_rail_type {
+	N_RAIL_I = 0,
+	N_RAIL_Q = 1,
+};
+
 static inline bool b43_nphy_ipa(struct b43_wldev *dev)
 {
 	enum ieee80211_band band = b43_current_band(dev->wl);
@@ -1207,7 +1212,8 @@ static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/ScaleOffsetRssi */
 static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
-					s8 offset, u8 core, u8 rail,
+					s8 offset, u8 core,
+				        enum n_rail_type rail,
 					enum b43_nphy_rssi_type type)
 {
 	u16 tmp;
@@ -1606,8 +1612,8 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		if (!(rx_core_state & (1 << core)))
 			continue;
 		r = core ? B2056_RX1 : B2056_RX0;
-		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, 0, 2);
-		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, 1, 2);
+		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_I, 2);
+		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_Q, 2);
 		for (i = 0; i < 8; i++) {
 			b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC, 0xE3,
 					i << 2);
@@ -1647,7 +1653,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 				offset[i] = -32;
 			b43_nphy_scale_offset_rssi(dev, 0, offset[i],
 						   (i / 2 == 0) ? 1 : 2,
-						   (i % 2 == 0) ? 0 : 1,
+						   (i % 2 == 0) ? N_RAIL_I : N_RAIL_Q,
 						   2);
 		}
 	}
@@ -1655,8 +1661,10 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		if (!(rx_core_state & (1 << core)))
 			continue;
 		for (i = 0; i < 2; i++) {
-			b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, 0, i);
-			b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, 1, i);
+			b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1,
+						   N_RAIL_I, i);
+			b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1,
+						   N_RAIL_Q, i);
 			b43_nphy_poll_rssi(dev, i, poll_results, 8);
 			for (j = 0; j < 4; j++) {
 				if (j / 2 == core) {
@@ -1782,8 +1790,8 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 	state[3] = b43_radio_read16(dev, B2055_C2_SP_RSSI) & 0x07;
 
 	b43_nphy_rssi_select(dev, 5, type);
-	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, 0, type);
-	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, 1, type);
+	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, N_RAIL_I, type);
+	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, N_RAIL_Q, type);
 
 	for (i = 0; i < 4; i++) {
 		u8 tmp[4];
@@ -1836,7 +1844,7 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 			offset[i] = code - 32;
 
 		core = (i / 2) ? 2 : 1;
-		rail = (i % 2) ? 1 : 0;
+		rail = (i % 2) ? N_RAIL_Q : N_RAIL_I;
 
 		b43_nphy_scale_offset_rssi(dev, 0, offset[i], core, rail,
 						type);
-- 
1.7.10.4
