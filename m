From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 11 Dec 2011 02:55:30 +0100
Subject: [PATCH 2/7] b43: N-PHY: update some init values
In-Reply-To: <1323568535-2816-1-git-send-email-zajec5@gmail.com>
References: <1323568535-2816-1-git-send-email-zajec5@gmail.com>
Message-ID: <1323568535-2816-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Changes were obtained from MMIO dump from 5.100.82.112.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c      |   24 ++++++++++++------------
 drivers/net/wireless/b43/radio_2056.c |   10 +++++-----
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index f40d804..f540e48 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1591,18 +1591,18 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 				0x70);
 	}
 
-	b43_phy_write(dev, 0x224, 0x039C);
-	b43_phy_write(dev, 0x225, 0x0357);
-	b43_phy_write(dev, 0x226, 0x0317);
-	b43_phy_write(dev, 0x227, 0x02D7);
-	b43_phy_write(dev, 0x228, 0x039C);
-	b43_phy_write(dev, 0x229, 0x0357);
-	b43_phy_write(dev, 0x22A, 0x0317);
-	b43_phy_write(dev, 0x22B, 0x02D7);
-	b43_phy_write(dev, 0x22C, 0x039C);
-	b43_phy_write(dev, 0x22D, 0x0357);
-	b43_phy_write(dev, 0x22E, 0x0317);
-	b43_phy_write(dev, 0x22F, 0x02D7);
+	b43_phy_write(dev, 0x224, 0x03eb);
+	b43_phy_write(dev, 0x225, 0x03eb);
+	b43_phy_write(dev, 0x226, 0x0341);
+	b43_phy_write(dev, 0x227, 0x0341);
+	b43_phy_write(dev, 0x228, 0x042b);
+	b43_phy_write(dev, 0x229, 0x042b);
+	b43_phy_write(dev, 0x22a, 0x0381);
+	b43_phy_write(dev, 0x22b, 0x0381);
+	b43_phy_write(dev, 0x22c, 0x042b);
+	b43_phy_write(dev, 0x22d, 0x042b);
+	b43_phy_write(dev, 0x22e, 0x0381);
+	b43_phy_write(dev, 0x22f, 0x0381);
 }
 
 static void b43_nphy_workarounds_rev1_2(struct b43_wldev *dev)
diff --git a/drivers/net/wireless/b43/radio_2056.c b/drivers/net/wireless/b43/radio_2056.c
index a01f776..4a42994 100644
--- a/drivers/net/wireless/b43/radio_2056.c
+++ b/drivers/net/wireless/b43/radio_2056.c
@@ -1572,14 +1572,14 @@ static const struct b2056_inittab_entry b2056_inittab_rev6_syn[] = {
 	[B2056_SYN_PLL_XTAL5]		= { .ghz5 = 0x0077, .ghz2 = 0x0077, NOUPLOAD, },
 	[B2056_SYN_PLL_XTAL6]		= { .ghz5 = 0x0007, .ghz2 = 0x0007, NOUPLOAD, },
 	[B2056_SYN_PLL_REFDIV]		= { .ghz5 = 0x0001, .ghz2 = 0x0001, NOUPLOAD, },
-	[B2056_SYN_PLL_PFD]		= { .ghz5 = 0x0004, .ghz2 = 0x0004, NOUPLOAD, },
+	[B2056_SYN_PLL_PFD]		= { .ghz5 = 0x0006, .ghz2 = 0x0006, UPLOAD, },
 	[B2056_SYN_PLL_CP1]		= { .ghz5 = 0x000f, .ghz2 = 0x000f, NOUPLOAD, },
-	[B2056_SYN_PLL_CP2]		= { .ghz5 = 0x0030, .ghz2 = 0x0030, NOUPLOAD, },
+	[B2056_SYN_PLL_CP2]		= { .ghz5 = 0x003f, .ghz2 = 0x003f, UPLOAD, },
 	[B2056_SYN_PLL_CP3]		= { .ghz5 = 0x0032, .ghz2 = 0x0032, NOUPLOAD, },
-	[B2056_SYN_PLL_LOOPFILTER1]	= { .ghz5 = 0x000d, .ghz2 = 0x000d, NOUPLOAD, },
-	[B2056_SYN_PLL_LOOPFILTER2]	= { .ghz5 = 0x000d, .ghz2 = 0x000d, NOUPLOAD, },
+	[B2056_SYN_PLL_LOOPFILTER1]	= { .ghz5 = 0x0006, .ghz2 = 0x0006, UPLOAD, },
+	[B2056_SYN_PLL_LOOPFILTER2]	= { .ghz5 = 0x0006, .ghz2 = 0x0006, UPLOAD, },
 	[B2056_SYN_PLL_LOOPFILTER3]	= { .ghz5 = 0x0004, .ghz2 = 0x0004, NOUPLOAD, },
-	[B2056_SYN_PLL_LOOPFILTER4]	= { .ghz5 = 0x0006, .ghz2 = 0x0006, NOUPLOAD, },
+	[B2056_SYN_PLL_LOOPFILTER4]	= { .ghz5 = 0x002b, .ghz2 = 0x002b, UPLOAD, },
 	[B2056_SYN_PLL_LOOPFILTER5]	= { .ghz5 = 0x0001, .ghz2 = 0x0001, NOUPLOAD, },
 	[B2056_SYN_PLL_MMD1]		= { .ghz5 = 0x001c, .ghz2 = 0x001c, NOUPLOAD, },
 	[B2056_SYN_PLL_MMD2]		= { .ghz5 = 0x0002, .ghz2 = 0x0002, NOUPLOAD, },
-- 
1.7.3.4
