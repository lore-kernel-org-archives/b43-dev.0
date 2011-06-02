From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  2 Jun 2011 13:43:24 +0200
Subject: [PATCH] b43: add BCMA 80211 core specific defines
Message-ID: <1307015004-11076-1-git-send-email-zajec5@gmail.com>
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
index 6c50734..76a7bb5 100644
--- a/drivers/net/wireless/b43/b43.h
+++ b/drivers/net/wireless/b43/b43.h
@@ -416,6 +416,17 @@ enum {
 #define B43_MACCMD_CCA			0x00000008	/* Clear channel assessment */
 #define B43_MACCMD_BGNOISE		0x00000010	/* Background noise */
 
+/* BCMA 802.11 core specific IO Control (BCMA_IOCTL) flags */
+#define B43_BCMA_IOCTL_PHY_CLKEN	0x00000004	/* PHY Clock Enable */
+#define B43_BCMA_IOCTL_PHY_RESET	0x00000008	/* PHY Reset */
+#define B43_BCMA_IOCTL_MACPHYCLKEN	0x00000010	/* MAC PHY Clock Control Enable */
+#define B43_BCMA_IOCTL_PLLREFSEL	0x00000020	/* PLL Frequency Reference Select */
+#define B43_BCMA_IOCTL_PHY_BW		0x000000C0	/* PHY band width and clock speed mask (N-PHY+ only?) */
+#define  B43_BCMA_IOCTL_PHY_BW_10MHZ	0x00000000	/* 10 MHz bandwidth, 40 MHz PHY */
+#define  B43_BCMA_IOCTL_PHY_BW_20MHZ	0x00000040	/* 20 MHz bandwidth, 80 MHz PHY */
+#define  B43_BCMA_IOCTL_PHY_BW_40MHZ	0x00000080	/* 40 MHz bandwidth, 160 MHz PHY */
+#define B43_BCMA_IOCTL_GMODE		0x00002000	/* G Mode Enable */
+
 /* 802.11 core specific TM State Low (SSB_TMSLOW) flags */
 #define B43_TMSLOW_GMODE		0x20000000	/* G Mode Enable */
 #define B43_TMSLOW_PHY_BANDWIDTH	0x00C00000	/* PHY band width and clock speed mask (N-PHY only) */
-- 
1.7.3.4
