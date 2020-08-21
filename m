From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 21 Aug 2020 08:16:29 +0100
Subject: [PATCH 17/32] wireless: broadcom: b43: phy_ht: Remove 9 year old TODO
In-Reply-To: <20200821071644.109970-1-lee.jones@linaro.org>
References: <20200821071644.109970-1-lee.jones@linaro.org>
Message-ID: <20200821071644.109970-18-lee.jones@linaro.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kvalo@codeaurora.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, b43-dev@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/net/wireless/broadcom/b43/phy_ht.c: In function ?b43_phy_ht_op_init?:
 drivers/net/wireless/broadcom/b43/phy_ht.c:904:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: linux-wireless at vger.kernel.org
Cc: b43-dev at lists.infradead.org
Cc: netdev at vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/net/wireless/broadcom/b43/phy_ht.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_ht.c b/drivers/net/wireless/broadcom/b43/phy_ht.c
index c685b4bb5ed6e..d050971d150a5 100644
--- a/drivers/net/wireless/broadcom/b43/phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/phy_ht.c
@@ -900,9 +900,6 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
 	b43_phy_write(dev, 0x70, 0x50);
 	b43_phy_write(dev, 0x1ff, 0x30);
 
-	if (0) /* TODO: condition */
-		; /* TODO: PHY op on reg 0x217 */
-
 	if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
 		b43_phy_ht_classifier(dev, B43_PHY_HT_CLASS_CTL_CCK_EN, 0);
 	else
-- 
2.25.1
