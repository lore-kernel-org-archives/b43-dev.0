From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 18 Nov 2010 13:28:00 +0100
Subject: [PATCH 4/4] b43: N-PHY: init BPHY when needed
In-Reply-To: <1290083280-13550-1-git-send-email-zajec5@gmail.com>
References: <1290083280-13550-1-git-send-email-zajec5@gmail.com>
Message-ID: <1290083280-13550-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index bea7dab..2c60793 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1572,6 +1572,7 @@ static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 	}
 }
 
+/* http://bcm-v4.sipsolutions.net/802.11/PHY/N/BPHYInit */
 static void b43_nphy_bphy_init(struct b43_wldev *dev)
 {
 	unsigned int i;
@@ -3239,6 +3240,9 @@ int b43_phy_initn(struct b43_wldev *dev)
 
 	b43_nphy_classifier(dev, 0, 0);
 	b43_nphy_read_clip_detection(dev, clip);
+	if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
+		b43_nphy_bphy_init(dev);
+
 	tx_pwr_state = nphy->txpwrctrl;
 	/* TODO N PHY TX power control with argument 0
 		(turning off power control) */
-- 
1.7.1
