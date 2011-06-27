From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 27 Jun 2011 14:58:53 +0200
Subject: [PATCH 4/5] b43: HT-PHY: implement lacking 0x908 PHY reg op
In-Reply-To: <1309179534-8081-1-git-send-email-zajec5@gmail.com>
References: <1309179534-8081-1-git-send-email-zajec5@gmail.com>
Message-ID: <1309179534-8081-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
As always, I've hacked MMIO ops to return 0xFFFF for 0x908 PHY reg.
This allowed finding masks used by closed source driver.

At the beginning 0x908 PHY reg ops are following:
 phy_read(0x0908) -> 0xffff
phy_write(0x0908) <- 0x0002
(...)
 phy_read(0x0908) -> 0xffff
phy_write(0x0908) <- 0x0020
(...)
 phy_read(0x0908) -> 0xffff
phy_write(0x0908) <- 0x0200

Later this is always like this:
 phy_read(0x0908) -> 0xffff
phy_write(0x0908) <- 0x0000

We do not know the proper condition yet, let's use FIXME for it.
---
 drivers/net/wireless/b43/phy_ht.c |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 42bea30..3bc1fe7 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -104,9 +104,14 @@ static void b43_phy_ht_channel_setup(struct b43_wldev *dev,
 
 	/* TODO: separated function? */
 	for (i = 0; i < 3; i++) {
+		u16 mask;
 		u32 tmp = b43_httab_read(dev, B43_HTTAB32(26, 0xE8));
 
-		/* TODO: some op on PHY reg 0x908 */
+		if (0) /* FIXME */
+			mask = ~(0x2 << (i * 4));
+		else
+			mask = ~0;
+		b43_phy_mask(dev, B43_PHY_EXTG(0x108), mask);
 
 		b43_httab_write(dev, B43_HTTAB16(7, 0x110 + i), tmp >> 16);
 		b43_httab_write(dev, B43_HTTAB8(13, 0x63 + (i * 4)),
-- 
1.7.1
