From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 18 Mar 2013 07:45:18 +0100
Subject: [PATCH 2/2] b43: HT-PHY: store TX power state before disabling it
In-Reply-To: <1363589118-19717-1-git-send-email-zajec5@gmail.com>
References: <1363589118-19717-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363589118-19717-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 5c0ec14..ccd70ac 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -497,15 +497,17 @@ static void b43_phy_ht_tx_power_ctl(struct b43_wldev *dev, bool enable)
 	static const u16 cmd_regs[3] = { B43_PHY_HT_TXPCTL_CMD_C1,
 					 B43_PHY_HT_TXPCTL_CMD_C2,
 					 B43_PHY_HT_TXPCTL_CMD_C3 };
+	static const u16 status_regs[3] = { B43_PHY_HT_TX_PCTL_STATUS_C1,
+					    B43_PHY_HT_TX_PCTL_STATUS_C2,
+					    B43_PHY_HT_TX_PCTL_STATUS_C3 };
 	int i;
 
 	if (!enable) {
 		if (b43_phy_read(dev, B43_PHY_HT_TXPCTL_CMD_C1) & en_bits) {
 			/* We disable enabled TX pwr ctl, save it's state */
-			/*
-			 * TODO: find the registers. On N-PHY they were 0x1ed
-			 * and 0x1ee, we need 3 such a registers for HT-PHY
-			 */
+			for (i = 0; i < 3; i++)
+				phy_ht->tx_pwr_idx[i] =
+					b43_phy_read(dev, status_regs[i]);
 		}
 		b43_phy_mask(dev, B43_PHY_HT_TXPCTL_CMD_C1, ~en_bits);
 	} else {
-- 
1.7.10.4
