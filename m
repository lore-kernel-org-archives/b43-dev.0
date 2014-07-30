From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 30 Jul 2014 23:02:30 +0200
Subject: [FIX][PATCH 3.17] b43: N-PHY: fix "Data bus error" while working in 5
 GHz
Message-ID: <1406754150-25752-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

When switching from one 5 GHz channel to another 5 GHz channel we need
to make sure BPHY is still in a reset. However to access BPHY register
we have to switch to 2 GHz mode for a moment. Otherwise this may result
in "Data bus error" (noticed by Hauke with BCM43224 connected to the
SoC).

Reported-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 1eead7a..e2a3f0d 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -6217,6 +6217,9 @@ static void b43_nphy_channel_setup(struct b43_wldev *dev,
 	u16 tmp16;
 
 	if (new_channel->band == IEEE80211_BAND_5GHZ) {
+		/* Switch to 2 GHz for a moment to access B43_PHY_B_BBCFG */
+		b43_phy_mask(dev, B43_NPHY_BANDCTL, ~B43_NPHY_BANDCTL_5GHZ);
+
 		tmp16 = b43_read16(dev, B43_MMIO_PSM_PHY_HDR);
 		b43_write16(dev, B43_MMIO_PSM_PHY_HDR, tmp16 | 4);
 		/* Put BPHY in the reset */
-- 
1.8.4.5
