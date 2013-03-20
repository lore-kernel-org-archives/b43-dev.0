From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:51 +0100
Subject: [PATCH 5/6] b43: N-PHY: use enum for RSSI type everywhere we use it
In-Reply-To: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
References: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363803352-12459-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |  104 ++++++++++++++++++++++----------------
 1 file changed, 61 insertions(+), 43 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 1cf86ef..dbc6276 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1289,7 +1289,8 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 	}
 }
 
-static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
+static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code,
+				      enum n_rssi_type rssi_type)
 {
 	u8 i;
 	u16 reg, val;
@@ -1312,7 +1313,9 @@ static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 				B43_NPHY_AFECTL_OVER1 : B43_NPHY_AFECTL_OVER;
 			b43_phy_maskset(dev, reg, 0xFDFF, 0x0200);
 
-			if (type < 3) {
+			if (rssi_type == N_RSSI_W1 ||
+			    rssi_type == N_RSSI_W2 ||
+			    rssi_type == N_RSSI_NB) {
 				reg = (i == 0) ?
 					B43_NPHY_AFECTL_C1 :
 					B43_NPHY_AFECTL_C2;
@@ -1323,9 +1326,9 @@ static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 					B43_NPHY_RFCTL_LUT_TRSW_UP2;
 				b43_phy_maskset(dev, reg, 0xFFC3, 0);
 
-				if (type == 0)
+				if (rssi_type == N_RSSI_W1)
 					val = (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) ? 4 : 8;
-				else if (type == 1)
+				else if (rssi_type == N_RSSI_W2)
 					val = 16;
 				else
 					val = 32;
@@ -1336,9 +1339,9 @@ static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 					B43_NPHY_TXF_40CO_B32S1;
 				b43_phy_set(dev, reg, 0x0020);
 			} else {
-				if (type == 6)
+				if (rssi_type == N_RSSI_TBD)
 					val = 0x0100;
-				else if (type == 3)
+				else if (rssi_type == N_RSSI_IQ)
 					val = 0x0200;
 				else
 					val = 0x0300;
@@ -1350,7 +1353,8 @@ static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 				b43_phy_maskset(dev, reg, 0xFCFF, val);
 				b43_phy_maskset(dev, reg, 0xF3FF, val << 2);
 
-				if (type != 3 && type != 6) {
+				if (rssi_type != N_RSSI_IQ &&
+				    rssi_type != N_RSSI_TBD) {
 					enum ieee80211_band band =
 						b43_current_band(dev->wl);
 
@@ -1372,33 +1376,43 @@ static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 	}
 }
 
-static void b43_nphy_rev2_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
+static void b43_nphy_rev2_rssi_select(struct b43_wldev *dev, u8 code,
+				      enum n_rssi_type rssi_type)
 {
 	u16 val;
+	bool rssi_w1_w2_nb = false;
 
-	if (type < 3)
+	switch (rssi_type) {
+	case N_RSSI_W1:
+	case N_RSSI_W2:
+	case N_RSSI_NB:
 		val = 0;
-	else if (type == 6)
+		rssi_w1_w2_nb = true;
+		break;
+	case N_RSSI_TBD:
 		val = 1;
-	else if (type == 3)
+		break;
+	case N_RSSI_IQ:
 		val = 2;
-	else
+		break;
+	default:
 		val = 3;
+	}
 
 	val = (val << 12) | (val << 14);
 	b43_phy_maskset(dev, B43_NPHY_AFECTL_C1, 0x0FFF, val);
 	b43_phy_maskset(dev, B43_NPHY_AFECTL_C2, 0x0FFF, val);
 
-	if (type < 3) {
+	if (rssi_w1_w2_nb) {
 		b43_phy_maskset(dev, B43_NPHY_RFCTL_RSSIO1, 0xFFCF,
-				(type + 1) << 4);
+				(rssi_type + 1) << 4);
 		b43_phy_maskset(dev, B43_NPHY_RFCTL_RSSIO2, 0xFFCF,
-				(type + 1) << 4);
+				(rssi_type + 1) << 4);
 	}
 
 	if (code == 0) {
 		b43_phy_mask(dev, B43_NPHY_AFECTL_OVER, ~0x3000);
-		if (type < 3) {
+		if (rssi_w1_w2_nb) {
 			b43_phy_mask(dev, B43_NPHY_RFCTL_CMD,
 				~(B43_NPHY_RFCTL_CMD_RXEN |
 				  B43_NPHY_RFCTL_CMD_CORESEL));
@@ -1414,7 +1428,7 @@ static void b43_nphy_rev2_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 		}
 	} else {
 		b43_phy_set(dev, B43_NPHY_AFECTL_OVER, 0x3000);
-		if (type < 3) {
+		if (rssi_w1_w2_nb) {
 			b43_phy_maskset(dev, B43_NPHY_RFCTL_CMD,
 				~(B43_NPHY_RFCTL_CMD_RXEN |
 				  B43_NPHY_RFCTL_CMD_CORESEL),
@@ -1434,7 +1448,8 @@ static void b43_nphy_rev2_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RSSISel */
-static void b43_nphy_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
+static void b43_nphy_rssi_select(struct b43_wldev *dev, u8 code,
+				 enum n_rssi_type type)
 {
 	if (dev->phy.rev >= 3)
 		b43_nphy_rev3_rssi_select(dev, code, type);
@@ -1443,11 +1458,12 @@ static void b43_nphy_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/SetRssi2055Vcm */
-static void b43_nphy_set_rssi_2055_vcm(struct b43_wldev *dev, u8 type, u8 *buf)
+static void b43_nphy_set_rssi_2055_vcm(struct b43_wldev *dev,
+				       enum n_rssi_type rssi_type, u8 *buf)
 {
 	int i;
 	for (i = 0; i < 2; i++) {
-		if (type == 2) {
+		if (rssi_type == N_RSSI_NB) {
 			if (i == 0) {
 				b43_radio_maskset(dev, B2055_C1_B0NB_RSSIVCM,
 						  0xFC, buf[0]);
@@ -1471,8 +1487,8 @@ static void b43_nphy_set_rssi_2055_vcm(struct b43_wldev *dev, u8 type, u8 *buf)
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/PollRssi */
-static int b43_nphy_poll_rssi(struct b43_wldev *dev, u8 type, s32 *buf,
-				u8 nsamp)
+static int b43_nphy_poll_rssi(struct b43_wldev *dev, enum n_rssi_type rssi_type,
+			      s32 *buf, u8 nsamp)
 {
 	int i;
 	int out;
@@ -1503,7 +1519,7 @@ static int b43_nphy_poll_rssi(struct b43_wldev *dev, u8 type, s32 *buf,
 		save_regs_phy[8] = 0;
 	}
 
-	b43_nphy_rssi_select(dev, 5, type);
+	b43_nphy_rssi_select(dev, 5, rssi_type);
 
 	if (dev->phy.rev < 2) {
 		save_regs_phy[8] = b43_phy_read(dev, B43_NPHY_GPIO_SEL);
@@ -1622,14 +1638,16 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		if (!(rx_core_state & (1 << core)))
 			continue;
 		r = core ? B2056_RX1 : B2056_RX0;
-		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_I, 2);
-		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_Q, 2);
+		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_I,
+					   N_RSSI_NB);
+		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_Q,
+					   N_RSSI_NB);
 
 		/* Grab RSSI results for every possible VCM */
 		for (vcm = 0; vcm < 8; vcm++) {
 			b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC, 0xE3,
 					vcm << 2);
-			b43_nphy_poll_rssi(dev, 2, results[vcm], 8);
+			b43_nphy_poll_rssi(dev, N_RSSI_NB, results[vcm], 8);
 		}
 
 		/* Find out which VCM got the best results */
@@ -1671,7 +1689,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 			b43_nphy_scale_offset_rssi(dev, 0, offset[i],
 						   (i / 2 == 0) ? 1 : 2,
 						   (i % 2 == 0) ? N_RAIL_I : N_RAIL_Q,
-						   2);
+						   N_RSSI_NB);
 		}
 	}
 
@@ -1749,7 +1767,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RSSICal */
-static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
+static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, enum n_rssi_type type)
 {
 	int i, j, vcm;
 	u8 state[4];
@@ -1769,10 +1787,10 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 	s32 results[4][4] = { };
 	s32 miniq[4][2] = { };
 
-	if (type == 2) {
+	if (type == N_RSSI_NB) {
 		code = 0;
 		val = 6;
-	} else if (type < 2) {
+	} else if (type == N_RSSI_W1 || type == N_RSSI_W2) {
 		code = 25;
 		val = 4;
 	} else {
@@ -1815,10 +1833,10 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 		u8 tmp[4];
 		for (j = 0; j < 4; j++)
 			tmp[j] = vcm;
-		if (type != 1)
+		if (type != N_RSSI_W2)
 			b43_nphy_set_rssi_2055_vcm(dev, type, tmp);
 		b43_nphy_poll_rssi(dev, type, results[vcm], 8);
-		if (type < 2)
+		if (type == N_RSSI_W1 || type == N_RSSI_W2)
 			for (j = 0; j < 2; j++)
 				miniq[vcm][j] = min(results[vcm][2 * j],
 						    results[vcm][2 * j + 1]);
@@ -1830,7 +1848,7 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 		s32 minpoll = 249;
 		s32 currd;
 		for (vcm = 0; vcm < 4; vcm++) {
-			if (type == 2)
+			if (type == N_RSSI_NB)
 				currd = abs(results[vcm][i]);
 			else
 				currd = abs(miniq[vcm][i / 2] - code * 8);
@@ -1847,7 +1865,7 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 		vcm_final[i] = minvcm;
 	}
 
-	if (type != 1)
+	if (type != N_RSSI_W2)
 		b43_nphy_set_rssi_2055_vcm(dev, type, vcm_final);
 
 	for (i = 0; i < 4; i++) {
@@ -1873,28 +1891,28 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 
 	switch (state[2]) {
 	case 1:
-		b43_nphy_rssi_select(dev, 1, 2);
+		b43_nphy_rssi_select(dev, 1, N_RSSI_NB);
 		break;
 	case 4:
-		b43_nphy_rssi_select(dev, 1, 0);
+		b43_nphy_rssi_select(dev, 1, N_RSSI_W1);
 		break;
 	case 2:
-		b43_nphy_rssi_select(dev, 1, 1);
+		b43_nphy_rssi_select(dev, 1, N_RSSI_W2);
 		break;
 	default:
-		b43_nphy_rssi_select(dev, 1, 1);
+		b43_nphy_rssi_select(dev, 1, N_RSSI_W2);
 		break;
 	}
 
 	switch (state[3]) {
 	case 1:
-		b43_nphy_rssi_select(dev, 2, 2);
+		b43_nphy_rssi_select(dev, 2, N_RSSI_NB);
 		break;
 	case 4:
-		b43_nphy_rssi_select(dev, 2, 0);
+		b43_nphy_rssi_select(dev, 2, N_RSSI_W1);
 		break;
 	default:
-		b43_nphy_rssi_select(dev, 2, 1);
+		b43_nphy_rssi_select(dev, 2, N_RSSI_W2);
 		break;
 	}
 
@@ -3157,9 +3175,9 @@ static void b43_nphy_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 	b43_nphy_stop_playback(dev);
 	b43_nphy_tx_tone(dev, 0xFA0, 0, false, false);
 	udelay(20);
-	tmp = b43_nphy_poll_rssi(dev, 4, rssi, 1);
+	tmp = b43_nphy_poll_rssi(dev, N_RSSI_TSSI_2G, rssi, 1);
 	b43_nphy_stop_playback(dev);
-	b43_nphy_rssi_select(dev, 0, 0);
+	b43_nphy_rssi_select(dev, 0, N_RSSI_W1);
 
 	if (phy->rev >= 7)
 		b43_nphy_rf_control_override_rev7(dev, 0x2000, 0, 3, true, 0);
-- 
1.7.10.4
