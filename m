From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  5 Jul 2012 21:55:46 +0200
Subject: [PATCH] b43: N-PHY: fix RSSI calibration
Message-ID: <1341518146-20261-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Specs were updated, change code to match it.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   17 +++++++++--------
 1 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 1081188..b92bb9c 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1369,7 +1369,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 					i << 2);
 			b43_nphy_poll_rssi(dev, 2, results[i], 8);
 		}
-		for (i = 0; i < 4; i++) {
+		for (i = 0; i < 4; i += 2) {
 			s32 curr;
 			s32 mind = 40;
 			s32 minpoll = 249;
@@ -1415,14 +1415,15 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 			b43_nphy_scale_offset_rssi(dev, 0, 0, core + 1, 1, i);
 			b43_nphy_poll_rssi(dev, i, poll_results, 8);
 			for (j = 0; j < 4; j++) {
-				if (j / 2 == core)
+				if (j / 2 == core) {
 					offset[j] = 232 - poll_results[j];
-				if (offset[j] < 0)
-					offset[j] = -(abs(offset[j] + 4) / 8);
-				else
-					offset[j] = (offset[j] + 4) / 8;
-				b43_nphy_scale_offset_rssi(dev, 0,
-					offset[2 * core], core + 1, j % 2, i);
+					if (offset[j] < 0)
+						offset[j] = -(abs(offset[j] + 4) / 8);
+					else
+						offset[j] = (offset[j] + 4) / 8;
+					b43_nphy_scale_offset_rssi(dev, 0,
+						offset[2 * core], core + 1, j % 2, i);
+				}
 			}
 		}
 	}
-- 
1.7.7
