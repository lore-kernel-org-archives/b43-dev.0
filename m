From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 11 Oct 2010 03:11:03 +0200
Subject: [PATCH 3/3] b43: N-PHY: fix logic in band switching
In-Reply-To: <1286759463-32221-1-git-send-email-zajec5@gmail.com>
References: <1286759463-32221-1-git-send-email-zajec5@gmail.com>
Message-ID: <1286759463-32221-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 88a4411..21cfd42 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3337,17 +3337,18 @@ static void b43_nphy_channel_setup(struct b43_wldev *dev,
 	struct b43_phy *phy = &dev->phy;
 	struct b43_phy_n *nphy = dev->phy.n;
 
-	u16 tmp;
+	u16 old_band_5ghz;
 	u32 tmp32;
 
-	tmp = b43_phy_read(dev, B43_NPHY_BANDCTL) & B43_NPHY_BANDCTL_5GHZ;
-	if (new_channel->band == IEEE80211_BAND_5GHZ && tmp == 0) {
+	old_band_5ghz =
+		b43_phy_read(dev, B43_NPHY_BANDCTL) & B43_NPHY_BANDCTL_5GHZ;
+	if (new_channel->band == IEEE80211_BAND_5GHZ && !old_band_5ghz) {
 		tmp32 = b43_read32(dev, B43_MMIO_PSM_PHY_HDR);
 		b43_write32(dev, B43_MMIO_PSM_PHY_HDR, tmp32 | 4);
 		b43_phy_set(dev, B43_PHY_B_BBCFG, 0xC000);
 		b43_write32(dev, B43_MMIO_PSM_PHY_HDR, tmp32);
 		b43_phy_set(dev, B43_NPHY_BANDCTL, B43_NPHY_BANDCTL_5GHZ);
-	} else if (new_channel->band == IEEE80211_BAND_5GHZ) {
+	} else if (new_channel->band == IEEE80211_BAND_2GHZ && old_band_5ghz) {
 		b43_phy_mask(dev, B43_NPHY_BANDCTL, ~B43_NPHY_BANDCTL_5GHZ);
 		tmp32 = b43_read32(dev, B43_MMIO_PSM_PHY_HDR);
 		b43_write32(dev, B43_MMIO_PSM_PHY_HDR, tmp32 | 4);
-- 
1.7.1
