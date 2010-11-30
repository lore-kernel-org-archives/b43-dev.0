From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 30 Nov 2010 22:33:14 +0100
Subject: [PATCH 1/3] b43: N-PHY: fix RSSI selection
Message-ID: <1291152796-18700-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   38 +++++++++++++++++++++++++-------------
 1 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 85a7a60..1d08476 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1822,27 +1822,39 @@ static void b43_nphy_rev2_rssi_select(struct b43_wldev *dev, u8 code, u8 type)
 				(type + 1) << 4);
 	}
 
-	/* TODO use some definitions */
 	if (code == 0) {
-		b43_phy_maskset(dev, B43_NPHY_AFECTL_OVER, 0xCFFF, 0);
+		b43_phy_mask(dev, B43_NPHY_AFECTL_OVER, ~0x3000);
 		if (type < 3) {
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_CMD, 0xFEC7, 0);
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_OVER, 0xEFDC, 0);
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_CMD, 0xFFFE, 0);
+			b43_phy_mask(dev, B43_NPHY_RFCTL_CMD,
+				~(B43_NPHY_RFCTL_CMD_RXEN |
+				  B43_NPHY_RFCTL_CMD_CORESEL));
+			b43_phy_mask(dev, B43_NPHY_RFCTL_OVER,
+				~(0x1 << 12 |
+				  0x1 << 5 |
+				  0x1 << 1 |
+				  0x1));
+			b43_phy_mask(dev, B43_NPHY_RFCTL_CMD,
+				~B43_NPHY_RFCTL_CMD_START);
 			udelay(20);
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_OVER, 0xFFFE, 0);
+			b43_phy_mask(dev, B43_NPHY_RFCTL_OVER, ~0x1);
 		}
 	} else {
-		b43_phy_maskset(dev, B43_NPHY_AFECTL_OVER, 0xCFFF,
-				0x3000);
+		b43_phy_set(dev, B43_NPHY_AFECTL_OVER, 0x3000);
 		if (type < 3) {
 			b43_phy_maskset(dev, B43_NPHY_RFCTL_CMD,
-					0xFEC7, 0x0180);
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_OVER,
-					0xEFDC, (code << 1 | 0x1021));
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_CMD, 0xFFFE, 0x1);
+				~(B43_NPHY_RFCTL_CMD_RXEN |
+				  B43_NPHY_RFCTL_CMD_CORESEL),
+				(B43_NPHY_RFCTL_CMD_RXEN |
+				 code << B43_NPHY_RFCTL_CMD_CORESEL_SHIFT));
+			b43_phy_set(dev, B43_NPHY_RFCTL_OVER,
+				(0x1 << 12 |
+				  0x1 << 5 |
+				  0x1 << 1 |
+				  0x1));
+			b43_phy_set(dev, B43_NPHY_RFCTL_CMD,
+				B43_NPHY_RFCTL_CMD_START);
 			udelay(20);
-			b43_phy_maskset(dev, B43_NPHY_RFCTL_OVER, 0xFFFE, 0);
+			b43_phy_mask(dev, B43_NPHY_RFCTL_OVER, ~0x1);
 		}
 	}
 }
-- 
1.6.3.3
