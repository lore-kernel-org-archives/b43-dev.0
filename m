From: =?UTF-8?q?G=C3=A1bor=20Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 16 Aug 2010 22:39:15 +0200
Subject: [PATCH 2/4] b43: N-PHY: Fix typo in function name (gain_crtl ->
	gain_ctrl)
In-Reply-To: <1281991157-1557-1-git-send-email-netrolller.3d@gmail.com>
References: <1281991157-1557-1-git-send-email-netrolller.3d@gmail.com>
Message-ID: <1281991157-1557-2-git-send-email-netrolller.3d@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Linville <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <larry.finger@lwfinger.net>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, =?UTF-8?q?G=C3=A1bor=20Stefanik?= <netrolller.3d@gmail.com>

Signed-off-by: G?bor Stefanik <netrolller.3d@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index cb815cc..f1b5707 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -893,7 +893,7 @@ static void b43_nphy_adjust_lna_gain_table(struct b43_wldev *dev)
 }
 
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/WorkaroundsGainCtrl */
-static void b43_nphy_gain_crtl_workarounds(struct b43_wldev *dev)
+static void b43_nphy_gain_ctrl_workarounds(struct b43_wldev *dev)
 {
 	struct b43_phy_n *nphy = dev->phy.n;
 	u8 i, j;
@@ -1094,7 +1094,7 @@ static void b43_nphy_workarounds(struct b43_wldev *dev)
 		b43_nphy_set_rf_sequence(dev, 0, events1, delays1, 7);
 		b43_nphy_set_rf_sequence(dev, 1, events2, delays2, 7);
 
-		b43_nphy_gain_crtl_workarounds(dev);
+		b43_nphy_gain_ctrl_workarounds(dev);
 
 		if (dev->phy.rev < 2) {
 			if (b43_phy_read(dev, B43_NPHY_RXCTL) & 0x2)
-- 
1.6.4.2
