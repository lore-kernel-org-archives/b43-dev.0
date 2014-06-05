From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  5 Jun 2014 20:20:44 +0200
Subject: [PATCH] bcma: gpio: register all 32 GPIOs on BCM53572
Message-ID: <1401992444-4121-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

I've here a device detected as:
bcma: bus0: Found chip with id 0xD144, rev 0x01 and package 0x08
I couldn't find GPIO handling hw button until trying GPIO 20. It seems
BCM53572 also has 32 GPIOs.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/driver_gpio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bcma/driver_gpio.c b/drivers/bcma/driver_gpio.c
index d7f81ad..aec9f85 100644
--- a/drivers/bcma/driver_gpio.c
+++ b/drivers/bcma/driver_gpio.c
@@ -220,6 +220,7 @@ int bcma_gpio_init(struct bcma_drv_cc *cc)
 #endif
 	switch (cc->core->bus->chipinfo.id) {
 	case BCMA_CHIP_ID_BCM5357:
+	case BCMA_CHIP_ID_BCM53572:
 		chip->ngpio	= 32;
 		break;
 	default:
-- 
1.8.4.5
