From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 21 Feb 2011 19:45:34 +0100
Subject: [PATCH 1/2] b43: N-PHY: rev1: enable some gain ctl workarounds
Message-ID: <1298313935-4094-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index ab81ed8..cc19e3f 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1281,17 +1281,17 @@ static void b43_nphy_gain_ctrl_workarounds(struct b43_wldev *dev)
 						B43_NPHY_TABLE_DATALO, tmp);
 				}
 			}
+		}
 
-			b43_nphy_set_rf_sequence(dev, 5,
-					rfseq_events, rfseq_delays, 3);
-			b43_phy_maskset(dev, B43_NPHY_OVER_DGAIN1,
-				~B43_NPHY_OVER_DGAIN_CCKDGECV & 0xFFFF,
-				0x5A << B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT);
+		b43_nphy_set_rf_sequence(dev, 5,
+				rfseq_events, rfseq_delays, 3);
+		b43_phy_maskset(dev, B43_NPHY_OVER_DGAIN1,
+			~B43_NPHY_OVER_DGAIN_CCKDGECV & 0xFFFF,
+			0x5A << B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT);
 
-			if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
-				b43_phy_maskset(dev, B43_PHY_N(0xC5D),
-						0xFF80, 4);
-		}
+		if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
+			b43_phy_maskset(dev, B43_PHY_N(0xC5D),
+					0xFF80, 4);
 	}
 }
 
-- 
1.7.1
