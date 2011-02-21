From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 21 Feb 2011 19:45:35 +0100
Subject: [PATCH 2/2] b43: N-PHY: rev1: restore PHY state after RSSI operations
In-Reply-To: <1298313935-4094-1-git-send-email-zajec5@gmail.com>
References: <1298313935-4094-1-git-send-email-zajec5@gmail.com>
Message-ID: <1298313935-4094-2-git-send-email-zajec5@gmail.com>
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
index cc19e3f..2186afc 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -2128,7 +2128,7 @@ static int b43_nphy_poll_rssi(struct b43_wldev *dev, u8 type, s32 *buf,
 		save_regs_phy[5] = b43_phy_read(dev, B43_NPHY_AFECTL_OVER);
 		save_regs_phy[6] = b43_phy_read(dev, B43_NPHY_TXF_40CO_B1S0);
 		save_regs_phy[7] = b43_phy_read(dev, B43_NPHY_TXF_40CO_B32S1);
-	} else if (dev->phy.rev == 2) {
+	} else {
 		save_regs_phy[0] = b43_phy_read(dev, B43_NPHY_AFECTL_C1);
 		save_regs_phy[1] = b43_phy_read(dev, B43_NPHY_AFECTL_C2);
 		save_regs_phy[2] = b43_phy_read(dev, B43_NPHY_AFECTL_OVER);
@@ -2179,7 +2179,7 @@ static int b43_nphy_poll_rssi(struct b43_wldev *dev, u8 type, s32 *buf,
 		b43_phy_write(dev, B43_NPHY_AFECTL_OVER, save_regs_phy[5]);
 		b43_phy_write(dev, B43_NPHY_TXF_40CO_B1S0, save_regs_phy[6]);
 		b43_phy_write(dev, B43_NPHY_TXF_40CO_B32S1, save_regs_phy[7]);
-	} else if (dev->phy.rev == 2) {
+	} else {
 		b43_phy_write(dev, B43_NPHY_AFECTL_C1, save_regs_phy[0]);
 		b43_phy_write(dev, B43_NPHY_AFECTL_C2, save_regs_phy[1]);
 		b43_phy_write(dev, B43_NPHY_AFECTL_OVER, save_regs_phy[2]);
-- 
1.7.1
