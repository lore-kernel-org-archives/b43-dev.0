From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 22 Aug 2010 21:54:32 +0200
Subject: [PATCH] b43: N-PHY: check for clk when setting RX core state
Message-ID: <1282506872-8537-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?G=C3=A1bor=20Stefanik?= <netrolller.3d@gmail.com>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
Very trivial one, it should be included in previous two-patches-set.
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index ac217da..ac7f02d 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3094,7 +3094,7 @@ static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
 
 	nphy->phyrxchain = mask;
 
-	if (0 /* FIXME clk */)
+	if (!phy->clk)
 		return;
 
 	b43_mac_suspend(dev);
-- 
1.7.1
