From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Mar 2013 19:15:52 +0100
Subject: [PATCH 6/6] b43: N-PHY: fix "NB" RSSI calibration on PHYs rev2-
In-Reply-To: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
References: <1363803352-12459-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363803352-12459-6-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index dbc6276..f997fea 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1849,7 +1849,7 @@ static void b43_nphy_rev2_rssi_cal(struct b43_wldev *dev, enum n_rssi_type type)
 		s32 currd;
 		for (vcm = 0; vcm < 4; vcm++) {
 			if (type == N_RSSI_NB)
-				currd = abs(results[vcm][i]);
+				currd = abs(results[vcm][i] - code * 8);
 			else
 				currd = abs(miniq[vcm][i / 2] - code * 8);
 
-- 
1.7.10.4
