From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 19 Jul 2014 12:52:42 +0200
Subject: [PATCH 2/7] b43: N-PHY: update digital filters setup
In-Reply-To: <1405767167-30315-1-git-send-email-zajec5@gmail.com>
References: <1405767167-30315-1-git-send-email-zajec5@gmail.com>
Message-ID: <1405767167-30315-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This fixes handling channel 14 and adds code for BCM43217.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index b5c8a81..1293f51 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -4832,23 +4832,38 @@ static void b43_nphy_int_pa_set_tx_dig_filters(struct b43_wldev *dev)
 {
 	/* B43_NPHY_TXF_20CO_S0A1, B43_NPHY_TXF_40CO_S0A1, unknown */
 	static const u16 offset[] = { 0x186, 0x195, 0x2C5 };
+	static const s16 dig_filter_phy_rev16[] = {
+		-375, 136, -407, 208, -1527,
+		956, 93, 186, 93, 230,
+		-44, 230, 201, -191, 201,
+	};
 	int i;
 
 	for (i = 0; i < 3; i++)
 		b43_nphy_pa_set_tx_dig_filter(dev, offset[i],
 					      tbl_tx_filter_coef_rev4[i]);
 
+	/* Verified with BCM43227 and BCM43228 */
+	if (dev->phy.rev == 16)
+		b43_nphy_pa_set_tx_dig_filter(dev, 0x186, dig_filter_phy_rev16);
+
+	if (dev->dev->chip_id == BCMA_CHIP_ID_BCM43217) {
+		b43_nphy_pa_set_tx_dig_filter(dev, 0x186, dig_filter_phy_rev16);
+		b43_nphy_pa_set_tx_dig_filter(dev, 0x195,
+					      tbl_tx_filter_coef_rev4[1]);
+	}
+
 	if (b43_is_40mhz(dev)) {
 		b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
 					      tbl_tx_filter_coef_rev4[3]);
-	} else if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
-		b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
-					      tbl_tx_filter_coef_rev4[5]);
+	} else {
+		if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ)
+			b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
+						      tbl_tx_filter_coef_rev4[5]);
+		if (dev->phy.channel == 14)
+			b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
+						      tbl_tx_filter_coef_rev4[6]);
 	}
-
-	if (dev->phy.channel == 14)
-		b43_nphy_pa_set_tx_dig_filter(dev, 0x186,
-					      tbl_tx_filter_coef_rev4[6]);
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/GetTxGain */
-- 
1.8.4.5
