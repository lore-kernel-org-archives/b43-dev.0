From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  1 Mar 2011 21:40:39 +0100
Subject: [PATCH 1/3] b43: N-PHY: rev3+: correct switching analog core
Message-ID: <1299012041-7937-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index ab81ed8..b8e2b2a 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3878,10 +3878,14 @@ static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
 	}
 }
 
+/* http://bcm-v4.sipsolutions.net/802.11/PHY/Anacore */
 static void b43_nphy_op_switch_analog(struct b43_wldev *dev, bool on)
 {
-	b43_phy_write(dev, B43_NPHY_AFECTL_OVER,
-		      on ? 0 : 0x7FFF);
+	u16 val = on ? 0 : 0x7FFF;
+
+	if (dev->phy.rev >= 3)
+		b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, val);
+	b43_phy_write(dev, B43_NPHY_AFECTL_OVER, val);
 }
 
 static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
-- 
1.7.3.4
