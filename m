From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 22 Dec 2011 00:47:16 +0100
Subject: [PATCH 1/4] b43: add lacking boardflags defines
Message-ID: <1324511239-3536-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/b43.h |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/b43.h b/drivers/net/wireless/b43/b43.h
index f19605e..16e8f80 100644
--- a/drivers/net/wireless/b43/b43.h
+++ b/drivers/net/wireless/b43/b43.h
@@ -191,6 +191,9 @@
 #define B43_BFH_BUCKBOOST		0x0020	/* has buck/booster */
 #define B43_BFH_FEM_BT			0x0040	/* has FEM and switch to share antenna
 						 * with bluetooth */
+#define B43_BFH_NOCBUCK			0x0080
+#define B43_BFH_PALDO			0x0200
+#define B43_BFH_EXTLNA_5GHZ		0x1000	/* has an external LNA (5GHz mode) */
 
 /* SPROM boardflags2_lo values */
 #define B43_BFL2_RXBB_INT_REG_DIS	0x0001	/* external RX BB regulator present */
@@ -204,6 +207,14 @@
 #define B43_BFL2_SKWRKFEM_BRD		0x0100	/* 4321mcm93 uses Skyworks FEM */
 #define B43_BFL2_SPUR_WAR		0x0200	/* has a workaround for clock-harmonic spurs */
 #define B43_BFL2_GPLL_WAR		0x0400	/* altenative G-band PLL settings implemented */
+#define B43_BFL2_SINGLEANT_CCK		0x1000
+#define B43_BFL2_2G_SPUR_WAR		0x2000
+
+/* SPROM boardflags2_hi values */
+#define B43_BFH2_GPLL_WAR2		0x0001
+#define B43_BFH2_IPALVLSHIFT_3P3	0x0002
+#define B43_BFH2_INTERNDET_TXIQCAL	0x0004
+#define B43_BFH2_XTALBUFOUTEN		0x0008
 
 /* GPIO register offset, in both ChipCommon and PCI core. */
 #define B43_GPIO_CONTROL		0x6c
-- 
1.7.3.4
