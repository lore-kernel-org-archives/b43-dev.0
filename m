From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Jul 2011 20:27:24 +0200
Subject: [PATCH 1/2] b43: use radio ID reading code to older cores only
Message-ID: <1309976845-19588-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Newer ones need separated way

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   36 ++++++++++++++++++++++--------------
 1 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index cddc5a8..074765a 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4218,22 +4218,30 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 	       analog_type, phy_type, phy_rev);
 
 	/* Get RADIO versioning */
-	if (dev->dev->chip_id == 0x4317) {
-		if (dev->dev->chip_rev == 0)
-			tmp = 0x3205017F;
-		else if (dev->dev->chip_rev == 1)
-			tmp = 0x4205017F;
-		else
-			tmp = 0x5205017F;
+	if (dev->dev->core_rev >= 24) {
+		/* TODO */
 	} else {
-		b43_write16(dev, B43_MMIO_RADIO_CONTROL, B43_RADIOCTL_ID);
-		tmp = b43_read16(dev, B43_MMIO_RADIO_DATA_LOW);
-		b43_write16(dev, B43_MMIO_RADIO_CONTROL, B43_RADIOCTL_ID);
-		tmp |= (u32)b43_read16(dev, B43_MMIO_RADIO_DATA_HIGH) << 16;
-	}
-	radio_manuf = (tmp & 0x00000FFF);
-	radio_ver = (tmp & 0x0FFFF000) >> 12;
-	radio_rev = (tmp & 0xF0000000) >> 28;
+		if (dev->dev->chip_id == 0x4317) {
+			if (dev->dev->chip_rev == 0)
+				tmp = 0x3205017F;
+			else if (dev->dev->chip_rev == 1)
+				tmp = 0x4205017F;
+			else
+				tmp = 0x5205017F;
+		} else {
+			b43_write16(dev, B43_MMIO_RADIO_CONTROL,
+				    B43_RADIOCTL_ID);
+			tmp = b43_read16(dev, B43_MMIO_RADIO_DATA_LOW);
+			b43_write16(dev, B43_MMIO_RADIO_CONTROL,
+				    B43_RADIOCTL_ID);
+			tmp |= (u32)b43_read16(dev, B43_MMIO_RADIO_DATA_HIGH)
+				<< 16;
+		}
+		radio_manuf = (tmp & 0x00000FFF);
+		radio_ver = (tmp & 0x0FFFF000) >> 12;
+		radio_rev = (tmp & 0xF0000000) >> 28;
+	}
+
 	if (radio_manuf != 0x17F /* Broadcom */)
 		unsupported = 1;
 	switch (phy_type) {
-- 
1.7.3.4
