From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon,  9 May 2011 00:21:18 +0200
Subject: [PATCH V2] b43: trivial: include ssb word in ssb specific functions
Message-ID: <1304893278-32318-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This can be helpful when we decide to add support for other buses.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
V2: commit message typo
---
 drivers/net/wireless/b43/main.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index b02fbab..fd8bd98 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4959,7 +4959,7 @@ out:
 	return err;
 }
 
-static int b43_probe(struct ssb_device *dev, const struct ssb_device_id *id)
+static int b43_ssb_probe(struct ssb_device *dev, const struct ssb_device_id *id)
 {
 	struct b43_wl *wl;
 	int err;
@@ -4997,7 +4997,7 @@ static int b43_probe(struct ssb_device *dev, const struct ssb_device_id *id)
 	return err;
 }
 
-static void b43_remove(struct ssb_device *dev)
+static void b43_ssb_remove(struct ssb_device *dev)
 {
 	struct b43_wl *wl = ssb_get_devtypedata(dev);
 	struct b43_wldev *wldev = ssb_get_drvdata(dev);
@@ -5040,8 +5040,8 @@ void b43_controller_restart(struct b43_wldev *dev, const char *reason)
 static struct ssb_driver b43_ssb_driver = {
 	.name		= KBUILD_MODNAME,
 	.id_table	= b43_ssb_tbl,
-	.probe		= b43_probe,
-	.remove		= b43_remove,
+	.probe		= b43_ssb_probe,
+	.remove		= b43_ssb_remove,
 };
 
 static void b43_print_driverinfo(void)
-- 
1.7.3.4
