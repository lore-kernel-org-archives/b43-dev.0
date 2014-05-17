From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 17 May 2014 23:24:54 +0200
Subject: [next][PATCH 2/4] b43: move PHY reset code into PHY specific file
In-Reply-To: <1400361896-7345-1-git-send-email-zajec5@gmail.com>
References: <1400361896-7345-1-git-send-email-zajec5@gmail.com>
Message-ID: <1400361896-7345-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c       | 35 +----------------------------------
 drivers/net/wireless/b43/phy_common.c | 33 +++++++++++++++++++++++++++++++++
 drivers/net/wireless/b43/phy_common.h |  2 ++
 3 files changed, 36 insertions(+), 34 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index d670c87..43fbb88 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -3706,39 +3706,6 @@ static void b43_op_set_tsf(struct ieee80211_hw *hw,
 	mutex_unlock(&wl->mutex);
 }
 
-static void b43_put_phy_into_reset(struct b43_wldev *dev)
-{
-#ifdef CONFIG_B43_SSB
-	u32 tmp;
-#endif
-
-	switch (dev->dev->bus_type) {
-#ifdef CONFIG_B43_BCMA
-	case B43_BUS_BCMA:
-		b43err(dev->wl,
-		       "Putting PHY into reset not supported on BCMA\n");
-		break;
-#endif
-#ifdef CONFIG_B43_SSB
-	case B43_BUS_SSB:
-		tmp = ssb_read32(dev->dev->sdev, SSB_TMSLOW);
-		tmp &= ~B43_TMSLOW_GMODE;
-		tmp |= B43_TMSLOW_PHYRESET;
-		tmp |= SSB_TMSLOW_FGC;
-		ssb_write32(dev->dev->sdev, SSB_TMSLOW, tmp);
-		msleep(1);
-
-		tmp = ssb_read32(dev->dev->sdev, SSB_TMSLOW);
-		tmp &= ~SSB_TMSLOW_FGC;
-		tmp |= B43_TMSLOW_PHYRESET;
-		ssb_write32(dev->dev->sdev, SSB_TMSLOW, tmp);
-		msleep(1);
-
-		break;
-#endif
-	}
-}
-
 static const char *band_to_string(enum ieee80211_band band)
 {
 	switch (band) {
@@ -3804,7 +3771,7 @@ static int b43_switch_band(struct b43_wl *wl, struct ieee80211_channel *chan)
 	if (down_dev != up_dev) {
 		/* We switch to a different core, so we put PHY into
 		 * RESET on the old core. */
-		b43_put_phy_into_reset(down_dev);
+		b43_phy_put_into_reset(down_dev);
 	}
 
 	/* Now start the new core. */
diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index 3e45989..85773a4 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -312,6 +312,39 @@ void b43_phy_maskset(struct b43_wldev *dev, u16 offset, u16 mask, u16 set)
 	}
 }
 
+void b43_phy_put_into_reset(struct b43_wldev *dev)
+{
+#ifdef CONFIG_B43_SSB
+	u32 tmp;
+#endif
+
+	switch (dev->dev->bus_type) {
+#ifdef CONFIG_B43_BCMA
+	case B43_BUS_BCMA:
+		b43err(dev->wl,
+		       "Putting PHY into reset not supported on BCMA\n");
+		break;
+#endif
+#ifdef CONFIG_B43_SSB
+	case B43_BUS_SSB:
+		tmp = ssb_read32(dev->dev->sdev, SSB_TMSLOW);
+		tmp &= ~B43_TMSLOW_GMODE;
+		tmp |= B43_TMSLOW_PHYRESET;
+		tmp |= SSB_TMSLOW_FGC;
+		ssb_write32(dev->dev->sdev, SSB_TMSLOW, tmp);
+		msleep(1);
+
+		tmp = ssb_read32(dev->dev->sdev, SSB_TMSLOW);
+		tmp &= ~SSB_TMSLOW_FGC;
+		tmp |= B43_TMSLOW_PHYRESET;
+		ssb_write32(dev->dev->sdev, SSB_TMSLOW, tmp);
+		msleep(1);
+
+		break;
+#endif
+	}
+}
+
 int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
 {
 	struct b43_phy *phy = &(dev->phy);
diff --git a/drivers/net/wireless/b43/phy_common.h b/drivers/net/wireless/b43/phy_common.h
index f1b9993..4f0fcec 100644
--- a/drivers/net/wireless/b43/phy_common.h
+++ b/drivers/net/wireless/b43/phy_common.h
@@ -390,6 +390,8 @@ void b43_phy_lock(struct b43_wldev *dev);
  */
 void b43_phy_unlock(struct b43_wldev *dev);
 
+void b43_phy_put_into_reset(struct b43_wldev *dev);
+
 /**
  * b43_switch_channel - Switch to another channel
  */
-- 
1.8.4.5
