From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 28 Aug 2011 14:28:43 +0200
Subject: [PATCH 1/3] b43: LCN-PHY: add R/W ops for PHY and radio
Message-ID: <1314534525-4475-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_lcn.c |   42 ++++++++++++++++++++++++++++++++++-
 1 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_lcn.c b/drivers/net/wireless/b43/phy_lcn.c
index 4b2cd6d..cf75d3d 100644
--- a/drivers/net/wireless/b43/phy_lcn.c
+++ b/drivers/net/wireless/b43/phy_lcn.c
@@ -233,6 +233,46 @@ static void b43_phy_lcn_op_adjust_txpower(struct b43_wldev *dev)
 }
 
 /**************************************************
+ * R/W ops.
+ **************************************************/
+
+static u16 b43_phy_lcn_op_read(struct b43_wldev *dev, u16 reg)
+{
+	b43_write16(dev, B43_MMIO_PHY_CONTROL, reg);
+	return b43_read16(dev, B43_MMIO_PHY_DATA);
+}
+
+static void b43_phy_lcn_op_write(struct b43_wldev *dev, u16 reg, u16 value)
+{
+	b43_write16(dev, B43_MMIO_PHY_CONTROL, reg);
+	b43_write16(dev, B43_MMIO_PHY_DATA, value);
+}
+
+static void b43_phy_lcn_op_maskset(struct b43_wldev *dev, u16 reg, u16 mask,
+				   u16 set)
+{
+	b43_write16(dev, B43_MMIO_PHY_CONTROL, reg);
+	b43_write16(dev, B43_MMIO_PHY_DATA,
+		    (b43_read16(dev, B43_MMIO_PHY_DATA) & mask) | set);
+}
+
+static u16 b43_phy_lcn_op_radio_read(struct b43_wldev *dev, u16 reg)
+{
+	/* LCN-PHY needs 0x200 for read access */
+	reg |= 0x200;
+
+	b43_write16(dev, B43_MMIO_RADIO24_CONTROL, reg);
+	return b43_read16(dev, B43_MMIO_RADIO24_DATA);
+}
+
+static void b43_phy_lcn_op_radio_write(struct b43_wldev *dev, u16 reg,
+				       u16 value)
+{
+	b43_write16(dev, B43_MMIO_RADIO24_CONTROL, reg);
+	b43_write16(dev, B43_MMIO_RADIO24_DATA, value);
+}
+
+/**************************************************
  * PHY ops struct.
  **************************************************/
 
@@ -241,13 +281,11 @@ const struct b43_phy_operations b43_phyops_lcn = {
 	.free			= b43_phy_lcn_op_free,
 	.prepare_structs	= b43_phy_lcn_op_prepare_structs,
 	.init			= b43_phy_lcn_op_init,
-	/*
 	.phy_read		= b43_phy_lcn_op_read,
 	.phy_write		= b43_phy_lcn_op_write,
 	.phy_maskset		= b43_phy_lcn_op_maskset,
 	.radio_read		= b43_phy_lcn_op_radio_read,
 	.radio_write		= b43_phy_lcn_op_radio_write,
-	*/
 	.software_rfkill	= b43_phy_lcn_op_software_rfkill,
 	.switch_analog		= b43_phy_lcn_op_switch_analog,
 	/*
-- 
1.7.3.4
