From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  5 Jul 2011 23:54:07 +0200
Subject: [PATCH 1/2] b43: make b43_wireless_init bus generic
Message-ID: <1309902848-3141-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 834df5a..410b77f 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4959,9 +4959,9 @@ static void b43_wireless_exit(struct b43_bus_dev *dev, struct b43_wl *wl)
 	ieee80211_free_hw(hw);
 }
 
-static struct b43_wl *b43_wireless_init(struct ssb_device *dev)
+static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 {
-	struct ssb_sprom *sprom = &dev->bus->sprom;
+	struct ssb_sprom *sprom = dev->bus_sprom;
 	struct ieee80211_hw *hw;
 	struct b43_wl *wl;
 
@@ -5003,7 +5003,7 @@ static struct b43_wl *b43_wireless_init(struct ssb_device *dev)
 	skb_queue_head_init(&wl->tx_queue);
 
 	b43info(wl, "Broadcom %04X WLAN found (core revision %u)\n",
-		dev->bus->chip_id, dev->id.revision);
+		dev->chip_id, dev->core_rev);
 	return wl;
 }
 
@@ -5045,7 +5045,7 @@ int b43_ssb_probe(struct ssb_device *sdev, const struct ssb_device_id *id)
 		/* Probing the first core. Must setup common struct b43_wl */
 		first = 1;
 		b43_sprom_fixup(sdev->bus);
-		wl = b43_wireless_init(sdev);
+		wl = b43_wireless_init(dev);
 		if (IS_ERR(wl)) {
 			err = PTR_ERR(wl);
 			goto out;
-- 
1.7.3.4
