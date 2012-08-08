From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  8 Aug 2012 19:10:15 +0200
Subject: [PATCH] b43: N-PHY: fix 0x2057 radio calib copy/paste mistake
In-Reply-To: <1344445816-11871-1-git-send-email-zajec5@gmail.com>
References: <1344445816-11871-1-git-send-email-zajec5@gmail.com>
Message-ID: <1344445816-11871-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Reported-by: Fengguang Wu <fengguang.wu@intel.com>
---
 drivers/net/wireless/b43/phy_n.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 5c90741..3c35382 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -572,6 +572,7 @@ static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
 	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
 				  5000000))
+		b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
 	if (special) {
 		b43_radio_write(dev, R2057_RCCAL_MASTER, 0x73);
-- 
1.7.7
