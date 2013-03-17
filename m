From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Mar 2013 19:00:18 +0100
Subject: [PATCH 1/4] b43: HT-PHY: rename defines addressing cores on the 2059
 radio
In-Reply-To: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
References: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363543221-10651-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

After comparing writes to registers at 0x000, 0x400 and 0x800 it seems
there are many very similar writes. So 0x000 offset is not for accessing
something totally different, but probably just the first out of three
cores.
---
 drivers/net/wireless/b43/phy_ht.c     |   22 +++++++++++-----------
 drivers/net/wireless/b43/radio_2059.h |    6 +++---
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index b866770..751df2e 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -63,7 +63,7 @@ static void b43_radio_2059_channel_setup(struct b43_wldev *dev,
 	b43_radio_write(dev, 0x98, e->radio_syn98);
 
 	for (i = 0; i < 2; i++) {
-		routing = i ? R2059_RXRX1 : R2059_TXRX0;
+		routing = i ? R2059_C3 : R2059_C2;
 		b43_radio_write(dev, routing | 0x4a, e->radio_rxtx4a);
 		b43_radio_write(dev, routing | 0x58, e->radio_rxtx58);
 		b43_radio_write(dev, routing | 0x5a, e->radio_rxtx5a);
@@ -87,7 +87,7 @@ static void b43_radio_2059_channel_setup(struct b43_wldev *dev,
 
 static void b43_radio_2059_init(struct b43_wldev *dev)
 {
-	const u16 routing[] = { R2059_SYN, R2059_TXRX0, R2059_RXRX1 };
+	const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3 };
 	const u16 radio_values[3][2] = {
 		{ 0x61, 0xE9 }, { 0x69, 0xD5 }, { 0x73, 0x99 },
 	};
@@ -106,17 +106,17 @@ static void b43_radio_2059_init(struct b43_wldev *dev)
 	b43_radio_mask(dev, 0xc0, ~0x0080);
 
 	if (1) { /* FIXME */
-		b43_radio_set(dev, R2059_RXRX1 | 0x4, 0x1);
+		b43_radio_set(dev, R2059_C3 | 0x4, 0x1);
 		udelay(10);
-		b43_radio_set(dev, R2059_RXRX1 | 0x0BF, 0x1);
-		b43_radio_maskset(dev, R2059_RXRX1 | 0x19B, 0x3, 0x2);
+		b43_radio_set(dev, R2059_C3 | 0x0BF, 0x1);
+		b43_radio_maskset(dev, R2059_C3 | 0x19B, 0x3, 0x2);
 
-		b43_radio_set(dev, R2059_RXRX1 | 0x4, 0x2);
+		b43_radio_set(dev, R2059_C3 | 0x4, 0x2);
 		udelay(100);
-		b43_radio_mask(dev, R2059_RXRX1 | 0x4, ~0x2);
+		b43_radio_mask(dev, R2059_C3 | 0x4, ~0x2);
 
 		for (i = 0; i < 10000; i++) {
-			if (b43_radio_read(dev, R2059_RXRX1 | 0x145) & 1) {
+			if (b43_radio_read(dev, R2059_C3 | 0x145) & 1) {
 				i = 0;
 				break;
 			}
@@ -125,7 +125,7 @@ static void b43_radio_2059_init(struct b43_wldev *dev)
 		if (i)
 			b43err(dev->wl, "radio 0x945 timeout\n");
 
-		b43_radio_mask(dev, R2059_RXRX1 | 0x4, ~0x1);
+		b43_radio_mask(dev, R2059_C3 | 0x4, ~0x1);
 		b43_radio_set(dev, 0xa, 0x60);
 
 		for (i = 0; i < 3; i++) {
@@ -397,7 +397,7 @@ static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
 		{ B43_PHY_HT_AFE_C2, B43_PHY_HT_AFE_C2_OVER, },
 		{ B43_PHY_HT_AFE_C3, B43_PHY_HT_AFE_C3_OVER, },
 	};
-	static const u16 radio_r[] = { R2059_SYN, R2059_TXRX0, R2059_RXRX1, };
+	static const u16 radio_r[] = { R2059_C1, R2059_C2, R2059_C3, };
 	int core;
 
 	if (core_sel == 0) {
@@ -417,7 +417,7 @@ static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
 				b43_phy_set(dev, ctl_regs[core][1], 0x1 << 9);
 				b43_phy_set(dev, ctl_regs[core][1], 0x1 << 10);
 
-				b43_radio_set(dev, R2059_RXRX1 | 0xbf, 0x1);
+				b43_radio_set(dev, R2059_C3 | 0xbf, 0x1);
 				b43_radio_write(dev, radio_r[core] | 0x159,
 						0x11);
 				break;
diff --git a/drivers/net/wireless/b43/radio_2059.h b/drivers/net/wireless/b43/radio_2059.h
index e4d69e5..a6a61fb 100644
--- a/drivers/net/wireless/b43/radio_2059.h
+++ b/drivers/net/wireless/b43/radio_2059.h
@@ -5,9 +5,9 @@
 
 #include "phy_ht.h"
 
-#define R2059_SYN			0x000
-#define R2059_TXRX0			0x400
-#define R2059_RXRX1			0x800
+#define R2059_C1			0x000
+#define R2059_C2			0x400
+#define R2059_C3			0x800
 #define R2059_ALL			0xC00
 
 /* Values for various registers uploaded on channel switching */
-- 
1.7.10.4
