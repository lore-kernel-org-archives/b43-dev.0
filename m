From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 17 May 2011 18:57:27 +0200
Subject: [PATCH 1/2] b43: add helper for finding GPIO device
Message-ID: <1305651448-23947-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   41 ++++++++++++++++++++-------------------
 1 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index f45db3f..57fd7dd 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2557,10 +2557,20 @@ out:
 /* Initialize the GPIOs
  * http://bcm-specs.sipsolutions.net/GPIO
  */
-static int b43_gpio_init(struct b43_wldev *dev)
+static struct ssb_device *b43_ssb_gpio_dev(struct b43_wldev *dev)
 {
 	struct ssb_bus *bus = dev->sdev->bus;
-	struct ssb_device *gpiodev, *pcidev = NULL;
+
+#ifdef CONFIG_SSB_DRIVER_PCICORE
+	return (bus->chipco.dev ? bus->chipco.dev : bus->pcicore.dev);
+#else
+	return bus->chipco.dev;
+#endif
+}
+
+static int b43_gpio_init(struct b43_wldev *dev)
+{
+	struct ssb_device *gpiodev;
 	u32 mask, set;
 
 	b43_write32(dev, B43_MMIO_MACCTL, b43_read32(dev, B43_MMIO_MACCTL)
@@ -2592,15 +2602,11 @@ static int b43_gpio_init(struct b43_wldev *dev)
 	if (dev->sdev->id.revision >= 2)
 		mask |= 0x0010;	/* FIXME: This is redundant. */
 
-#ifdef CONFIG_SSB_DRIVER_PCICORE
-	pcidev = bus->pcicore.dev;
-#endif
-	gpiodev = bus->chipco.dev ? : pcidev;
-	if (!gpiodev)
-		return 0;
-	ssb_write32(gpiodev, B43_GPIO_CONTROL,
-		    (ssb_read32(gpiodev, B43_GPIO_CONTROL)
-		     & mask) | set);
+	gpiodev = b43_ssb_gpio_dev(dev);
+	if (gpiodev)
+		ssb_write32(gpiodev, B43_GPIO_CONTROL,
+			    (ssb_read32(gpiodev, B43_GPIO_CONTROL)
+			     & mask) | set);
 
 	return 0;
 }
@@ -2608,16 +2614,11 @@ static int b43_gpio_init(struct b43_wldev *dev)
 /* Turn off all GPIO stuff. Call this on module unload, for example. */
 static void b43_gpio_cleanup(struct b43_wldev *dev)
 {
-	struct ssb_bus *bus = dev->sdev->bus;
-	struct ssb_device *gpiodev, *pcidev = NULL;
+	struct ssb_device *gpiodev;
 
-#ifdef CONFIG_SSB_DRIVER_PCICORE
-	pcidev = bus->pcicore.dev;
-#endif
-	gpiodev = bus->chipco.dev ? : pcidev;
-	if (!gpiodev)
-		return;
-	ssb_write32(gpiodev, B43_GPIO_CONTROL, 0);
+	gpiodev = b43_ssb_gpio_dev(dev);
+	if (gpiodev)
+		ssb_write32(gpiodev, B43_GPIO_CONTROL, 0);
 }
 
 /* http://bcm-specs.sipsolutions.net/EnableMac */
-- 
1.7.3.4
