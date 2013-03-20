From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:49 +0100
Subject: [PATCH 3/6] b43: N-PHY: use more friendly variables names in RSSI code
In-Reply-To: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
References: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363803352-12459-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |   64 +++++++++++++++++++++-----------------
 1 file changed, 36 insertions(+), 28 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index efc6012..273eb65 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1590,7 +1590,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 
 	u16 r; /* routing */
 	u8 rx_core_state;
-	u8 core, i, j;
+	int core, i, j, vcm;
 
 	class = b43_nphy_classifier(dev, 0, 0);
 	b43_nphy_classifier(dev, 7, 4);
@@ -1624,33 +1624,40 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		r = core ? B2056_RX1 : B2056_RX0;
 		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_I, 2);
 		b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, N_RAIL_Q, 2);
-		for (i = 0; i < 8; i++) {
+
+		/* Grab RSSI results for every possible VCM */
+		for (vcm = 0; vcm < 8; vcm++) {
 			b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC, 0xE3,
-					i << 2);
-			b43_nphy_poll_rssi(dev, 2, results[i], 8);
+					vcm << 2);
+			b43_nphy_poll_rssi(dev, 2, results[vcm], 8);
 		}
+
+		/* Find out which VCM got the best results */
 		for (i = 0; i < 4; i += 2) {
-			s32 curr;
+			s32 currd;
 			s32 mind = 0x100000;
 			s32 minpoll = 249;
 			u8 minvcm = 0;
 			if (2 * core != i)
 				continue;
-			for (j = 0; j < 8; j++) {
-				curr = results[j][i] * results[j][i] +
-					results[j][i + 1] * results[j][i];
-				if (curr < mind) {
-					mind = curr;
-					minvcm = j;
+			for (vcm = 0; vcm < 8; vcm++) {
+				currd = results[vcm][i] * results[vcm][i] +
+					results[vcm][i + 1] * results[vcm][i];
+				if (currd < mind) {
+					mind = currd;
+					minvcm = vcm;
 				}
-				if (results[j][i] < minpoll)
-					minpoll = results[j][i];
+				if (results[vcm][i] < minpoll)
+					minpoll = results[vcm][i];
 			}
 			vcm_final = minvcm;
 			results_min[i] = minpoll;
 		}
+
+		/* Select the best VCM */
 		b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC, 0xE3,
 				  vcm_final << 2);
+
 		for (i = 0; i < 4; i++) {
 			if (core != i / 2)
 				continue;
@@ -1667,6 +1674,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 						   2);
 		}
 	}
+
 	for (core = 0; core < 2; core++) {
 		if (!(rx_core_state & (1 << core)))
 			continue;
@@ -1743,7 +1751,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RSSICal */
 static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 {
-	int i, j;
+	int i, j, vcm;
 	u8 state[4];
 	u8 code, val;
 	u16 class, override;
@@ -1803,37 +1811,37 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, N_RAIL_I, type);
 	b43_nphy_scale_offset_rssi(dev, 0, 0, 5, N_RAIL_Q, type);
 
-	for (i = 0; i < 4; i++) {
+	for (vcm = 0; vcm < 4; vcm++) {
 		u8 tmp[4];
 		for (j = 0; j < 4; j++)
-			tmp[j] = i;
+			tmp[j] = vcm;
 		if (type != 1)
 			b43_nphy_set_rssi_2055_vcm(dev, type, tmp);
-		b43_nphy_poll_rssi(dev, type, results[i], 8);
+		b43_nphy_poll_rssi(dev, type, results[vcm], 8);
 		if (type < 2)
 			for (j = 0; j < 2; j++)
-				miniq[i][j] = min(results[i][2 * j],
-						results[i][2 * j + 1]);
+				miniq[vcm][j] = min(results[vcm][2 * j],
+						    results[vcm][2 * j + 1]);
 	}
 
 	for (i = 0; i < 4; i++) {
 		s32 mind = 0x100000;
 		u8 minvcm = 0;
 		s32 minpoll = 249;
-		s32 curr;
-		for (j = 0; j < 4; j++) {
+		s32 currd;
+		for (vcm = 0; vcm < 4; vcm++) {
 			if (type == 2)
-				curr = abs(results[j][i]);
+				currd = abs(results[vcm][i]);
 			else
-				curr = abs(miniq[j][i / 2] - code * 8);
+				currd = abs(miniq[vcm][i / 2] - code * 8);
 
-			if (curr < mind) {
-				mind = curr;
-				minvcm = j;
+			if (currd < mind) {
+				mind = currd;
+				minvcm = vcm;
 			}
 
-			if (results[j][i] < minpoll)
-				minpoll = results[j][i];
+			if (results[vcm][i] < minpoll)
+				minpoll = results[vcm][i];
 		}
 		results_min[i] = minpoll;
 		vcm_final[i] = minvcm;
-- 
1.7.10.4
