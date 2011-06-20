From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 20 Jun 2011 03:12:19 +0200
Subject: [PATCH] b43: HT-PHY: calibrate radio after switching channel
Message-ID: <1308532339-3643-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

After uploading radio values calibration goes in. In MMIO dump it is:
 radio_read(0x002b) -> 0x0008
radio_write(0x002b) <- 0x0008
 radio_read(0x002e) -> 0x0004
radio_write(0x002e) <- 0x0000
 radio_read(0x002e) -> 0x0000
radio_write(0x002e) <- 0x0004
 radio_read(0x002b) -> 0x0008
radio_write(0x002b) <- 0x0009
To find masks and sets, MMIO hacks were used to fool closed driver.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
First I fooled ndiswrapper to get all reads 0xFFFF:
 radio_read(0x002b) -> 0xffff
radio_write(0x002b) <- 0xfffe
 radio_read(0x002e) -> 0xffff
radio_write(0x002e) <- 0xfffb
 radio_read(0x002e) -> 0xffff
radio_write(0x002e) <- 0xffff
 radio_read(0x002b) -> 0xffff
radio_write(0x002b) <- 0xffff
This has shown two first ops are pure masking ones.

Next I fooled ndis to get 0x0000:
 radio_read(0x002b) -> 0x0000
radio_write(0x002b) <- 0x0000
 radio_read(0x002e) -> 0x0000
radio_write(0x002e) <- 0x0000
 radio_read(0x002e) -> 0x0000
radio_write(0x002e) <- 0x0004
 radio_read(0x002b) -> 0x0000
radio_write(0x002b) <- 0x0001
Which has discovered bits setting by 2 later ops.
---
 drivers/net/wireless/b43/phy_ht.c |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 0b13f6f..72f01ce 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -69,7 +69,13 @@ static void b43_radio_2059_channel_setup(struct b43_wldev *dev,
 
 	udelay(50);
 
-	/* TODO */
+	/* Calibration */
+	b43_radio_mask(dev, 0x2b, ~0x1);
+	b43_radio_mask(dev, 0x2e, ~0x4);
+	b43_radio_set(dev, 0x2e, 0x4);
+	b43_radio_set(dev, 0x2b, 0x1);
+
+	udelay(300);
 }
 
 static void b43_phy_ht_channel_setup(struct b43_wldev *dev,
-- 
1.7.3.4
