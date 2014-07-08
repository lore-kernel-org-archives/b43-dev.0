From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  8 Jul 2014 15:11:04 +0200
Subject: [PATCH 1/7] b43: N-PHY: drop reg 0x1 access restriction on new PHY
 revs
Message-ID: <1404825070-5243-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Initialization of N-PHY radio revs 5 and 7 requires writing to 0x1.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 50ca6f8..1dba640 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -5834,7 +5834,7 @@ static void b43_nphy_op_maskset(struct b43_wldev *dev, u16 reg, u16 mask,
 static u16 b43_nphy_op_radio_read(struct b43_wldev *dev, u16 reg)
 {
 	/* Register 1 is a 32-bit register. */
-	B43_WARN_ON(reg == 1);
+	B43_WARN_ON(dev->phy.rev < 7 && reg == 1);
 
 	if (dev->phy.rev >= 7)
 		reg |= 0x200; /* Radio 0x2057 */
@@ -5848,7 +5848,7 @@ static u16 b43_nphy_op_radio_read(struct b43_wldev *dev, u16 reg)
 static void b43_nphy_op_radio_write(struct b43_wldev *dev, u16 reg, u16 value)
 {
 	/* Register 1 is a 32-bit register. */
-	B43_WARN_ON(reg == 1);
+	B43_WARN_ON(dev->phy.rev < 7 && reg == 1);
 
 	b43_write16(dev, B43_MMIO_RADIO_CONTROL, reg);
 	b43_write16(dev, B43_MMIO_RADIO_DATA_LOW, value);
-- 
1.8.4.5
