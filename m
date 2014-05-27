From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 27 May 2014 22:07:31 +0200
Subject: [PATCH 1/3] b43: PHY: allow init optimizations by tracking PHY state
Message-ID: <1401221253-4135-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

PHY has to be often re-initialized (e.g. during band switching after PHY
reset), however some operations have to be performed only once (only
power reset affects them).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c       | 3 +++
 drivers/net/wireless/b43/phy_common.c | 5 +++++
 drivers/net/wireless/b43/phy_common.h | 3 +++
 3 files changed, 11 insertions(+)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 3d67e6b..bf27917 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5164,6 +5164,7 @@ static void b43_supported_bands(struct b43_wldev *dev, bool *have_2ghz_phy,
 static int b43_wireless_core_attach(struct b43_wldev *dev)
 {
 	struct b43_wl *wl = dev->wl;
+	struct b43_phy *phy = &dev->phy;
 	int err;
 	u32 tmp;
 	bool have_2ghz_phy = false, have_5ghz_phy = false;
@@ -5181,6 +5182,8 @@ static int b43_wireless_core_attach(struct b43_wldev *dev)
 		goto out;
 	}
 
+	phy->do_full_init = true;
+
 	/* Try to guess supported bands for the first init needs */
 	switch (dev->dev->bus_type) {
 #ifdef CONFIG_B43_BCMA
diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index fb0dddd..08244b3 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -98,11 +98,14 @@ int b43_phy_init(struct b43_wldev *dev)
 
 	phy->ops->switch_analog(dev, true);
 	b43_software_rfkill(dev, false);
+
 	err = ops->init(dev);
 	if (err) {
 		b43err(dev->wl, "PHY init failed\n");
 		goto err_block_rf;
 	}
+	phy->do_full_init = false;
+
 	/* Make sure to switch hardware and firmware (SHM) to
 	 * the default channel. */
 	err = b43_switch_channel(dev, ops->get_default_chan(dev));
@@ -114,6 +117,7 @@ int b43_phy_init(struct b43_wldev *dev)
 	return 0;
 
 err_phy_exit:
+	phy->do_full_init = true;
 	if (ops->exit)
 		ops->exit(dev);
 err_block_rf:
@@ -127,6 +131,7 @@ void b43_phy_exit(struct b43_wldev *dev)
 	const struct b43_phy_operations *ops = dev->phy.ops;
 
 	b43_software_rfkill(dev, true);
+	dev->phy.do_full_init = true;
 	if (ops->exit)
 		ops->exit(dev);
 }
diff --git a/drivers/net/wireless/b43/phy_common.h b/drivers/net/wireless/b43/phy_common.h
index 47b5585..4ad6240 100644
--- a/drivers/net/wireless/b43/phy_common.h
+++ b/drivers/net/wireless/b43/phy_common.h
@@ -234,6 +234,9 @@ struct b43_phy {
 	/* Is GMODE (2 GHz mode) bit enabled? */
 	bool gmode;
 
+	/* After power reset full init has to be performed */
+	bool do_full_init;
+
 	/* Analog Type */
 	u8 analog;
 	/* B43_PHYTYPE_ */
-- 
1.8.4.5
