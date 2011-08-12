From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 12 Aug 2011 13:13:44 +0200
Subject: [PATCH 1/4] b43: HT-PHY: init: zero EXTG registers
Message-ID: <1313147627-8713-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
I've simply chcked what ndis does after uploading PHY tables:
 phy_read(0x00be) -> 0x0002
phy_write(0x00be) <- 0x0000
 phy_read(0x023f) -> 0x0000
phy_write(0x023f) <- 0x07ff
 phy_read(0x0240) -> 0x0000
phy_write(0x0240) <- 0x07ff
 phy_read(0x0241) -> 0x0000
phy_write(0x0241) <- 0x07ff

phy_write(0x0840) <- 0x0000
phy_write(0x0841) <- 0x0000
phy_write(0x0842) <- 0x0000
phy_write(0x0843) <- 0x0000

phy_write(0x0860) <- 0x0000
phy_write(0x0861) <- 0x0000
phy_write(0x0862) <- 0x0000
phy_write(0x0863) <- 0x0000

phy_write(0x0880) <- 0x0000
phy_write(0x0881) <- 0x0000
phy_write(0x0882) <- 0x0000
phy_write(0x0883) <- 0x0000

phy_write(0x084c) <- 0x0000
phy_write(0x086c) <- 0x0000
phy_write(0x088c) <- 0x0000
---
 drivers/net/wireless/b43/phy_ht.c |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 7c40919..99b3035 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -152,6 +152,24 @@ static void b43_radio_2059_init(struct b43_wldev *dev)
 }
 
 /**************************************************
+ * Various PHY ops
+ **************************************************/
+
+static void b43_phy_ht_zero_extg(struct b43_wldev *dev)
+{
+	u8 i, j;
+	u16 base[] = { 0x40, 0x60, 0x80 };
+
+	for (i = 0; i < ARRAY_SIZE(base); i++) {
+		for (j = 0; j < 4; j++)
+			b43_phy_write(dev, B43_PHY_EXTG(base[i] + j), 0);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(base); i++)
+		b43_phy_write(dev, B43_PHY_EXTG(base[i] + 0xc), 0);
+}
+
+/**************************************************
  * Channel switching ops.
  **************************************************/
 
@@ -257,6 +275,10 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
 {
 	b43_phy_ht_tables_init(dev);
 
+	/* TODO: PHY ops on regs 0x0be, 0x23f 0x240 0x241 */
+
+	b43_phy_ht_zero_extg(dev);
+
 	return 0;
 }
 
-- 
1.7.3.4
