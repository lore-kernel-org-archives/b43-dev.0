From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 18 Jul 2011 02:13:23 +0200
Subject: [PATCH 1/4] b43: HT-PHY: fix masks in radio ctl
Message-ID: <1310948006-3365-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Old masks were causing ugly, delayed lock ups.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
V2: Explain why we do such a dummy operations like: write(read() & 0).
Put cleaning this as TODO. We should wait with cleaning until having BCM4331
working at all.
---
 drivers/net/wireless/b43/phy_ht.c |   15 ++++++++++-----
 1 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 2982103..85a30af 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -276,13 +276,18 @@ static void b43_phy_ht_op_software_rfkill(struct b43_wldev *dev,
 	if (b43_read32(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
 		b43err(dev->wl, "MAC not suspended\n");
 
+	/* In the following PHY ops we copy wl's dummy behaviour.
+	 * TODO: Find out if reads (currently hidden in masks/masksets) are
+	 * needed and replace following ops with just writes or w&r.
+	 * Note: B43_PHY_HT_RF_CTL1 register is tricky, wrong operation can
+	 * cause delayed (!) machine lock up. */
 	if (blocked) {
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
 	} else {
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
-		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x1);
-		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
-		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x2);
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
+		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x1);
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
+		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x2);
 
 		if (dev->phy.radio_ver == 0x2059)
 			b43_radio_2059_init(dev);
-- 
1.7.3.4
