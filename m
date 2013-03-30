From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:24 +0100
Subject: [PATCH 5/6] b43: N-PHY: use defines for (re)storing VCM config
In-Reply-To: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
References: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
Message-ID: <1364687185-27329-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |   19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 5e6c319..3d0c6e2 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1748,8 +1748,13 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		rssical_radio_regs = nphy->rssical_cache.rssical_radio_regs_5G;
 		rssical_phy_regs = nphy->rssical_cache.rssical_phy_regs_5G;
 	}
-	rssical_radio_regs[0] = b43_radio_read(dev, 0x602B);
-	rssical_radio_regs[0] = b43_radio_read(dev, 0x702B);
+	if (dev->phy.rev >= 7) {
+	} else {
+		rssical_radio_regs[0] = b43_radio_read(dev, B2056_RX0 |
+						       B2056_RX_RSSI_MISC);
+		rssical_radio_regs[1] = b43_radio_read(dev, B2056_RX1 |
+						       B2056_RX_RSSI_MISC);
+	}
 	rssical_phy_regs[0] = b43_phy_read(dev, B43_NPHY_RSSIMC_0I_RSSI_Z);
 	rssical_phy_regs[1] = b43_phy_read(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z);
 	rssical_phy_regs[2] = b43_phy_read(dev, B43_NPHY_RSSIMC_1I_RSSI_Z);
@@ -3903,9 +3908,13 @@ static void b43_nphy_restore_rssi_cal(struct b43_wldev *dev)
 		rssical_phy_regs = nphy->rssical_cache.rssical_phy_regs_5G;
 	}
 
-	/* TODO use some definitions */
-	b43_radio_maskset(dev, 0x602B, 0xE3, rssical_radio_regs[0]);
-	b43_radio_maskset(dev, 0x702B, 0xE3, rssical_radio_regs[1]);
+	if (dev->phy.rev >= 7) {
+	} else {
+		b43_radio_maskset(dev, B2056_RX0 | B2056_RX_RSSI_MISC, 0xE3,
+				  rssical_radio_regs[0]);
+		b43_radio_maskset(dev, B2056_RX1 | B2056_RX_RSSI_MISC, 0xE3,
+				  rssical_radio_regs[1]);
+	}
 
 	b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Z, rssical_phy_regs[0]);
 	b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z, rssical_phy_regs[1]);
-- 
1.7.10.4
