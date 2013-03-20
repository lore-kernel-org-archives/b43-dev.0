From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:48 +0100
Subject: [PATCH 2/6] b43: N-PHY: simplify conditions in RSSI offset scale
 function
In-Reply-To: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
References: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363803352-12459-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |  120 +++++++++++++++++++++-----------------
 1 file changed, 65 insertions(+), 55 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 0a8165de..efc6012 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1214,7 +1214,7 @@ static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
 static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 					s8 offset, u8 core,
 				        enum n_rail_type rail,
-					enum b43_nphy_rssi_type type)
+					enum b43_nphy_rssi_type rssi_type)
 {
 	u16 tmp;
 	bool core1or5 = (core == 1) || (core == 5);
@@ -1223,60 +1223,70 @@ static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
 	offset = clamp_val(offset, -32, 31);
 	tmp = ((scale & 0x3F) << 8) | (offset & 0x3F);
 
-	if (core1or5 && (rail == 0) && (type == B43_NPHY_RSSI_Z))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Z, tmp);
-	if (core1or5 && (rail == 1) && (type == B43_NPHY_RSSI_Z))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z, tmp);
-	if (core2or5 && (rail == 0) && (type == B43_NPHY_RSSI_Z))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Z, tmp);
-	if (core2or5 && (rail == 1) && (type == B43_NPHY_RSSI_Z))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Z, tmp);
-
-	if (core1or5 && (rail == 0) && (type == B43_NPHY_RSSI_X))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_X, tmp);
-	if (core1or5 && (rail == 1) && (type == B43_NPHY_RSSI_X))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_X, tmp);
-	if (core2or5 && (rail == 0) && (type == B43_NPHY_RSSI_X))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_X, tmp);
-	if (core2or5 && (rail == 1) && (type == B43_NPHY_RSSI_X))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_X, tmp);
-
-	if (core1or5 && (rail == 0) && (type == B43_NPHY_RSSI_Y))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Y, tmp);
-	if (core1or5 && (rail == 1) && (type == B43_NPHY_RSSI_Y))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Y, tmp);
-	if (core2or5 && (rail == 0) && (type == B43_NPHY_RSSI_Y))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Y, tmp);
-	if (core2or5 && (rail == 1) && (type == B43_NPHY_RSSI_Y))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Y, tmp);
-
-	if (core1or5 && (rail == 0) && (type == B43_NPHY_RSSI_TBD))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TBD, tmp);
-	if (core1or5 && (rail == 1) && (type == B43_NPHY_RSSI_TBD))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TBD, tmp);
-	if (core2or5 && (rail == 0) && (type == B43_NPHY_RSSI_TBD))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TBD, tmp);
-	if (core2or5 && (rail == 1) && (type == B43_NPHY_RSSI_TBD))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TBD, tmp);
-
-	if (core1or5 && (rail == 0) && (type == B43_NPHY_RSSI_PWRDET))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_PWRDET, tmp);
-	if (core1or5 && (rail == 1) && (type == B43_NPHY_RSSI_PWRDET))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_PWRDET, tmp);
-	if (core2or5 && (rail == 0) && (type == B43_NPHY_RSSI_PWRDET))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_PWRDET, tmp);
-	if (core2or5 && (rail == 1) && (type == B43_NPHY_RSSI_PWRDET))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_PWRDET, tmp);
-
-	if (core1or5 && (type == B43_NPHY_RSSI_TSSI_I))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TSSI, tmp);
-	if (core2or5 && (type == B43_NPHY_RSSI_TSSI_I))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TSSI, tmp);
-
-	if (core1or5 && (type == B43_NPHY_RSSI_TSSI_Q))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TSSI, tmp);
-	if (core2or5 && (type == B43_NPHY_RSSI_TSSI_Q))
-		b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TSSI, tmp);
+	switch (rssi_type) {
+	case B43_NPHY_RSSI_Z:
+		if (core1or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Z, tmp);
+		if (core1or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z, tmp);
+		if (core2or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Z, tmp);
+		if (core2or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Z, tmp);
+		break;
+	case B43_NPHY_RSSI_X:
+		if (core1or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_X, tmp);
+		if (core1or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_X, tmp);
+		if (core2or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_X, tmp);
+		if (core2or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_X, tmp);
+		break;
+	case B43_NPHY_RSSI_Y:
+		if (core1or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Y, tmp);
+		if (core1or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Y, tmp);
+		if (core2or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Y, tmp);
+		if (core2or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Y, tmp);
+		break;
+	case B43_NPHY_RSSI_TBD:
+		if (core1or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TBD, tmp);
+		if (core1or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TBD, tmp);
+		if (core2or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TBD, tmp);
+		if (core2or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TBD, tmp);
+		break;
+	case B43_NPHY_RSSI_PWRDET:
+		if (core1or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_PWRDET, tmp);
+		if (core1or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_PWRDET, tmp);
+		if (core2or5 && rail == N_RAIL_I)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_PWRDET, tmp);
+		if (core2or5 && rail == N_RAIL_Q)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_PWRDET, tmp);
+		break;
+	case B43_NPHY_RSSI_TSSI_I:
+		if (core1or5)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TSSI, tmp);
+		if (core2or5)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TSSI, tmp);
+		break;
+	case B43_NPHY_RSSI_TSSI_Q:
+		if (core1or5)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TSSI, tmp);
+		if (core2or5)
+			b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TSSI, tmp);
+		break;
+	}
 }
 
 static void b43_nphy_rev3_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
-- 
1.7.10.4
