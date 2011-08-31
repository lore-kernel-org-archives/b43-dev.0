From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 31 Aug 2011 23:36:19 +0200
Subject: [PATCH 4/6] b43: LCN-PHY: upload additional 0x7 table
In-Reply-To: <1314826581-27852-1-git-send-email-zajec5@gmail.com>
References: <1314826581-27852-1-git-send-email-zajec5@gmail.com>
Message-ID: <1314826581-27852-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/tables_phy_lcn.c |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/tables_phy_lcn.c b/drivers/net/wireless/b43/tables_phy_lcn.c
index 95efea6..fd2b16d 100644
--- a/drivers/net/wireless/b43/tables_phy_lcn.c
+++ b/drivers/net/wireless/b43/tables_phy_lcn.c
@@ -295,6 +295,20 @@ static const u32 b43_lcntab_0x18[] = {
 	0x00080000, 0x00080000, 0x00080000, 0x00080000,
 };
 
+const u16 b43_lcntab_0x0f_late[] = {
+	0x0002, 0x0008, 0x0004, 0x0001, 0x0002, 0x0008,
+	0x0004, 0x0001, 0x0002, 0x0008, 0x0004, 0x0001,
+	0x0002, 0x0008, 0x0004, 0x0001, 0x0002, 0x0008,
+	0x0004, 0x0001, 0x0002, 0x0008, 0x0004, 0x0001,
+	0x0002, 0x0008, 0x0004, 0x0001, 0x0002, 0x0008,
+	0x0004, 0x0001, 0x0002, 0x0008, 0x0004, 0x0001,
+	0x0002, 0x0008, 0x0004, 0x0001, 0x0002, 0x0008,
+	0x0004, 0x0001, 0x0002, 0x0008, 0x0004, 0x0001,
+	0x0002, 0x0008, 0x0004, 0x0001, 0x0002, 0x0008,
+	0x0004, 0x0001, 0x0002, 0x0008, 0x0004, 0x0001,
+	0x0002, 0x0008, 0x0004, 0x0001,
+};
+
 /**************************************************
  * R/W ops.
  **************************************************/
@@ -486,6 +500,9 @@ void b43_phy_lcn_tables_init(struct b43_wldev *dev)
 {
 	b43_phy_lcn_upload_static_tables(dev);
 	/* TODO: various tables ops here */
+	b43_lcntab_write_bulk(dev, B43_LCNTAB16(0xf, 0),
+			ARRAY_SIZE(b43_lcntab_0x0f_late), b43_lcntab_0x0f_late);
+	/* TODO: various tables ops here */
 	b43_phy_lcn_rewrite_tables(dev);
 	b43_phy_lcn_clean_0x18_table(dev);
 }
-- 
1.7.3.4
