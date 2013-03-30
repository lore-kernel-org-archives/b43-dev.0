From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:22 +0100
Subject: [PATCH 3/6] b43: N-PHY: use enum for INTC override function argument
In-Reply-To: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
References: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
Message-ID: <1364687185-27329-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Also make a function name shorter so we can easily fit 80 chars.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   46 +++++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 8f730c5..418d967 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -69,6 +69,14 @@ enum b43_nphy_rf_sequence {
 	B43_RFSEQ_UPDATE_GAINU,
 };
 
+enum n_intc_override {
+	N_INTC_OVERRIDE_OFF = 0,
+	N_INTC_OVERRIDE_TRSW = 1,
+	N_INTC_OVERRIDE_PA = 2,
+	N_INTC_OVERRIDE_EXT_LNA_PU = 3,
+	N_INTC_OVERRIDE_EXT_LNA_GAIN = 4,
+};
+
 enum n_rssi_type {
 	N_RSSI_W1 = 0,
 	N_RSSI_W2,
@@ -99,7 +107,7 @@ static u8 b43_nphy_get_rx_core_state(struct b43_wldev *dev)
 }
 
 /**************************************************
- * RF (just without b43_nphy_rf_control_intc_override)
+ * RF (just without b43_nphy_rf_ctl_intc_override)
  **************************************************/
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/ForceRFSeq */
@@ -249,14 +257,14 @@ static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RFCtrlIntcOverride */
-static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
-						u16 value, u8 core)
+static void b43_nphy_rf_ctl_intc_override(struct b43_wldev *dev,
+					  enum n_intc_override intc_override,
+					  u16 value, u8 core)
 {
 	u8 i, j;
 	u16 reg, tmp, val;
 
 	B43_WARN_ON(dev->phy.rev < 3);
-	B43_WARN_ON(field > 4);
 
 	for (i = 0; i < 2; i++) {
 		if ((core == 1 && i == 1) || (core == 2 && !i))
@@ -266,12 +274,12 @@ static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 			B43_NPHY_RFCTL_INTC1 : B43_NPHY_RFCTL_INTC2;
 		b43_phy_set(dev, reg, 0x400);
 
-		switch (field) {
-		case 0:
+		switch (intc_override) {
+		case N_INTC_OVERRIDE_OFF:
 			b43_phy_write(dev, reg, 0);
 			b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);
 			break;
-		case 1:
+		case N_INTC_OVERRIDE_TRSW:
 			if (!i) {
 				b43_phy_maskset(dev, B43_NPHY_RFCTL_INTC1,
 						0xFC3F, (value << 6));
@@ -312,7 +320,7 @@ static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 						0xFFFE);
 			}
 			break;
-		case 2:
+		case N_INTC_OVERRIDE_PA:
 			if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
 				tmp = 0x0020;
 				val = value << 5;
@@ -322,7 +330,7 @@ static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 			}
 			b43_phy_maskset(dev, reg, ~tmp, val);
 			break;
-		case 3:
+		case N_INTC_OVERRIDE_EXT_LNA_PU:
 			if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
 				tmp = 0x0001;
 				val = value;
@@ -332,7 +340,7 @@ static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 			}
 			b43_phy_maskset(dev, reg, ~tmp, val);
 			break;
-		case 4:
+		case N_INTC_OVERRIDE_EXT_LNA_GAIN:
 			if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
 				tmp = 0x0002;
 				val = value << 1;
@@ -1618,8 +1626,8 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 	for (i = 0; i < ARRAY_SIZE(regs_to_store); i++)
 		saved_regs_phy[i] = b43_phy_read(dev, regs_to_store[i]);
 
-	b43_nphy_rf_control_intc_override(dev, 0, 0, 7);
-	b43_nphy_rf_control_intc_override(dev, 1, 1, 7);
+	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_OFF, 0, 7);
+	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 1, 7);
 	b43_nphy_rf_control_override(dev, 0x1, 0, 0, false);
 	b43_nphy_rf_control_override(dev, 0x2, 1, 0, false);
 	b43_nphy_rf_control_override(dev, 0x80, 1, 0, false);
@@ -3619,7 +3627,7 @@ static void b43_nphy_rx_cal_phy_setup(struct b43_wldev *dev, u8 core)
 		b43_phy_set(dev, B43_NPHY_AFECTL_OVER, 0x0007);
 	}
 
-	b43_nphy_rf_control_intc_override(dev, 2, 0, 3);
+	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_PA, 0, 3);
 	b43_nphy_rf_control_override(dev, 8, 0, 3, false);
 	b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RX2TX);
 
@@ -3630,8 +3638,10 @@ static void b43_nphy_rx_cal_phy_setup(struct b43_wldev *dev, u8 core)
 		rxval = 4;
 		txval = 2;
 	}
-	b43_nphy_rf_control_intc_override(dev, 1, rxval, (core + 1));
-	b43_nphy_rf_control_intc_override(dev, 1, txval, (2 - core));
+	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, rxval,
+				      core + 1);
+	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, txval,
+				      2 - core);
 }
 #endif
 
@@ -4190,9 +4200,9 @@ static void b43_nphy_tx_cal_phy_setup(struct b43_wldev *dev)
 		regs[7] = b43_phy_read(dev, B43_NPHY_RFCTL_INTC1);
 		regs[8] = b43_phy_read(dev, B43_NPHY_RFCTL_INTC2);
 
-		b43_nphy_rf_control_intc_override(dev, 2, 1, 3);
-		b43_nphy_rf_control_intc_override(dev, 1, 2, 1);
-		b43_nphy_rf_control_intc_override(dev, 1, 8, 2);
+		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_PA, 1, 3);
+		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 2, 1);
+		b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 8, 2);
 
 		regs[9] = b43_phy_read(dev, B43_NPHY_PAPD_EN0);
 		regs[10] = b43_phy_read(dev, B43_NPHY_PAPD_EN1);
-- 
1.7.10.4
