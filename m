From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 01:06:06 +0200
Subject: [PATCH 4/4] b43: bcma: implement full core reset
In-Reply-To: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
References: <1310857566-2876-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310857566-2876-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   34 +++++++++++++++++++++++++++-------
 1 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 22f20e1..46a0f92 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -1156,17 +1156,37 @@ void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
 }
 
 #ifdef CONFIG_B43_BCMA
-static void b43_bcma_wireless_core_reset(struct b43_wldev *dev, bool gmode)
+static void b43_bcma_phy_reset(struct b43_wldev *dev)
 {
-	u32 flags = 0;
+	u32 flags;
 
-	if (gmode)
-		flags = B43_BCMA_IOCTL_GMODE;
-	flags |= B43_BCMA_IOCTL_PHY_CLKEN;
+	/* Put PHY into reset */
+	flags = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
+	flags |= B43_BCMA_IOCTL_PHY_RESET;
 	flags |= B43_BCMA_IOCTL_PHY_BW_20MHZ; /* Make 20 MHz def */
-	b43_device_enable(dev, flags);
+	bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+	udelay(2);
+
+	/* Take PHY out of reset */
+	flags = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
+	flags &= ~B43_BCMA_IOCTL_PHY_RESET;
+	flags |= BCMA_IOCTL_FGC;
+	bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+	udelay(1);
 
-	/* TODO: reset PHY */
+	/* Do not force clock anymore */
+	flags = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
+	flags &= ~BCMA_IOCTL_FGC;
+	bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, flags);
+	udelay(1);
+}
+
+static void b43_bcma_wireless_core_reset(struct b43_wldev *dev, bool gmode)
+{
+	b43_device_enable(dev, B43_BCMA_IOCTL_PHY_CLKEN);
+	bcma_core_set_clockmode(dev->dev->bdev, BCMA_CLKMODE_FAST);
+	b43_bcma_phy_reset(dev);
+	bcma_core_pll_ctl(dev->dev->bdev, 0x300, 0x3000000, true);
 }
 #endif
 
-- 
1.7.3.4
