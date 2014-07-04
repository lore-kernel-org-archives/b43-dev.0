From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri,  4 Jul 2014 09:21:56 +0200
Subject: [PATCH] b43: fix reading info about radio for new devices (cores 40 &
 42)
Message-ID: <1404458516-2074-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This changes
b43-phy0: Found Radio: Manuf 0x17F, Version 0x7769, Revision 4
to the
b43-phy0: Found Radio: Manuf 0x17F, Version 0x2069, Revision 4
which matches what closed source driver reports:
$ wl revinfo
radiorev 0x42069000

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 1b02016..83b2d56 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4329,6 +4329,7 @@ static char *b43_phy_name(struct b43_wldev *dev, u8 phy_type)
 static int b43_phy_versioning(struct b43_wldev *dev)
 {
 	struct b43_phy *phy = &dev->phy;
+	const u8 core_rev = dev->dev->core_rev;
 	u32 tmp;
 	u8 analog_type;
 	u8 phy_type;
@@ -4394,7 +4395,15 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 		analog_type, phy_type, b43_phy_name(dev, phy_type), phy_rev);
 
 	/* Get RADIO versioning */
-	if (dev->dev->core_rev >= 24) {
+	if (core_rev == 40 || core_rev == 42) {
+		radio_manuf = 0x17F;
+
+		b43_write16(dev, B43_MMIO_RADIO24_CONTROL, 0);
+		radio_rev = b43_read16(dev, B43_MMIO_RADIO24_DATA);
+
+		b43_write16(dev, B43_MMIO_RADIO24_CONTROL, 1);
+		radio_ver = b43_read16(dev, B43_MMIO_RADIO24_DATA);
+	} else if (core_rev >= 24) {
 		u16 radio24[3];
 
 		for (tmp = 0; tmp < 3; tmp++) {
-- 
1.8.4.5
