From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 20 May 2011 01:04:46 +0200
Subject: [PATCH] b43: N-PHY: initialize last var in calibration function
Message-ID: <1305846286-1505-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Reported-by: Larry Finger <larry.finger@lwfinger.net>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 9ed6515..05960dd 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3093,7 +3093,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 	int freq;
 	bool avoid = false;
 	u8 length;
-	u16 tmp, core, type, count, max, numb, last, cmd;
+	u16 tmp, core, type, count, max, numb, last = 0, cmd;
 	const u16 *table;
 	bool phy6or5x;
 
-- 
1.7.1
