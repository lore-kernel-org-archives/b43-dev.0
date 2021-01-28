From: Abaci Team <abaci-bugfix@linux.alibaba.com>
Date: Thu, 28 Jan 2021 16:47:16 +0800
Subject: [PATCH] b43: Remove redundant code
Message-ID: <1611823636-18377-1-git-send-email-abaci-bugfix@linux.alibaba.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kvalo@codeaurora.org
Cc: davem@davemloft.net, kuba@kernel.org, linux-wireless@vger.kernel.org, lee.jones@linaro.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Abaci Team <abaci-bugfix@linux.alibaba.com>

Fix the following coccicheck warnings:

./drivers/net/wireless/broadcom/b43/phy_n.c:4640:2-4: WARNING: possible
condition with no effect (if == else).

./drivers/net/wireless/broadcom/b43/phy_n.c:4606:2-4: WARNING: possible
condition with no effect (if == else).

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Suggested-by: Jiapeng Zhong <oswb@linux.alibaba.com>
Signed-off-by: Abaci Team <abaci-bugfix@linux.alibaba.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index b669dff..39a335f 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4601,16 +4601,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 1);
 
-	if (nphy->gband_spurwar_en) {
-		/* TODO: N PHY Adjust Analog Pfbw (7) */
-		if (channel == 11 && b43_is_40mhz(dev)) {
-			; /* TODO: N PHY Adjust Min Noise Var(2, tone, noise)*/
-		} else {
-			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
-		}
-		/* TODO: N PHY Adjust CRS Min Power (0x1E) */
-	}
-
 	if (nphy->aband_spurwar_en) {
 		if (channel == 54) {
 			tone[0] = 0x20;
@@ -4636,12 +4626,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 			tone[0] = 0;
 			noise[0] = 0;
 		}
-
-		if (!tone[0] && !noise[0]) {
-			; /* TODO: N PHY Adjust Min Noise Var(1, tone, noise)*/
-		} else {
-			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
-		}
 	}
 
 	if (nphy->hang_avoid)
-- 
1.8.3.1
