From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 22 Dec 2011 00:47:18 +0100
Subject: [PATCH 3/4] b43: N-PHY: fix controling RF override
In-Reply-To: <1324511239-3536-1-git-send-email-zajec5@gmail.com>
References: <1324511239-3536-1-git-send-email-zajec5@gmail.com>
Message-ID: <1324511239-3536-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 38cf37d..b8525cc 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -167,7 +167,7 @@ static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
 				b43_phy_mask(dev, val_addr,
 						~(rf_ctrl->val_mask));
 			} else {
-				if (core == 0 || ((1 << core) & i) != 0) {
+				if (core == 0 || ((1 << i) & core)) {
 					b43_phy_set(dev, en_addr, field);
 					b43_phy_maskset(dev, val_addr,
 						~(rf_ctrl->val_mask),
@@ -200,7 +200,7 @@ static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
 			addr = B43_PHY_N((i == 0) ?
 				rf_ctrl->addr0 : rf_ctrl->addr1);
 
-			if ((core & (1 << i)) != 0)
+			if ((1 << i) & core)
 				b43_phy_maskset(dev, addr, ~(rf_ctrl->bmask),
 						(value << rf_ctrl->shift));
 
-- 
1.7.3.4
