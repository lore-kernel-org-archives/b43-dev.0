From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 19:40:45 +0200
Subject: [FIX for 3.16][PATCH] b43: disable 5 GHz on G-PHY
Message-ID: <1401558045-12273-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This fixes regression introduced by adding some G-PHY devices to the
list of dual band devices. There is simply no support for 5 GHz on
G-PHY devices in b43. It results in:
WARNING: CPU: 0 PID: 79 at drivers/net/wireless/b43/phy_g.c:75 b43_gphy_channel_switch+0x125/0x130 [b43]()
b43-phy1 ERROR: PHY init: Channel switch to default failed

Regression was introduced by the following commit:

commit 773cfc508f4d64c14547ff8751b5cbd473124364
Author: Rafa? Mi?ecki <zajec5@gmail.com>
Date:   Mon May 19 23:18:55 2014 +0200

    b43: add more devices to the bands database

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
This fixes regression present in wireless-next.
---
 drivers/net/wireless/b43/main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 3cb8da7..aeb7e39 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5202,6 +5202,7 @@ static int b43_wireless_core_attach(struct b43_wldev *dev)
 	/* We don't support 5 GHz on some PHYs yet */
 	switch (dev->phy.type) {
 	case B43_PHYTYPE_A:
+	case B43_PHYTYPE_G:
 	case B43_PHYTYPE_N:
 	case B43_PHYTYPE_LP:
 	case B43_PHYTYPE_HT:
-- 
1.8.4.5
