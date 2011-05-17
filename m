From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 17 May 2011 14:00:01 +0200
Subject: [PATCH 2/3] b43: make b43_wireless_init less bus specific
In-Reply-To: <1305633602-4590-1-git-send-email-zajec5@gmail.com>
References: <1305633602-4590-1-git-send-email-zajec5@gmail.com>
Message-ID: <1305633602-4590-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   23 ++++++++++-------------
 1 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 38b6578..f45db3f 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4926,19 +4926,16 @@ static void b43_wireless_exit(struct ssb_device *dev, struct b43_wl *wl)
 	ieee80211_free_hw(hw);
 }
 
-static int b43_wireless_init(struct ssb_device *dev)
+static struct b43_wl *b43_wireless_init(struct ssb_device *dev)
 {
 	struct ssb_sprom *sprom = &dev->bus->sprom;
 	struct ieee80211_hw *hw;
 	struct b43_wl *wl;
-	int err = -ENOMEM;
-
-	b43_sprom_fixup(dev->bus);
 
 	hw = ieee80211_alloc_hw(sizeof(*wl), &b43_hw_ops);
 	if (!hw) {
 		b43err(NULL, "Could not allocate ieee80211 device\n");
-		goto out;
+		return ERR_PTR(-ENOMEM);
 	}
 	wl = hw_to_b43_wl(hw);
 
@@ -4972,12 +4969,9 @@ static int b43_wireless_init(struct ssb_device *dev)
 	INIT_WORK(&wl->tx_work, b43_tx_work);
 	skb_queue_head_init(&wl->tx_queue);
 
-	ssb_set_devtypedata(dev, wl);
 	b43info(wl, "Broadcom %04X WLAN found (core revision %u)\n",
 		dev->bus->chip_id, dev->id.revision);
-	err = 0;
-out:
-	return err;
+	return wl;
 }
 
 static int b43_ssb_probe(struct ssb_device *dev, const struct ssb_device_id *id)
@@ -4990,11 +4984,14 @@ static int b43_ssb_probe(struct ssb_device *dev, const struct ssb_device_id *id)
 	if (!wl) {
 		/* Probing the first core. Must setup common struct b43_wl */
 		first = 1;
-		err = b43_wireless_init(dev);
-		if (err)
+		b43_sprom_fixup(dev->bus);
+		wl = b43_wireless_init(dev);
+		if (IS_ERR(wl)) {
+			err = PTR_ERR(wl);
 			goto out;
-		wl = ssb_get_devtypedata(dev);
-		B43_WARN_ON(!wl);
+		}
+		ssb_set_devtypedata(dev, wl);
+		B43_WARN_ON(ssb_get_devtypedata(dev) != wl);
 	}
 	err = b43_one_core_attach(dev, wl);
 	if (err)
-- 
1.7.3.4
