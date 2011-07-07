From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  7 Jul 2011 20:06:56 +0200
Subject: [PATCH] b43: HT-PHY: define dummy TX power functions
Message-ID: <1310062016-3900-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Without them we get Oops with NULL pointer

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.c |   12 ++++++++++--
 1 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 30b19c6..2982103 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -373,6 +373,16 @@ static void b43_phy_ht_op_radio_write(struct b43_wldev *dev, u16 reg,
 	b43_write16(dev, B43_MMIO_RADIO24_DATA, value);
 }
 
+static enum b43_txpwr_result
+b43_phy_ht_op_recalc_txpower(struct b43_wldev *dev, bool ignore_tssi)
+{
+	return B43_TXPWR_RES_DONE;
+}
+
+static void b43_phy_ht_op_adjust_txpower(struct b43_wldev *dev)
+{
+}
+
 /**************************************************
  * PHY ops struct.
  **************************************************/
@@ -391,8 +401,6 @@ const struct b43_phy_operations b43_phyops_ht = {
 	.switch_analog		= b43_phy_ht_op_switch_analog,
 	.switch_channel		= b43_phy_ht_op_switch_channel,
 	.get_default_chan	= b43_phy_ht_op_get_default_chan,
-	/*
 	.recalc_txpower		= b43_phy_ht_op_recalc_txpower,
 	.adjust_txpower		= b43_phy_ht_op_adjust_txpower,
-	*/
 };
-- 
1.7.3.4
