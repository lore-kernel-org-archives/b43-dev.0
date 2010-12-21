From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 21 Dec 2010 21:29:44 +0100
Subject: [PATCH] b43: N-PHY: enable support for PHYs rev 3 and higher
Message-ID: <1292963384-23684-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
John: can we still make it for 2.6.38 merge? It was tested with 14e4:432b,
support seems to be on the same level as for PHYs 1 and 2.
---
 drivers/net/wireless/b43/main.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 5fb0bc6..22bc9f1 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4056,7 +4056,7 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 		break;
 #ifdef CONFIG_B43_PHY_N
 	case B43_PHYTYPE_N:
-		if (phy_rev > 2)
+		if (phy_rev > 9)
 			unsupported = 1;
 		break;
 #endif
-- 
1.6.3.3
