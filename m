From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 18 Mar 2013 07:45:17 +0100
Subject: [PATCH 1/2] b43: HT-PHY: define regs for power estimation
Message-ID: <1363589118-19717-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

In MMIO dumps of ndiswrapper there are following PHY ops:
phy_read(0x0118) -> 0x013d
phy_read(0x01ed) -> 0x993d
phy_read(0x0119) -> 0x012f
phy_read(0x01ee) -> 0x992f
phy_read(0x011a) -> 0x0139
phy_read(0x0969) -> 0x9939
It matches the code of wlc_phy_txpower_est_power_nphy (from brcm80211),
so we know the registers meaning.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.h |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/wireless/b43/phy_ht.h b/drivers/net/wireless/b43/phy_ht.h
index 9b2408e..6cae370 100644
--- a/drivers/net/wireless/b43/phy_ht.h
+++ b/drivers/net/wireless/b43/phy_ht.h
@@ -23,6 +23,9 @@
 #define B43_PHY_HT_SAMP_WAIT_CNT		0x0C5	/* Sample wait count */
 #define B43_PHY_HT_SAMP_DEP_CNT			0x0C6	/* Sample depth count */
 #define B43_PHY_HT_SAMP_STAT			0x0C7	/* Sample status */
+#define B43_PHY_HT_EST_PWR_C1			0x118
+#define B43_PHY_HT_EST_PWR_C2			0x119
+#define B43_PHY_HT_EST_PWR_C3			0x11A
 #define B43_PHY_HT_TSSIMODE			0x122	/* TSSI mode */
 #define  B43_PHY_HT_TSSIMODE_EN			0x0001	/* TSSI enable */
 #define  B43_PHY_HT_TSSIMODE_PDEN		0x0002	/* Power det enable */
@@ -53,6 +56,8 @@
 #define  B43_PHY_HT_TXPCTL_TARG_PWR_C1_SHIFT	0
 #define  B43_PHY_HT_TXPCTL_TARG_PWR_C2		0xFF00	/* Power 1 */
 #define  B43_PHY_HT_TXPCTL_TARG_PWR_C2_SHIFT	8
+#define B43_PHY_HT_TX_PCTL_STATUS_C1		0x1ED
+#define B43_PHY_HT_TX_PCTL_STATUS_C2		0x1EE
 #define B43_PHY_HT_TXPCTL_CMD_C2		0x222
 #define  B43_PHY_HT_TXPCTL_CMD_C2_INIT		0x007F
 #define B43_PHY_HT_RSSI_C1			0x219
@@ -97,6 +102,7 @@
 #define B43_PHY_HT_TXPCTL_TARG_PWR2		B43_PHY_EXTG(0x166)	/* TX power control target power */
 #define  B43_PHY_HT_TXPCTL_TARG_PWR2_C3		0x00FF
 #define  B43_PHY_HT_TXPCTL_TARG_PWR2_C3_SHIFT	0
+#define B43_PHY_HT_TX_PCTL_STATUS_C3		B43_PHY_EXTG(0x169)
 
 #define B43_PHY_HT_TEST				B43_PHY_N_BMODE(0x00A)
 
-- 
1.7.10.4
