From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:23 +0100
Subject: [PATCH 4/6] b43: N-PHY: use shortcut "ctl" in functions names
In-Reply-To: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
References: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
Message-ID: <1364687185-27329-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |   44 +++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 418d967..5e6c319 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -141,9 +141,9 @@ ok:
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RFCtrlOverrideRev7 */
-static void b43_nphy_rf_control_override_rev7(struct b43_wldev *dev, u16 field,
-					      u16 value, u8 core, bool off,
-					      u8 override)
+static void b43_nphy_rf_ctl_override_rev7(struct b43_wldev *dev, u16 field,
+					  u16 value, u8 core, bool off,
+					  u8 override)
 {
 	const struct nphy_rf_control_override_rev7 *e;
 	u16 en_addrs[3][2] = {
@@ -181,8 +181,8 @@ static void b43_nphy_rf_control_override_rev7(struct b43_wldev *dev, u16 field,
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/RFCtrlOverride */
-static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
-						u16 value, u8 core, bool off)
+static void b43_nphy_rf_ctl_override(struct b43_wldev *dev, u16 field,
+				     u16 value, u8 core, bool off)
 {
 	int i;
 	u8 index = fls(field);
@@ -1628,17 +1628,17 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 
 	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_OFF, 0, 7);
 	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_TRSW, 1, 7);
-	b43_nphy_rf_control_override(dev, 0x1, 0, 0, false);
-	b43_nphy_rf_control_override(dev, 0x2, 1, 0, false);
-	b43_nphy_rf_control_override(dev, 0x80, 1, 0, false);
-	b43_nphy_rf_control_override(dev, 0x40, 1, 0, false);
+	b43_nphy_rf_ctl_override(dev, 0x1, 0, 0, false);
+	b43_nphy_rf_ctl_override(dev, 0x2, 1, 0, false);
+	b43_nphy_rf_ctl_override(dev, 0x80, 1, 0, false);
+	b43_nphy_rf_ctl_override(dev, 0x40, 1, 0, false);
 
 	if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
-		b43_nphy_rf_control_override(dev, 0x20, 0, 0, false);
-		b43_nphy_rf_control_override(dev, 0x10, 1, 0, false);
+		b43_nphy_rf_ctl_override(dev, 0x20, 0, 0, false);
+		b43_nphy_rf_ctl_override(dev, 0x10, 1, 0, false);
 	} else {
-		b43_nphy_rf_control_override(dev, 0x10, 0, 0, false);
-		b43_nphy_rf_control_override(dev, 0x20, 1, 0, false);
+		b43_nphy_rf_ctl_override(dev, 0x10, 0, 0, false);
+		b43_nphy_rf_ctl_override(dev, 0x20, 1, 0, false);
 	}
 
 	rx_core_state = b43_nphy_get_rx_core_state(dev);
@@ -2310,11 +2310,11 @@ static void b43_nphy_workarounds_rev7plus(struct b43_wldev *dev)
 			b43_ntab_write(dev, B43_NTAB16(7, 0x159 + core * 16),
 				       rx2tx_lut_40_11n);
 		}
-		b43_nphy_rf_control_override_rev7(dev, 16, 1, 3, false, 2);
+		b43_nphy_rf_ctl_override_rev7(dev, 16, 1, 3, false, 2);
 	}
 	b43_phy_write(dev, 0x32F, 0x3);
 	if (phy->radio_rev == 4 || phy->radio_rev == 6)
-		b43_nphy_rf_control_override_rev7(dev, 4, 1, 3, false, 0);
+		b43_nphy_rf_ctl_override_rev7(dev, 4, 1, 3, false, 0);
 
 	if (phy->radio_rev == 3 || phy->radio_rev == 4 || phy->radio_rev == 6) {
 		if (sprom->revision &&
@@ -3174,9 +3174,9 @@ static void b43_nphy_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 		b43_nphy_ipa_internal_tssi_setup(dev);
 
 	if (phy->rev >= 7)
-		b43_nphy_rf_control_override_rev7(dev, 0x2000, 0, 3, false, 0);
+		b43_nphy_rf_ctl_override_rev7(dev, 0x2000, 0, 3, false, 0);
 	else if (phy->rev >= 3)
-		b43_nphy_rf_control_override(dev, 0x2000, 0, 3, false);
+		b43_nphy_rf_ctl_override(dev, 0x2000, 0, 3, false);
 
 	b43_nphy_stop_playback(dev);
 	b43_nphy_tx_tone(dev, 0xFA0, 0, false, false);
@@ -3186,9 +3186,9 @@ static void b43_nphy_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 	b43_nphy_rssi_select(dev, 0, N_RSSI_W1);
 
 	if (phy->rev >= 7)
-		b43_nphy_rf_control_override_rev7(dev, 0x2000, 0, 3, true, 0);
+		b43_nphy_rf_ctl_override_rev7(dev, 0x2000, 0, 3, true, 0);
 	else if (phy->rev >= 3)
-		b43_nphy_rf_control_override(dev, 0x2000, 0, 3, true);
+		b43_nphy_rf_ctl_override(dev, 0x2000, 0, 3, true);
 
 	if (phy->rev >= 3) {
 		nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 24) & 0xFF;
@@ -3628,7 +3628,7 @@ static void b43_nphy_rx_cal_phy_setup(struct b43_wldev *dev, u8 core)
 	}
 
 	b43_nphy_rf_ctl_intc_override(dev, N_INTC_OVERRIDE_PA, 0, 3);
-	b43_nphy_rf_control_override(dev, 8, 0, 3, false);
+	b43_nphy_rf_ctl_override(dev, 8, 0, 3, false);
 	b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RX2TX);
 
 	if (core == 0) {
@@ -4735,7 +4735,7 @@ static int b43_nphy_rev2_cal_rx_iq(struct b43_wldev *dev,
 
 			tmp[0] = ((cur_hpf2 << 8) | (cur_hpf1 << 4) |
 					(cur_lna << 2));
-			b43_nphy_rf_control_override(dev, 0x400, tmp[0], 3,
+			b43_nphy_rf_ctl_override(dev, 0x400, tmp[0], 3,
 									false);
 			b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);
 			b43_nphy_stop_playback(dev);
@@ -4784,7 +4784,7 @@ static int b43_nphy_rev2_cal_rx_iq(struct b43_wldev *dev,
 			break;
 	}
 
-	b43_nphy_rf_control_override(dev, 0x400, 0, 3, true);
+	b43_nphy_rf_ctl_override(dev, 0x400, 0, 3, true);
 	b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);
 	b43_ntab_write_bulk(dev, B43_NTAB16(7, 0x110), 2, gain_save);
 
-- 
1.7.10.4
