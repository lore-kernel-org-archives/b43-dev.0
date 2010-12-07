From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  7 Dec 2010 21:55:59 +0100
Subject: [PATCH 3/4] b43: fix split of N-PHY devices into supported and not
	(based on PHY rev)
In-Reply-To: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
Message-ID: <1291755360-21570-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c  |    2 +-
 drivers/net/wireless/b43/phy_n.c |    1 -
 2 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 670fd7b..4d97aac 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4054,7 +4054,7 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 		break;
 #ifdef CONFIG_B43_NPHY
 	case B43_PHYTYPE_N:
-		if (phy_rev > 4)
+		if (phy_rev > 2)
 			unsupported = 1;
 		break;
 #endif
diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 3517341..61875c8 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -3515,7 +3515,6 @@ int b43_phy_initn(struct b43_wldev *dev)
 	if (phy->rev >= 3)
 		b43_nphy_spur_workaround(dev);
 
-	b43err(dev->wl, "IEEE 802.11n devices are not supported, yet.\n");
 	return 0;
 }
 
-- 
1.6.3.3
