From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 19 Jun 2011 13:30:20 +0200
Subject: [PATCH 1/2] b43: N-PHY: update switching analog on/off
Message-ID: <1308483021-7149-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Specs were recently updated.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   21 +++++++++++++++++----
 1 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index ad14f3b..e7dfdac 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -4025,11 +4025,24 @@ static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/Anacore */
 static void b43_nphy_op_switch_analog(struct b43_wldev *dev, bool on)
 {
-	u16 val = on ? 0 : 0x7FFF;
+	u16 override = on ? 0x0 : 0x7FFF;
+	u16 core = on ? 0xD : 0x00FD;
 
-	if (dev->phy.rev >= 3)
-		b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, val);
-	b43_phy_write(dev, B43_NPHY_AFECTL_OVER, val);
+	if (dev->phy.rev >= 3) {
+		if (on) {
+			b43_phy_write(dev, B43_NPHY_AFECTL_C1, core);
+			b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, override);
+			b43_phy_write(dev, B43_NPHY_AFECTL_C2, core);
+			b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
+		} else {
+			b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, override);
+			b43_phy_write(dev, B43_NPHY_AFECTL_C1, core);
+			b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
+			b43_phy_write(dev, B43_NPHY_AFECTL_C2, core);
+		}
+	} else {
+		b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
+	}
 }
 
 static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
-- 
1.7.3.4
