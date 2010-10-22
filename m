From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 22 Oct 2010 17:43:48 +0200
Subject: [PATCH 4/5] b43: N-PHY: determine usage of radio regulatory
	workaround correctly
In-Reply-To: <1287762229-16516-2-git-send-email-zajec5@gmail.com>
References: <1287762229-16516-2-git-send-email-zajec5@gmail.com>
Message-ID: <1287762229-16516-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index e0f2d12..c22dbfb 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -191,7 +191,8 @@ static void b43_radio_init2055_post(struct b43_wldev *dev)
 				binfo->type != 0x46D ||
 				binfo->rev < 0x41);
 	else
-		workaround = ((sprom->boardflags_hi & B43_BFH_NOPA) == 0);
+		workaround =
+			!(sprom->boardflags2_lo & B43_BFL2_RXBB_INT_REG_DIS);
 
 	b43_radio_mask(dev, B2055_MASTER1, 0xFFF3);
 	if (workaround) {
-- 
1.7.1
