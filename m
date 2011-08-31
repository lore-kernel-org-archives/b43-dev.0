From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 31 Aug 2011 23:36:17 +0200
Subject: [PATCH 2/6] b43: LCN-PHY: put tables functions in correct file
In-Reply-To: <1314826581-27852-1-git-send-email-zajec5@gmail.com>
References: <1314826581-27852-1-git-send-email-zajec5@gmail.com>
Message-ID: <1314826581-27852-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_lcn.c        |   10 ----------
 drivers/net/wireless/b43/tables_phy_lcn.c |   17 ++++++++++++++++-
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_lcn.c b/drivers/net/wireless/b43/phy_lcn.c
index b617e1f..9e57577 100644
--- a/drivers/net/wireless/b43/phy_lcn.c
+++ b/drivers/net/wireless/b43/phy_lcn.c
@@ -137,14 +137,6 @@ static void b43_phy_lcn_afe_set_unset(struct b43_wldev *dev)
 	b43_phy_write(dev, B43_PHY_LCN_AFE_CTL1, afe_ctl1);
 }
 
-static void b43_phy_lcn_clean_0x18_table(struct b43_wldev *dev)
-{
-	u8 i;
-
-	for (i = 0; i < 0x80; i++)
-		b43_lcntab_write(dev, B43_LCNTAB32(0x18, i), 0x80000);
-}
-
 static void b43_phy_lcn_clear_0x07_table(struct b43_wldev *dev)
 {
 	u8 i;
@@ -319,8 +311,6 @@ static int b43_phy_lcn_op_init(struct b43_wldev *dev)
 	b43_phy_maskset(dev, 0x663, 0xFF00, 0x64);
 
 	b43_phy_lcn_tables_init(dev);
-	/* TODO: various tables ops here */
-	b43_phy_lcn_clean_0x18_table(dev);
 
 	b43_phy_lcn_pre_radio_init(dev);
 	b43_phy_lcn_clear_0x07_table(dev);
diff --git a/drivers/net/wireless/b43/tables_phy_lcn.c b/drivers/net/wireless/b43/tables_phy_lcn.c
index 916d3f1..f74c00a 100644
--- a/drivers/net/wireless/b43/tables_phy_lcn.c
+++ b/drivers/net/wireless/b43/tables_phy_lcn.c
@@ -445,7 +445,7 @@ void b43_lcntab_write_bulk(struct b43_wldev *dev, u32 offset,
 #define lcntab_upload(dev, offset, data) do { \
 		b43_lcntab_write_bulk(dev, offset, ARRAY_SIZE(data), data); \
 	} while (0)
-void b43_phy_lcn_tables_init(struct b43_wldev *dev)
+static void b43_phy_lcn_upload_static_tables(struct b43_wldev *dev)
 {
 	lcntab_upload(dev, B43_LCNTAB16(0x02, 0), b43_lcntab_0x02);
 	lcntab_upload(dev, B43_LCNTAB16(0x01, 0), b43_lcntab_0x01);
@@ -462,3 +462,18 @@ void b43_phy_lcn_tables_init(struct b43_wldev *dev)
 	lcntab_upload(dev, B43_LCNTAB16(0x00, 0), b43_lcntab_0x00);
 	lcntab_upload(dev, B43_LCNTAB32(0x18, 0), b43_lcntab_0x18);
 }
+
+static void b43_phy_lcn_clean_0x18_table(struct b43_wldev *dev)
+{
+	u8 i;
+
+	for (i = 0; i < 0x80; i++)
+		b43_lcntab_write(dev, B43_LCNTAB32(0x18, i), 0x80000);
+}
+
+void b43_phy_lcn_tables_init(struct b43_wldev *dev)
+{
+	b43_phy_lcn_upload_static_tables(dev);
+	/* TODO: various tables ops here */
+	b43_phy_lcn_clean_0x18_table(dev);
+}
-- 
1.7.3.4
