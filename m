From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 17 Jul 2014 19:31:01 +0200
Subject: [PATCH 1/6] b43: N-PHY: fix channel switching with 2 GHz radio 0x2057
Message-ID: <1405618266-20200-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Values were written to wrong registers.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/radio_2057.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/b43/radio_2057.c b/drivers/net/wireless/b43/radio_2057.c
index ca22faa..c9c24b6 100644
--- a/drivers/net/wireless/b43/radio_2057.c
+++ b/drivers/net/wireless/b43/radio_2057.c
@@ -163,12 +163,12 @@ static u16 r2057_rev9_init[][2] = {
 	.radio_vcobuf_tune			= r09,	\
 	.radio_logen_mx2g_tune			= r10,	\
 	.radio_logen_indbuf2g_tune		= r11,	\
-	.radio_lna2g_tune_core0			= r12,	\
-	.radio_txmix2g_tune_boost_pu_core0	= r13,	\
-	.radio_pad2g_tune_pus_core0		= r14,	\
-	.radio_lna2g_tune_core1			= r15,	\
-	.radio_txmix2g_tune_boost_pu_core1	= r16,	\
-	.radio_pad2g_tune_pus_core1		= r17
+	.radio_txmix2g_tune_boost_pu_core0	= r12,	\
+	.radio_pad2g_tune_pus_core0		= r13,	\
+	.radio_lna2g_tune_core0			= r14,	\
+	.radio_txmix2g_tune_boost_pu_core1	= r15,	\
+	.radio_pad2g_tune_pus_core1		= r16,	\
+	.radio_lna2g_tune_core1			= r17
 
 #define PHYREGS(r0, r1, r2, r3, r4, r5)	\
 	.phy_regs.phy_bw1a	= r0,	\
-- 
1.8.4.5
