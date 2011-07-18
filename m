From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 18 Jul 2011 22:45:58 +0200
Subject: [PATCH] b43: correctly display longer chipsets ids
Message-ID: <1311021958-6758-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Pavel Roskin <proski@gnu.org>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Some of the newer Broadcom chipsets have longe names like BCM43224,
BCM43225, etc. However Broadcom decided to keep using u16 for storing
them. Use %X or %d depending on chip_id value to avoid BCMA8D8, etc.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
V final: Use snprintf instead of duplicating whole string with %d vs. %X.
Thanks Pavel.
---
 drivers/net/wireless/b43/main.c |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 22f20e1..08cd8db 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5164,6 +5164,7 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 	struct ssb_sprom *sprom = dev->bus_sprom;
 	struct ieee80211_hw *hw;
 	struct b43_wl *wl;
+	char chip_name[6];
 
 	hw = ieee80211_alloc_hw(sizeof(*wl), &b43_hw_ops);
 	if (!hw) {
@@ -5202,8 +5203,10 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 	INIT_WORK(&wl->tx_work, b43_tx_work);
 	skb_queue_head_init(&wl->tx_queue);
 
-	b43info(wl, "Broadcom %04X WLAN found (core revision %u)\n",
-		dev->chip_id, dev->core_rev);
+	snprintf(chip_name, ARRAY_SIZE(chip_name),
+		 (dev->chip_id > 0x9999) ? "%d" : "%04X", dev->chip_id);
+	b43info(wl, "Broadcom %s WLAN found (core revision %u)\n", chip_name,
+		dev->core_rev);
 	return wl;
 }
 
-- 
1.7.3.4
