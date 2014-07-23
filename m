From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 23 Jul 2014 18:54:48 +0200
Subject: [PATCH 1/3] b43: N-PHY: don't calculate values for TSSI if we can't
 transmit
Message-ID: <1406134490-6880-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This process requires sending some sample tone, so make sure we're
allowed to transmit first.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 44bb58b..d269fbb 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3957,7 +3957,8 @@ static void b43_nphy_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 	u32 tmp;
 	s32 rssi[4] = { };
 
-	/* TODO: check if we can transmit */
+	if (phy->chandef->chan->flags & IEEE80211_CHAN_NO_IR)
+		return;
 
 	if (b43_nphy_ipa(dev))
 		b43_nphy_ipa_internal_tssi_setup(dev);
-- 
1.8.4.5
