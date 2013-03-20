From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:50 +0100
Subject: [PATCH 4/6] b43: N-PHY: rename RSSI types to be shorter and more
 accurate
In-Reply-To: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
References: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363803352-12459-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Thanks to Broadcom releasing some code we can use better names.
---
 drivers/net/wireless/b43/phy_n.c |   38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 273eb65..1cf86ef 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -69,14 +69,14 @@ enum b43_nphy_rf_sequence {
 	B43_RFSEQ_UPDATE_GAINU,
 };
 
-enum b43_nphy_rssi_type {
-	B43_NPHY_RSSI_X = 0,
-	B43_NPHY_RSSI_Y,
-	B43_NPHY_RSSI_Z,
-	B43_NPHY_RSSI_PWRDET,
-	B43_NPHY_RSSI_TSSI_I,
-	B43_NPHY_RSSI_TSSI_Q,
-	B43_NPHY_RSSI_TBD,
+enum n_rssi_type {
+	N_RSSI_W1 = 0,
+	N_RSSI_W2,
+	N_RSSI_NB,
+	N_RSSI_IQ,
+	N_RSSI_TSSI_2G,
+	N_RSSI_TSSI_5G,
+	N_RSSI_TBD,
 };
 
 enum n_rail_type {
@@ -1214,7 +1214,7 @@ static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
 static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 					s8 offset, u8 core,
 				        enum n_rail_type rail,
-					enum b43_nphy_rssi_type rssi_type)
+					enum n_rssi_type rssi_type)
 {
 	u16 tmp;
 	bool core1or5 = (core == 1) || (core == 5);
@@ -1224,7 +1224,7 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 	tmp = ((scale & 0x3F) << 8) | (offset & 0x3F);
 
 	switch (rssi_type) {
-	case B43_NPHY_RSSI_Z:
+	case N_RSSI_NB:
 		if (core1or5 && rail == N_RAIL_I)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Z, tmp);
 		if (core1or5 && rail == N_RAIL_Q)
@@ -1234,7 +1234,7 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 		if (core2or5 && rail == N_RAIL_Q)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Z, tmp);
 		break;
-	case B43_NPHY_RSSI_X:
+	case N_RSSI_W1:
 		if (core1or5 && rail == N_RAIL_I)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_X, tmp);
 		if (core1or5 && rail == N_RAIL_Q)
@@ -1244,7 +1244,7 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 		if (core2or5 && rail == N_RAIL_Q)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_X, tmp);
 		break;
-	case B43_NPHY_RSSI_Y:
+	case N_RSSI_W2:
 		if (core1or5 && rail == N_RAIL_I)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Y, tmp);
 		if (core1or5 && rail == N_RAIL_Q)
@@ -1254,7 +1254,7 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 		if (core2or5 && rail == N_RAIL_Q)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Y, tmp);
 		break;
-	case B43_NPHY_RSSI_TBD:
+	case N_RSSI_TBD:
 		if (core1or5 && rail == N_RAIL_I)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TBD, tmp);
 		if (core1or5 && rail == N_RAIL_Q)
@@ -1264,7 +1264,7 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 		if (core2or5 && rail == N_RAIL_Q)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TBD, tmp);
 		break;
-	case B43_NPHY_RSSI_PWRDET:
+	case N_RSSI_IQ:
 		if (core1or5 && rail == N_RAIL_I)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_PWRDET, tmp);
 		if (core1or5 && rail == N_RAIL_Q)
@@ -1274,13 +1274,13 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 		if (core2or5 && rail == N_RAIL_Q)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_PWRDET, tmp);
 		break;
-	case B43_NPHY_RSSI_TSSI_I:
+	case N_RSSI_TSSI_2G:
 		if (core1or5)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TSSI, tmp);
 		if (core2or5)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TSSI, tmp);
 		break;
-	case B43_NPHY_RSSI_TSSI_Q:
+	case N_RSSI_TSSI_5G:
 		if (core1or5)
 			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TSSI, tmp);
 		if (core2or5)
@@ -1921,9 +1921,9 @@ static void b43_nphy_rssi_cal(struct b43_wldev *dev)
 	if (dev->phy.rev >= 3) {
 		b43_nphy_rev3_rssi_cal(dev);
 	} else {
-		b43_nphy_rev2_rssi_cal(dev, B43_NPHY_RSSI_Z);
-		b43_nphy_rev2_rssi_cal(dev, B43_NPHY_RSSI_X);
-		b43_nphy_rev2_rssi_cal(dev, B43_NPHY_RSSI_Y);
+		b43_nphy_rev2_rssi_cal(dev, N_RSSI_NB);
+		b43_nphy_rev2_rssi_cal(dev, N_RSSI_W1);
+		b43_nphy_rev2_rssi_cal(dev, N_RSSI_W2);
 	}
 }
 
-- 
1.7.10.4
