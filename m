From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 19 Apr 2014 23:10:05 +0200
Subject: [PATCH][next] b43: G-PHY: fix random mistakes to match specs
Message-ID: <1397941805-1695-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
That are pretty minor changes, but I have them queued for years, so I
guess it's finally time to do some cleaning.
---
 drivers/net/wireless/b43/phy_g.c | 6 +++---
 drivers/net/wireless/b43/wa.c    | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_g.c b/drivers/net/wireless/b43/phy_g.c
index 12f467b..8f5c14b 100644
--- a/drivers/net/wireless/b43/phy_g.c
+++ b/drivers/net/wireless/b43/phy_g.c
@@ -1587,6 +1587,7 @@ static void b43_phy_initb5(struct b43_wldev *dev)
 	b43_write16(dev, 0x03E4, (b43_read16(dev, 0x03E4) & 0xFFC0) | 0x0004);
 }
 
+/* http://bcm-v4.sipsolutions.net/802.11/PHY/Init/B6 */
 static void b43_phy_initb6(struct b43_wldev *dev)
 {
 	struct b43_phy *phy = &dev->phy;
@@ -1670,7 +1671,7 @@ static void b43_phy_initb6(struct b43_wldev *dev)
 		b43_radio_write16(dev, 0x50, 0x20);
 	}
 	if (phy->radio_rev <= 2) {
-		b43_radio_write16(dev, 0x7C, 0x20);
+		b43_radio_write16(dev, 0x50, 0x20);
 		b43_radio_write16(dev, 0x5A, 0x70);
 		b43_radio_write16(dev, 0x5B, 0x7B);
 		b43_radio_write16(dev, 0x5C, 0xB0);
@@ -1686,9 +1687,8 @@ static void b43_phy_initb6(struct b43_wldev *dev)
 		b43_phy_write(dev, 0x2A, 0x8AC0);
 	b43_phy_write(dev, 0x0038, 0x0668);
 	b43_set_txpower_g(dev, &gphy->bbatt, &gphy->rfatt, gphy->tx_control);
-	if (phy->radio_rev <= 5) {
+	if (phy->radio_rev == 4 || phy->radio_rev == 5)
 		b43_phy_maskset(dev, 0x5D, 0xFF80, 0x0003);
-	}
 	if (phy->radio_rev <= 2)
 		b43_radio_write16(dev, 0x005D, 0x000D);
 
diff --git a/drivers/net/wireless/b43/wa.c b/drivers/net/wireless/b43/wa.c
index 9b1a038..c218c08 100644
--- a/drivers/net/wireless/b43/wa.c
+++ b/drivers/net/wireless/b43/wa.c
@@ -441,7 +441,7 @@ static void b43_wa_altagc(struct b43_wldev *dev)
 
 static void b43_wa_tr_ltov(struct b43_wldev *dev) /* TR Lookup Table Original Values */
 {
-	b43_gtab_write(dev, B43_GTAB_ORIGTR, 0, 0xC480);
+	b43_gtab_write(dev, B43_GTAB_ORIGTR, 0, 0x7654);
 }
 
 static void b43_wa_cpll_nonpilot(struct b43_wldev *dev)
-- 
1.8.4.5
