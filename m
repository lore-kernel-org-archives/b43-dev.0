From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  1 Apr 2010 23:11:10 +0200
Subject: [PATCH] b43: N-PHY: fix copy&paste typo
Message-ID: <1270156270-7550-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Myhailo Danylenko <isbear@ukrpost.net>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Reported-by: Myhailo Danylenko <isbear@ukrpost.net>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 6fd140a..2ae2445 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -2790,7 +2790,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 			}
 			b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4,
 						buffer);
-			b43_ntab_write_bulk(dev, B43_NTAB16(15, 101), 2,
+			b43_ntab_read_bulk(dev, B43_NTAB16(15, 101), 2,
 						buffer);
 			b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2,
 						buffer);
-- 
1.6.4.2
