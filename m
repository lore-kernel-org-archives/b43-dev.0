From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat,  2 Mar 2013 02:14:25 +0100
Subject: [PATCH] b43: HT-PHY: make it BCMA-only
Message-ID: <1362186865-20539-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

HT-PHY was found only on BCM4331 which is a BCMA-based chipset. This is
reallly unlikely we will ever see HT-PHY on SSB thus make the whole code
BCMA specific. This will allow us to call various BCMA-specific
functions directly (without extra checks).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/Kconfig  |    2 +-
 drivers/net/wireless/b43/phy_ht.c |    5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index 7a28d21..09d315d 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -131,7 +131,7 @@ config B43_PHY_LP
 
 config B43_PHY_HT
 	bool "Support for HT-PHY (high throughput) devices (EXPERIMENTAL)"
-	depends on B43 && EXPERIMENTAL
+	depends on B43 && B43_BCMA && EXPERIMENTAL
 	---help---
 	  Support for the HT-PHY.
 
diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 7416c5e..3719a88 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -346,6 +346,11 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
 	u16 tmp;
 	u16 clip_state[3];
 
+	if (dev->dev->bus_type != B43_BUS_BCMA) {
+		b43err(dev->wl, "HT-PHY is supported only on BCMA bus!\n");
+		return -EOPNOTSUPP;
+	}
+
 	b43_phy_ht_tables_init(dev);
 
 	b43_phy_mask(dev, 0x0be, ~0x2);
-- 
1.7.10.4
