From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  7 Mar 2013 16:47:19 +0100
Subject: [PATCH 05/13] b43: HT-PHY: implement MAC reclocking
In-Reply-To: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
Message-ID: <1362671247-10766-6-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.c |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 4ccd371..4b24816 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -290,6 +290,7 @@ static void b43_phy_ht_spur_avoid(struct b43_wldev *dev,
 {
 	struct bcma_device *core = dev->dev->bdev;
 	int spuravoid = 0;
+	u16 tmp;
 
 	/* Check for 13 and 14 is just a guess, we don't have enough logs. */
 	if (new_channel->hw_value == 13 || new_channel->hw_value == 14)
@@ -301,6 +302,23 @@ static void b43_phy_ht_spur_avoid(struct b43_wldev *dev,
 			  B43_BCMA_CLKCTLST_PHY_PLL_REQ,
 			  B43_BCMA_CLKCTLST_80211_PLL_ST |
 			  B43_BCMA_CLKCTLST_PHY_PLL_ST, false);
+
+	/* Values has been taken from wlc_bmac_switch_macfreq comments */
+	switch (spuravoid) {
+	case 2: /* 126MHz */
+		tmp = 0x2082;
+		break;
+	case 1: /* 123MHz */
+		tmp = 0x5341;
+		break;
+	default: /* 120MHz */
+		tmp = 0x8889;
+	}
+
+	b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, tmp);
+	b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0x8);
+
+	/* TODO: reset PLL */
 }
 
 static void b43_phy_ht_channel_setup(struct b43_wldev *dev,
-- 
1.7.10.4
