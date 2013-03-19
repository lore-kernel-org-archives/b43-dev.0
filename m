From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 07:52:48 +0100
Subject: [FIX 3.4+][PATCH] b43: N-PHY: increase initial value of "mind" in
 RSSI calibration
Message-ID: <1363675968-20433-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, stable@vger.kernel.org

We're using "mind" variable to find the VCM that got the best polling
results. For each VCM we calculte "currd" which is compared to the
"mind". For PHY rev3+ "currd" gets values around 14k-40k. Looking for a
value smaller than 40 makes no sense, so increase the initial value.

This fixes a regression introduced in 3.4 by commit:
e0c9a0219a8f542e3946fe972a68aacf8c3f906c
(my BCM4322 performance dropped from 18,4Mb/s to 9,26Mb/s)

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Cc: stable at vger.kernel.org
---
 drivers/net/wireless/b43/phy_n.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 3c35382..e014a7a 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1615,7 +1615,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 		}
 		for (i = 0; i < 4; i += 2) {
 			s32 curr;
-			s32 mind = 40;
+			s32 mind = 0x100000;
 			s32 minpoll = 249;
 			u8 minvcm = 0;
 			if (2 * core != i)
@@ -1799,7 +1799,7 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, u8 type)
 	}
 
 	for (i = 0; i < 4; i++) {
-		s32 mind = 40;
+		s32 mind = 0x100000;
 		u8 minvcm = 0;
 		s32 minpoll = 249;
 		s32 curr;
-- 
1.7.10.4
