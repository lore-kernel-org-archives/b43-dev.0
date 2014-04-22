From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 22 Apr 2014 13:54:36 +0200
Subject: [PATCH 2/3] b43: use b43_software_rfkill helper
In-Reply-To: <1398167677-9207-1-git-send-email-zajec5@gmail.com>
References: <1398167677-9207-1-git-send-email-zajec5@gmail.com>
Message-ID: <1398167677-9207-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This removes dealing with pointers directly and allows tracking radio
state with radio_on variable.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_common.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index dbaa518..3e45989 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -96,7 +96,7 @@ int b43_phy_init(struct b43_wldev *dev)
 
 	phy->channel = ops->get_default_chan(dev);
 
-	ops->software_rfkill(dev, false);
+	b43_software_rfkill(dev, false);
 	err = ops->init(dev);
 	if (err) {
 		b43err(dev->wl, "PHY init failed\n");
@@ -116,7 +116,7 @@ err_phy_exit:
 	if (ops->exit)
 		ops->exit(dev);
 err_block_rf:
-	ops->software_rfkill(dev, true);
+	b43_software_rfkill(dev, true);
 
 	return err;
 }
@@ -125,7 +125,7 @@ void b43_phy_exit(struct b43_wldev *dev)
 {
 	const struct b43_phy_operations *ops = dev->phy.ops;
 
-	ops->software_rfkill(dev, true);
+	b43_software_rfkill(dev, true);
 	if (ops->exit)
 		ops->exit(dev);
 }
-- 
1.8.4.5
