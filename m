From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 20 Dec 2011 22:45:48 +0100
Subject: [PATCH 2/3] b43: N-PHY: fix success condition of running samples
In-Reply-To: <1324417549-5545-1-git-send-email-zajec5@gmail.com>
References: <1324417549-5545-1-git-send-email-zajec5@gmail.com>
Message-ID: <1324417549-5545-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 52503c6..da6fa03 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -956,7 +956,7 @@ static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
 			b43_phy_write(dev, B43_NPHY_SAMP_CMD, 1);
 	}
 	for (i = 0; i < 100; i++) {
-		if (b43_phy_read(dev, B43_NPHY_RFSEQST) & 1) {
+		if (!(b43_phy_read(dev, B43_NPHY_RFSEQST) & 1)) {
 			i = 0;
 			break;
 		}
-- 
1.7.3.4
