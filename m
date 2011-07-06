From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Jul 2011 15:45:28 +0200
Subject: [PATCH 3/3] b43: bus: add helpers for getting/setting wldev from/in
	bus core
In-Reply-To: <1309959928-5731-1-git-send-email-zajec5@gmail.com>
References: <1309959928-5731-1-git-send-email-zajec5@gmail.com>
Message-ID: <1309959928-5731-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/bus.c  |   29 +++++++++++++++++++++++++++++
 drivers/net/wireless/b43/bus.h  |    3 +++
 drivers/net/wireless/b43/main.c |    6 +++---
 3 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/bus.c b/drivers/net/wireless/b43/bus.c
index f56604f..77ac7e5 100644
--- a/drivers/net/wireless/b43/bus.c
+++ b/drivers/net/wireless/b43/bus.c
@@ -225,3 +225,32 @@ struct b43_bus_dev *b43_bus_dev_ssb_init(struct ssb_device *sdev)
 	return dev;
 }
 #endif /* CONFIG_B43_SSB */
+
+void *b43_bus_get_wldev(struct b43_bus_dev *dev)
+{
+	switch (dev->bus_type) {
+#ifdef CONFIG_B43_BCMA
+	case B43_BUS_BCMA:
+		return bcma_get_drvdata(dev->bdev);
+#endif
+#ifdef CONFIG_B43_SSB
+	case B43_BUS_SSB:
+		return ssb_get_drvdata(dev->sdev);
+#endif
+	}
+	return NULL;
+}
+
+void b43_bus_set_wldev(struct b43_bus_dev *dev, void *wldev)
+{
+	switch (dev->bus_type) {
+#ifdef CONFIG_B43_BCMA
+	case B43_BUS_BCMA:
+		bcma_set_drvdata(dev->bdev, wldev);
+#endif
+#ifdef CONFIG_B43_SSB
+	case B43_BUS_SSB:
+		ssb_set_drvdata(dev->sdev, wldev);
+#endif
+	}
+}
diff --git a/drivers/net/wireless/b43/bus.h b/drivers/net/wireless/b43/bus.h
index f3c30eb..184c956 100644
--- a/drivers/net/wireless/b43/bus.h
+++ b/drivers/net/wireless/b43/bus.h
@@ -64,4 +64,7 @@ static inline bool b43_bus_host_is_sdio(struct b43_bus_dev *dev)
 struct b43_bus_dev *b43_bus_dev_bcma_init(struct bcma_device *core);
 struct b43_bus_dev *b43_bus_dev_ssb_init(struct ssb_device *sdev);
 
+void *b43_bus_get_wldev(struct b43_bus_dev *dev);
+void b43_bus_set_wldev(struct b43_bus_dev *dev, void *data);
+
 #endif /* B43_BUS_H_ */
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index f80a53d..f0b9dd1 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5000,13 +5000,13 @@ static void b43_one_core_detach(struct b43_bus_dev *dev)
 	/* Do not cancel ieee80211-workqueue based work here.
 	 * See comment in b43_remove(). */
 
-	wldev = ssb_get_drvdata(dev->sdev);
+	wldev = b43_bus_get_wldev(dev);
 	wl = wldev->wl;
 	b43_debugfs_remove_device(wldev);
 	b43_wireless_core_detach(wldev);
 	list_del(&wldev->list);
 	wl->nr_devs--;
-	ssb_set_drvdata(dev->sdev, NULL);
+	b43_bus_set_wldev(dev, NULL);
 	kfree(wldev);
 }
 
@@ -5032,7 +5032,7 @@ static int b43_one_core_attach(struct b43_bus_dev *dev, struct b43_wl *wl)
 
 	list_add(&wldev->list, &wl->devlist);
 	wl->nr_devs++;
-	ssb_set_drvdata(dev->sdev, wldev);
+	b43_bus_set_wldev(dev, wldev);
 	b43_debugfs_add_device(wldev);
 
       out:
-- 
1.7.3.4
