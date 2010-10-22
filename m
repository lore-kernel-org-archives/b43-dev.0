From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 22 Oct 2010 17:43:45 +0200
Subject: [PATCH 1/5] b43: N-PHY: fix infinite-loop-typo
Message-ID: <1287762229-16516-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index dfec549..e0f2d12 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -2964,7 +2964,7 @@ static int b43_nphy_rev2_cal_rx_iq(struct b43_wldev *dev,
 					(2 - i));
 		}
 
-		for (j = 0; i < 4; j++) {
+		for (j = 0; j < 4; j++) {
 			if (j < 3) {
 				cur_lna = lna[j];
 				cur_hpf1 = hpf1[j];
-- 
1.7.1
