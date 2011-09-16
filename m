From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 16 Sep 2011 12:34:03 +0200
Subject: [PATCH 6/6] b43: LCN-PHY: add more init tweaks
In-Reply-To: <1316169243-8808-1-git-send-email-zajec5@gmail.com>
References: <1316169243-8808-1-git-send-email-zajec5@gmail.com>
Message-ID: <1316169243-8808-6-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_lcn.c |   22 ++++++++++++++++++++--
 1 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_lcn.c b/drivers/net/wireless/b43/phy_lcn.c
index 8810bc9..3ac2357 100644
--- a/drivers/net/wireless/b43/phy_lcn.c
+++ b/drivers/net/wireless/b43/phy_lcn.c
@@ -307,12 +307,30 @@ static void b43_phy_lcn_bu_tweaks(struct b43_wldev *dev)
 
 	b43_phy_write(dev, 0x7d6, 0x0902);
 
-	/* TODO: more ops */
+	b43_phy_maskset(dev, 0x429, ~0xf, 0x9);
+	b43_phy_maskset(dev, 0x429, ~(0x3f << 4), 0xe << 4);
 
 	if (dev->phy.rev == 1) {
-		/* TODO: more ops */
+		b43_phy_maskset(dev, 0x423, ~0xff, 0x46);
+		b43_phy_maskset(dev, 0x411, ~0xff, 1);
+		b43_phy_set(dev, 0x434, 0xff); /* FIXME: update to wl */
+
+		/* TODO: wl operates on PHY 0x416, brcmsmac is outdated here */
+
+		b43_phy_maskset(dev, 0x656, ~0xf, 2);
+		b43_phy_set(dev, 0x44d, 4);
+
+		b43_radio_set(dev, 0x0f7, 0x4);
+		b43_radio_mask(dev, 0x0f1, ~0x3);
+		b43_radio_maskset(dev, 0x0f2, ~0xf8, 0x90);
+		b43_radio_maskset(dev, 0x0f3, ~0x3, 0x2);
+		b43_radio_maskset(dev, 0x0f3, ~0xf0, 0xa0);
+
+		b43_radio_set(dev, 0x11f, 0x2);
 
 		b43_phy_lcn_clear_tx_power_offsets(dev);
+
+		/* TODO: something more? */
 	}
 }
 
-- 
1.7.3.4
