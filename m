From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  6 Mar 2012 23:11:38 +0100
Subject: [RFT][PATCH] b43: fix logic in GPIO configuration
Message-ID: <1331071898-3651-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Hauke Mehrtens <hauke@hauke-m.de>
Cc: b43-dev@lists.infradead.org, larry.finger@lwfinger.net, florian@openwrt.org, m@bues.ch, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

By using reverted mask we were taking over pins we were not supporsed to
touch. After fixing this workaround for BCM5354 should not be needed
anymore.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 1d633f3..8a89885 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2706,8 +2706,6 @@ static int b43_gpio_init(struct b43_wldev *dev)
 		mask |= 0x0060;
 		set |= 0x0060;
 	}
-	if (dev->dev->chip_id == 0x5354)
-		set &= 0xff02;
 	if (0 /* FIXME: conditional unknown */ ) {
 		b43_write16(dev, B43_MMIO_GPIO_MASK,
 			    b43_read16(dev, B43_MMIO_GPIO_MASK)
@@ -2730,7 +2728,7 @@ static int b43_gpio_init(struct b43_wldev *dev)
 	case B43_BUS_BCMA:
 		bcma_cc_write32(&dev->dev->bdev->bus->drv_cc, BCMA_CC_GPIOCTL,
 				(bcma_cc_read32(&dev->dev->bdev->bus->drv_cc,
-					BCMA_CC_GPIOCTL) & mask) | set);
+					BCMA_CC_GPIOCTL) & ~mask) | set);
 		break;
 #endif
 #ifdef CONFIG_B43_SSB
@@ -2739,7 +2737,7 @@ static int b43_gpio_init(struct b43_wldev *dev)
 		if (gpiodev)
 			ssb_write32(gpiodev, B43_GPIO_CONTROL,
 				    (ssb_read32(gpiodev, B43_GPIO_CONTROL)
-				    & mask) | set);
+				    & ~mask) | set);
 		break;
 #endif
 	}
-- 
1.7.3.4
