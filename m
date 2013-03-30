From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:25 +0100
Subject: [PATCH 6/6] b43: N-PHY: move tables init function to tables file
In-Reply-To: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
References: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
Message-ID: <1364687185-27329-6-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

---
 drivers/net/wireless/b43/phy_n.c       |   12 ------------
 drivers/net/wireless/b43/tables_nphy.c |   13 +++++++++++--
 drivers/net/wireless/b43/tables_nphy.h |    3 +--
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 3d0c6e2..d9334c8d 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -4862,18 +4862,6 @@ static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
  * N-PHY init
  **************************************************/
 
-/*
- * Upload the N-PHY tables.
- * http://bcm-v4.sipsolutions.net/802.11/PHY/N/InitTables
- */
-static void b43_nphy_tables_init(struct b43_wldev *dev)
-{
-	if (dev->phy.rev < 3)
-		b43_nphy_rev0_1_2_tables_init(dev);
-	else
-		b43_nphy_rev3plus_tables_init(dev);
-}
-
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/MIMOConfig */
 static void b43_nphy_update_mimo_config(struct b43_wldev *dev, s32 preamble)
 {
diff --git a/drivers/net/wireless/b43/tables_nphy.c b/drivers/net/wireless/b43/tables_nphy.c
index aaca60c..67a4573 100644
--- a/drivers/net/wireless/b43/tables_nphy.c
+++ b/drivers/net/wireless/b43/tables_nphy.c
@@ -3097,7 +3097,7 @@ void b43_ntab_write_bulk(struct b43_wldev *dev, u32 offset,
 #define ntab_upload(dev, offset, data) do { \
 		b43_ntab_write_bulk(dev, offset, offset##_SIZE, data);	\
 	} while (0)
-void b43_nphy_rev0_1_2_tables_init(struct b43_wldev *dev)
+static void b43_nphy_tables_init_rev0(struct b43_wldev *dev)
 {
 	/* Static tables */
 	ntab_upload(dev, B43_NTAB_FRAMESTRUCT, b43_ntab_framestruct);
@@ -3133,7 +3133,7 @@ void b43_nphy_rev0_1_2_tables_init(struct b43_wldev *dev)
 #define ntab_upload_r3(dev, offset, data) do { \
 		b43_ntab_write_bulk(dev, offset, ARRAY_SIZE(data), data); \
 	} while (0)
-void b43_nphy_rev3plus_tables_init(struct b43_wldev *dev)
+static void b43_nphy_tables_init_rev3(struct b43_wldev *dev)
 {
 	struct ssb_sprom *sprom = dev->dev->bus_sprom;
 
@@ -3174,6 +3174,15 @@ void b43_nphy_rev3plus_tables_init(struct b43_wldev *dev)
 		B43_WARN_ON(1);
 }
 
+/* http://bcm-v4.sipsolutions.net/802.11/PHY/N/InitTables */
+void b43_nphy_tables_init(struct b43_wldev *dev)
+{
+	if (dev->phy.rev >= 3)
+		b43_nphy_tables_init_rev3(dev);
+	else
+		b43_nphy_tables_init_rev0(dev);
+}
+
 /* http://bcm-v4.sipsolutions.net/802.11/PHY/N/GetIpaGainTbl */
 static const u32 *b43_nphy_get_ipa_gain_table(struct b43_wldev *dev)
 {
diff --git a/drivers/net/wireless/b43/tables_nphy.h b/drivers/net/wireless/b43/tables_nphy.h
index c600700..df6c828 100644
--- a/drivers/net/wireless/b43/tables_nphy.h
+++ b/drivers/net/wireless/b43/tables_nphy.h
@@ -182,8 +182,7 @@ void b43_ntab_write(struct b43_wldev *dev, u32 offset, u32 value);
 void b43_ntab_write_bulk(struct b43_wldev *dev, u32 offset,
 			  unsigned int nr_elements, const void *_data);
 
-void b43_nphy_rev0_1_2_tables_init(struct b43_wldev *dev);
-void b43_nphy_rev3plus_tables_init(struct b43_wldev *dev);
+void b43_nphy_tables_init(struct b43_wldev *dev);
 
 const u32 *b43_nphy_get_tx_gain_table(struct b43_wldev *dev);
 
-- 
1.7.10.4
