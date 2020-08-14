From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 14 Aug 2020 12:39:33 +0100
Subject: [PATCH 30/30] net: wireless: broadcom: b43: phy_n: Add empty braces
 around empty statements
In-Reply-To: <20200814113933.1903438-1-lee.jones@linaro.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
Message-ID: <20200814113933.1903438-31-lee.jones@linaro.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, Michael Buesch <m@bues.ch>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/net/wireless/broadcom/b43/phy_n.c: In function ?b43_nphy_workarounds_rev3plus?:
 drivers/net/wireless/broadcom/b43/phy_n.c:3346:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]
 drivers/net/wireless/broadcom/b43/phy_n.c: In function ?b43_nphy_spur_workaround?:
 drivers/net/wireless/broadcom/b43/phy_n.c:4608:4: warning: suggest braces around empty body in an ?else? statement [-Wempty-body]
 drivers/net/wireless/broadcom/b43/phy_n.c:4641:4: warning: suggest braces around empty body in an ?else? statement [-Wempty-body]
 drivers/net/wireless/broadcom/b43/phy_n.c: In function ?b43_phy_initn?:
 drivers/net/wireless/broadcom/b43/phy_n.c:6170:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]
 drivers/net/wireless/broadcom/b43/phy_n.c:6215:5: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Michael Buesch <m@bues.ch>
Cc: linux-wireless at vger.kernel.org
Cc: b43-dev at lists.infradead.org
Cc: netdev at vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index ca2018da97538..9e4d61e64adf5 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -3342,8 +3342,9 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 	b43_phy_write(dev, B43_NPHY_ED_CRS20UDEASSERTTHRESH0, 0x0381);
 	b43_phy_write(dev, B43_NPHY_ED_CRS20UDEASSERTTHRESH1, 0x0381);
 
-	if (dev->phy.rev >= 6 && sprom->boardflags2_lo & B43_BFL2_SINGLEANT_CCK)
+	if (dev->phy.rev >= 6 && sprom->boardflags2_lo & B43_BFL2_SINGLEANT_CCK) {
 		; /* TODO: 0x0080000000000000 HF */
+	}
 }
 
 static void b43_nphy_workarounds_rev1_2(struct b43_wldev *dev)
@@ -4602,10 +4603,11 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 
 	if (nphy->gband_spurwar_en) {
 		/* TODO: N PHY Adjust Analog Pfbw (7) */
-		if (channel == 11 && b43_is_40mhz(dev))
+		if (channel == 11 && b43_is_40mhz(dev)) {
 			; /* TODO: N PHY Adjust Min Noise Var(2, tone, noise)*/
-		else
+		} else {
 			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
+		}
 		/* TODO: N PHY Adjust CRS Min Power (0x1E) */
 	}
 
@@ -4635,10 +4637,11 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 			noise[0] = 0;
 		}
 
-		if (!tone[0] && !noise[0])
+		if (!tone[0] && !noise[0]) {
 			; /* TODO: N PHY Adjust Min Noise Var(1, tone, noise)*/
-		else
+		} else {
 			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
+		}
 	}
 
 	if (nphy->hang_avoid)
@@ -6166,8 +6169,9 @@ static int b43_phy_initn(struct b43_wldev *dev)
 
 	if (nphy->phyrxchain != 3)
 		b43_nphy_set_rx_core_state(dev, nphy->phyrxchain);
-	if (nphy->mphase_cal_phase_id > 0)
+	if (nphy->mphase_cal_phase_id > 0) {
 		;/* TODO PHY Periodic Calibration Multi-Phase Restart */
+	}
 
 	do_rssi_cal = false;
 	if (phy->rev >= 3) {
@@ -6211,8 +6215,9 @@ static int b43_phy_initn(struct b43_wldev *dev)
 				if (!b43_nphy_cal_tx_iq_lo(dev, target, true, false))
 					if (b43_nphy_cal_rx_iq(dev, target, 2, 0) == 0)
 						b43_nphy_save_cal(dev);
-			} else if (nphy->mphase_cal_phase_id == 0)
+			} else if (nphy->mphase_cal_phase_id == 0) {
 				;/* N PHY Periodic Calibration with arg 3 */
+			}
 		} else {
 			b43_nphy_restore_cal(dev);
 		}
-- 
2.25.1
