From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 31 Mar 2013 00:46:21 +0100
Subject: [PATCH 2/6] b43: N-PHY: define missing registers
In-Reply-To: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
References: <1364687185-27329-1-git-send-email-zajec5@gmail.com>
Message-ID: <1364687185-27329-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   74 ++++++++++---------
 drivers/net/wireless/b43/phy_n.h |  146 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 182 insertions(+), 38 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index efc3f9d..8f730c5 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -1974,10 +1974,8 @@ static void b43_nphy_gain_ctl_workarounds_rev3plus(struct b43_wldev *dev)
 	b43_phy_set(dev, B43_NPHY_RXCTL, 0x0040);
 
 	/* Set Clip 2 detect */
-	b43_phy_set(dev, B43_NPHY_C1_CGAINI,
-			B43_NPHY_C1_CGAINI_CL2DETECT);
-	b43_phy_set(dev, B43_NPHY_C2_CGAINI,
-			B43_NPHY_C2_CGAINI_CL2DETECT);
+	b43_phy_set(dev, B43_NPHY_C1_CGAINI, B43_NPHY_C1_CGAINI_CL2DETECT);
+	b43_phy_set(dev, B43_NPHY_C2_CGAINI, B43_NPHY_C2_CGAINI_CL2DETECT);
 
 	b43_radio_write(dev, B2056_RX0 | B2056_RX_BIASPOLE_LNAG1_IDAC,
 			0x17);
@@ -2011,22 +2009,22 @@ static void b43_nphy_gain_ctl_workarounds_rev3plus(struct b43_wldev *dev)
 	b43_ntab_write_bulk(dev, B43_NTAB8(2, 0x40), 6, lpf_bits);
 	b43_ntab_write_bulk(dev, B43_NTAB8(3, 0x40), 6, lpf_bits);
 
-	b43_phy_write(dev, B43_NPHY_C1_INITGAIN, e->init_gain);
-	b43_phy_write(dev, 0x2A7, e->init_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C1_INITGAIN_A, e->init_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C2_INITGAIN_A, e->init_gain);
+
 	b43_ntab_write_bulk(dev, B43_NTAB16(7, 0x106), 2,
 				e->rfseq_init);
 
-	/* TODO: check defines. Do not match variables names */
-	b43_phy_write(dev, B43_NPHY_C1_CLIP1_MEDGAIN, e->cliphi_gain);
-	b43_phy_write(dev, 0x2A9, e->cliphi_gain);
-	b43_phy_write(dev, B43_NPHY_C1_CLIP2_GAIN, e->clipmd_gain);
-	b43_phy_write(dev, 0x2AB, e->clipmd_gain);
-	b43_phy_write(dev, B43_NPHY_C2_CLIP1_HIGAIN, e->cliplo_gain);
-	b43_phy_write(dev, 0x2AD, e->cliplo_gain);
-
-	b43_phy_maskset(dev, 0x27D, 0xFF00, e->crsmin);
-	b43_phy_maskset(dev, 0x280, 0xFF00, e->crsminl);
-	b43_phy_maskset(dev, 0x283, 0xFF00, e->crsminu);
+	b43_phy_write(dev, B43_NPHY_REV3_C1_CLIP_HIGAIN_A, e->cliphi_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C2_CLIP_HIGAIN_A, e->cliphi_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C1_CLIP_MEDGAIN_A, e->clipmd_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C2_CLIP_MEDGAIN_A, e->clipmd_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C1_CLIP_LOGAIN_A, e->cliplo_gain);
+	b43_phy_write(dev, B43_NPHY_REV3_C2_CLIP_LOGAIN_A, e->cliplo_gain);
+
+	b43_phy_maskset(dev, B43_NPHY_CRSMINPOWER0, 0xFF00, e->crsmin);
+	b43_phy_maskset(dev, B43_NPHY_CRSMINPOWERL0, 0xFF00, e->crsminl);
+	b43_phy_maskset(dev, B43_NPHY_CRSMINPOWERU0, 0xFF00, e->crsminu);
 	b43_phy_write(dev, B43_NPHY_C1_NBCLIPTHRES, e->nbclip);
 	b43_phy_write(dev, B43_NPHY_C2_NBCLIPTHRES, e->nbclip);
 	b43_phy_maskset(dev, B43_NPHY_C1_CLIPWBTHRES,
@@ -2208,8 +2206,8 @@ static void b43_nphy_workarounds_rev7plus(struct b43_wldev *dev)
 		b43_phy_maskset(dev, B43_NPHY_FREQGAIN7, 0x80FF, 0x4000);
 	}
 	if (phy->rev <= 8) {
-		b43_phy_write(dev, 0x23F, 0x1B0);
-		b43_phy_write(dev, 0x240, 0x1B0);
+		b43_phy_write(dev, B43_NPHY_FORCEFRONT0, 0x1B0);
+		b43_phy_write(dev, B43_NPHY_FORCEFRONT1, 0x1B0);
 	}
 	if (phy->rev >= 8)
 		b43_phy_maskset(dev, B43_NPHY_TXTAILCNT, ~0xFF, 0x72);
@@ -2226,8 +2224,8 @@ static void b43_nphy_workarounds_rev7plus(struct b43_wldev *dev)
 		b43_nphy_set_rf_sequence(dev, 0, rx2tx_events_ipa,
 				rx2tx_delays_ipa, ARRAY_SIZE(rx2tx_events_ipa));
 
-	b43_phy_maskset(dev, 0x299, 0x3FFF, 0x4000);
-	b43_phy_maskset(dev, 0x29D, 0x3FFF, 0x4000);
+	b43_phy_maskset(dev, B43_NPHY_EPS_OVERRIDEI_0, 0x3FFF, 0x4000);
+	b43_phy_maskset(dev, B43_NPHY_EPS_OVERRIDEI_1, 0x3FFF, 0x4000);
 
 	lpf_20 = b43_nphy_read_lpf_ctl(dev, 0x154);
 	lpf_40 = b43_nphy_read_lpf_ctl(dev, 0x159);
@@ -2494,8 +2492,8 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 	u16 tmp16;
 	u32 tmp32;
 
-	b43_phy_write(dev, 0x23f, 0x1f8);
-	b43_phy_write(dev, 0x240, 0x1f8);
+	b43_phy_write(dev, B43_NPHY_FORCEFRONT0, 0x1f8);
+	b43_phy_write(dev, B43_NPHY_FORCEFRONT1, 0x1f8);
 
 	tmp32 = b43_ntab_read(dev, B43_NTAB32(30, 0));
 	tmp32 &= 0xffffff;
@@ -2508,8 +2506,8 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 	b43_phy_write(dev, B43_NPHY_PHASETR_B1, 0x00CD);
 	b43_phy_write(dev, B43_NPHY_PHASETR_B2, 0x0020);
 
-	b43_phy_write(dev, B43_NPHY_C2_CLIP1_MEDGAIN, 0x000C);
-	b43_phy_write(dev, 0x2AE, 0x000C);
+	b43_phy_write(dev, B43_NPHY_REV3_C1_CLIP_LOGAIN_B, 0x000C);
+	b43_phy_write(dev, B43_NPHY_REV3_C2_CLIP_LOGAIN_B, 0x000C);
 
 	/* TX to RX */
 	b43_nphy_set_rf_sequence(dev, 1, tx2rx_events, tx2rx_delays,
@@ -2534,7 +2532,7 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 		0x2 : 0x9C40;
 	b43_phy_write(dev, B43_NPHY_ENDROP_TLEN, tmp16);
 
-	b43_phy_maskset(dev, 0x294, 0xF0FF, 0x0700);
+	b43_phy_maskset(dev, B43_NPHY_SGILTRNOFFSET, 0xF0FF, 0x0700);
 
 	if (!dev->phy.is_40mhz) {
 		b43_ntab_write(dev, B43_NTAB32(16, 3), 0x18D);
@@ -2586,18 +2584,18 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 	}
 
 	/* Dropped probably-always-true condition */
-	b43_phy_write(dev, 0x224, 0x03eb);
-	b43_phy_write(dev, 0x225, 0x03eb);
-	b43_phy_write(dev, 0x226, 0x0341);
-	b43_phy_write(dev, 0x227, 0x0341);
-	b43_phy_write(dev, 0x228, 0x042b);
-	b43_phy_write(dev, 0x229, 0x042b);
-	b43_phy_write(dev, 0x22a, 0x0381);
-	b43_phy_write(dev, 0x22b, 0x0381);
-	b43_phy_write(dev, 0x22c, 0x042b);
-	b43_phy_write(dev, 0x22d, 0x042b);
-	b43_phy_write(dev, 0x22e, 0x0381);
-	b43_phy_write(dev, 0x22f, 0x0381);
+	b43_phy_write(dev, B43_NPHY_ED_CRS40ASSERTTHRESH0, 0x03eb);
+	b43_phy_write(dev, B43_NPHY_ED_CRS40ASSERTTHRESH1, 0x03eb);
+	b43_phy_write(dev, B43_NPHY_ED_CRS40DEASSERTTHRESH1, 0x0341);
+	b43_phy_write(dev, B43_NPHY_ED_CRS40DEASSERTTHRESH1, 0x0341);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20LASSERTTHRESH0, 0x042b);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20LASSERTTHRESH1, 0x042b);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20LDEASSERTTHRESH0, 0x0381);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20LDEASSERTTHRESH1, 0x0381);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20UASSERTTHRESH0, 0x042b);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20UASSERTTHRESH1, 0x042b);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20UDEASSERTTHRESH0, 0x0381);
+	b43_phy_write(dev, B43_NPHY_ED_CRS20UDEASSERTTHRESH1, 0x0381);
 
 	if (dev->phy.rev >= 6 && sprom->boardflags2_lo & B43_BFL2_SINGLEANT_CCK)
 		; /* TODO: 0x0080000000000000 HF */
diff --git a/drivers/net/wireless/b43/phy_n.h b/drivers/net/wireless/b43/phy_n.h
index 092c014..9a5b6bc 100644
--- a/drivers/net/wireless/b43/phy_n.h
+++ b/drivers/net/wireless/b43/phy_n.h
@@ -54,10 +54,15 @@
 #define  B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT	7
 #define  B43_NPHY_C1_INITGAIN_TRRX		0x1000 /* TR RX index */
 #define  B43_NPHY_C1_INITGAIN_TRTX		0x2000 /* TR TX index */
+#define B43_NPHY_REV3_C1_INITGAIN_A		B43_PHY_N(0x020)
 #define B43_NPHY_C1_CLIP1_HIGAIN		B43_PHY_N(0x021) /* Core 1 clip1 high gain code */
+#define B43_NPHY_REV3_C1_INITGAIN_B		B43_PHY_N(0x021)
 #define B43_NPHY_C1_CLIP1_MEDGAIN		B43_PHY_N(0x022) /* Core 1 clip1 medium gain code */
+#define B43_NPHY_REV3_C1_CLIP_HIGAIN_A		B43_PHY_N(0x022)
 #define B43_NPHY_C1_CLIP1_LOGAIN		B43_PHY_N(0x023) /* Core 1 clip1 low gain code */
+#define B43_NPHY_REV3_C1_CLIP_HIGAIN_B		B43_PHY_N(0x023)
 #define B43_NPHY_C1_CLIP2_GAIN			B43_PHY_N(0x024) /* Core 1 clip2 gain code */
+#define B43_NPHY_REV3_C1_CLIP_MEDGAIN_A		B43_PHY_N(0x024)
 #define B43_NPHY_C1_FILTERGAIN			B43_PHY_N(0x025) /* Core 1 filter gain */
 #define B43_NPHY_C1_LPF_QHPF_BW			B43_PHY_N(0x026) /* Core 1 LPF Q HP F bandwidth */
 #define B43_NPHY_C1_CLIPWBTHRES			B43_PHY_N(0x027) /* Core 1 clip wideband threshold */
@@ -107,10 +112,15 @@
 #define  B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT	7
 #define  B43_NPHY_C2_INITGAIN_TRRX		0x1000 /* TR RX index */
 #define  B43_NPHY_C2_INITGAIN_TRTX		0x2000 /* TR TX index */
+#define B43_NPHY_REV3_C1_CLIP_MEDGAIN_B		B43_PHY_N(0x036)
 #define B43_NPHY_C2_CLIP1_HIGAIN		B43_PHY_N(0x037) /* Core 2 clip1 high gain code */
+#define B43_NPHY_REV3_C1_CLIP_LOGAIN_A		B43_PHY_N(0x037)
 #define B43_NPHY_C2_CLIP1_MEDGAIN		B43_PHY_N(0x038) /* Core 2 clip1 medium gain code */
+#define B43_NPHY_REV3_C1_CLIP_LOGAIN_B		B43_PHY_N(0x038)
 #define B43_NPHY_C2_CLIP1_LOGAIN		B43_PHY_N(0x039) /* Core 2 clip1 low gain code */
+#define B43_NPHY_REV3_C1_CLIP2_GAIN_A		B43_PHY_N(0x039)
 #define B43_NPHY_C2_CLIP2_GAIN			B43_PHY_N(0x03A) /* Core 2 clip2 gain code */
+#define B43_NPHY_REV3_C1_CLIP2_GAIN_B		B43_PHY_N(0x03A)
 #define B43_NPHY_C2_FILTERGAIN			B43_PHY_N(0x03B) /* Core 2 filter gain */
 #define B43_NPHY_C2_LPF_QHPF_BW			B43_PHY_N(0x03C) /* Core 2 LPF Q HP F bandwidth */
 #define B43_NPHY_C2_CLIPWBTHRES			B43_PHY_N(0x03D) /* Core 2 clip wideband threshold */
@@ -706,10 +716,146 @@
 #define B43_NPHY_TXPCTL_INIT			B43_PHY_N(0x222) /* TX power control init */
 #define  B43_NPHY_TXPCTL_INIT_PIDXI1		0x00FF /* Power index init 1 */
 #define  B43_NPHY_TXPCTL_INIT_PIDXI1_SHIFT	0
+#define B43_NPHY_ED_CRSEN			B43_PHY_N(0x223)
+#define B43_NPHY_ED_CRS40ASSERTTHRESH0		B43_PHY_N(0x224)
+#define B43_NPHY_ED_CRS40ASSERTTHRESH1		B43_PHY_N(0x225)
+#define B43_NPHY_ED_CRS40DEASSERTTHRESH0	B43_PHY_N(0x226)
+#define B43_NPHY_ED_CRS40DEASSERTTHRESH1	B43_PHY_N(0x227)
+#define B43_NPHY_ED_CRS20LASSERTTHRESH0		B43_PHY_N(0x228)
+#define B43_NPHY_ED_CRS20LASSERTTHRESH1		B43_PHY_N(0x229)
+#define B43_NPHY_ED_CRS20LDEASSERTTHRESH0	B43_PHY_N(0x22A)
+#define B43_NPHY_ED_CRS20LDEASSERTTHRESH1	B43_PHY_N(0x22B)
+#define B43_NPHY_ED_CRS20UASSERTTHRESH0		B43_PHY_N(0x22C)
+#define B43_NPHY_ED_CRS20UASSERTTHRESH1		B43_PHY_N(0x22D)
+#define B43_NPHY_ED_CRS20UDEASSERTTHRESH0	B43_PHY_N(0x22E)
+#define B43_NPHY_ED_CRS20UDEASSERTTHRESH1	B43_PHY_N(0x22F)
+#define B43_NPHY_ED_CRS				B43_PHY_N(0x230)
+#define B43_NPHY_TIMEOUTEN			B43_PHY_N(0x231)
+#define B43_NPHY_OFDMPAYDECODETIMEOUTLEN	B43_PHY_N(0x232)
+#define B43_NPHY_CCKPAYDECODETIMEOUTLEN		B43_PHY_N(0x233)
+#define B43_NPHY_NONPAYDECODETIMEOUTLEN		B43_PHY_N(0x234)
+#define B43_NPHY_TIMEOUTSTATUS			B43_PHY_N(0x235)
+#define B43_NPHY_RFCTRLCORE0GPIO0		B43_PHY_N(0x236)
+#define B43_NPHY_RFCTRLCORE0GPIO1		B43_PHY_N(0x237)
+#define B43_NPHY_RFCTRLCORE0GPIO2		B43_PHY_N(0x238)
+#define B43_NPHY_RFCTRLCORE0GPIO3		B43_PHY_N(0x239)
+#define B43_NPHY_RFCTRLCORE1GPIO0		B43_PHY_N(0x23A)
+#define B43_NPHY_RFCTRLCORE1GPIO1		B43_PHY_N(0x23B)
+#define B43_NPHY_RFCTRLCORE1GPIO2		B43_PHY_N(0x23C)
+#define B43_NPHY_RFCTRLCORE1GPIO3		B43_PHY_N(0x23D)
+#define B43_NPHY_BPHYTESTCONTROL		B43_PHY_N(0x23E)
+/* REV3+ */
+#define B43_NPHY_FORCEFRONT0			B43_PHY_N(0x23F)
+#define B43_NPHY_FORCEFRONT1			B43_PHY_N(0x240)
+#define B43_NPHY_NORMVARHYSTTH			B43_PHY_N(0x241)
+#define B43_NPHY_TXCCKERROR			B43_PHY_N(0x242)
+#define B43_NPHY_AFESEQINITDACGAIN		B43_PHY_N(0x243)
+#define B43_NPHY_TXANTSWLUT			B43_PHY_N(0x244)
+#define B43_NPHY_CORECONFIG			B43_PHY_N(0x245)
+#define B43_NPHY_ANTENNADIVDWELLTIME		B43_PHY_N(0x246)
+#define B43_NPHY_ANTENNACCKDIVDWELLTIME		B43_PHY_N(0x247)
+#define B43_NPHY_ANTENNADIVBACKOFFGAIN		B43_PHY_N(0x248)
+#define B43_NPHY_ANTENNADIVMINGAIN		B43_PHY_N(0x249)
+#define B43_NPHY_BRDSEL_NORMVARHYSTTH		B43_PHY_N(0x24A)
+#define B43_NPHY_RXANTSWITCHCTRL		B43_PHY_N(0x24B)
+#define B43_NPHY_ENERGYDROPTIMEOUTLEN2		B43_PHY_N(0x24C)
+#define B43_NPHY_ML_LOG_TXEVM0			B43_PHY_N(0x250)
+#define B43_NPHY_ML_LOG_TXEVM1			B43_PHY_N(0x251)
+#define B43_NPHY_ML_LOG_TXEVM2			B43_PHY_N(0x252)
+#define B43_NPHY_ML_LOG_TXEVM3			B43_PHY_N(0x253)
+#define B43_NPHY_ML_LOG_TXEVM4			B43_PHY_N(0x254)
+#define B43_NPHY_ML_LOG_TXEVM5			B43_PHY_N(0x255)
+#define B43_NPHY_ML_LOG_TXEVM6			B43_PHY_N(0x256)
+#define B43_NPHY_ML_LOG_TXEVM7			B43_PHY_N(0x257)
+#define B43_NPHY_ML_SCALE_TWEAK			B43_PHY_N(0x258)
+#define B43_NPHY_MLUA				B43_PHY_N(0x259)
+#define B43_NPHY_ZFUA				B43_PHY_N(0x25A)
+#define B43_NPHY_CHANUPSYM01			B43_PHY_N(0x25B)
+#define B43_NPHY_CHANUPSYM2			B43_PHY_N(0x25C)
+#define B43_NPHY_RXSTRNFILT20NUM00		B43_PHY_N(0x25D)
+#define B43_NPHY_RXSTRNFILT20NUM01		B43_PHY_N(0x25E)
+#define B43_NPHY_RXSTRNFILT20NUM02		B43_PHY_N(0x25F)
+#define B43_NPHY_RXSTRNFILT20DEN00		B43_PHY_N(0x260)
+#define B43_NPHY_RXSTRNFILT20DEN01		B43_PHY_N(0x261)
+#define B43_NPHY_RXSTRNFILT20NUM10		B43_PHY_N(0x262)
+#define B43_NPHY_RXSTRNFILT20NUM11		B43_PHY_N(0x263)
+#define B43_NPHY_RXSTRNFILT20NUM12		B43_PHY_N(0x264)
+#define B43_NPHY_RXSTRNFILT20DEN10		B43_PHY_N(0x265)
+#define B43_NPHY_RXSTRNFILT20DEN11		B43_PHY_N(0x266)
+#define B43_NPHY_RXSTRNFILT40NUM00		B43_PHY_N(0x267)
+#define B43_NPHY_RXSTRNFILT40NUM01		B43_PHY_N(0x268)
+#define B43_NPHY_RXSTRNFILT40NUM02		B43_PHY_N(0x269)
+#define B43_NPHY_RXSTRNFILT40DEN00		B43_PHY_N(0x26A)
+#define B43_NPHY_RXSTRNFILT40DEN01		B43_PHY_N(0x26B)
+#define B43_NPHY_RXSTRNFILT40NUM10		B43_PHY_N(0x26C)
+#define B43_NPHY_RXSTRNFILT40NUM11		B43_PHY_N(0x26D)
+#define B43_NPHY_RXSTRNFILT40NUM12		B43_PHY_N(0x26E)
+#define B43_NPHY_RXSTRNFILT40DEN10		B43_PHY_N(0x26F)
+#define B43_NPHY_RXSTRNFILT40DEN11		B43_PHY_N(0x270)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD1		B43_PHY_N(0x271)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD2		B43_PHY_N(0x272)
+#define B43_NPHY_CRSHIGHLOWPOWTHRESHOLD		B43_PHY_N(0x273)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD1L		B43_PHY_N(0x274)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD2L		B43_PHY_N(0x275)
+#define B43_NPHY_CRSHIGHLOWPOWTHRESHOLDL	B43_PHY_N(0x276)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD1U		B43_PHY_N(0x277)
+#define B43_NPHY_CRSHIGHPOWTHRESHOLD2U		B43_PHY_N(0x278)
+#define B43_NPHY_CRSHIGHLOWPOWTHRESHOLDU	B43_PHY_N(0x279)
+#define B43_NPHY_CRSACIDETECTTHRESH		B43_PHY_N(0x27A)
+#define B43_NPHY_CRSACIDETECTTHRESHL		B43_PHY_N(0x27B)
+#define B43_NPHY_CRSACIDETECTTHRESHU		B43_PHY_N(0x27C)
+#define B43_NPHY_CRSMINPOWER0			B43_PHY_N(0x27D)
+#define B43_NPHY_CRSMINPOWER1			B43_PHY_N(0x27E)
+#define B43_NPHY_CRSMINPOWER2			B43_PHY_N(0x27F)
+#define B43_NPHY_CRSMINPOWERL0			B43_PHY_N(0x280)
+#define B43_NPHY_CRSMINPOWERL1			B43_PHY_N(0x281)
+#define B43_NPHY_CRSMINPOWERL2			B43_PHY_N(0x282)
+#define B43_NPHY_CRSMINPOWERU0			B43_PHY_N(0x283)
+#define B43_NPHY_CRSMINPOWERU1			B43_PHY_N(0x284)
+#define B43_NPHY_CRSMINPOWERU2			B43_PHY_N(0x285)
+#define B43_NPHY_STRPARAM			B43_PHY_N(0x286)
+#define B43_NPHY_STRPARAML			B43_PHY_N(0x287)
+#define B43_NPHY_STRPARAMU			B43_PHY_N(0x288)
+#define B43_NPHY_BPHYCRSMINPOWER0		B43_PHY_N(0x289)
+#define B43_NPHY_BPHYCRSMINPOWER1		B43_PHY_N(0x28A)
+#define B43_NPHY_BPHYCRSMINPOWER2		B43_PHY_N(0x28B)
+#define B43_NPHY_BPHYFILTDEN0COEF		B43_PHY_N(0x28C)
+#define B43_NPHY_BPHYFILTDEN1COEF		B43_PHY_N(0x28D)
+#define B43_NPHY_BPHYFILTDEN2COEF		B43_PHY_N(0x28E)
+#define B43_NPHY_BPHYFILTNUM0COEF		B43_PHY_N(0x28F)
+#define B43_NPHY_BPHYFILTNUM1COEF		B43_PHY_N(0x290)
+#define B43_NPHY_BPHYFILTNUM2COEF		B43_PHY_N(0x291)
+#define B43_NPHY_BPHYFILTNUM01COEF2		B43_PHY_N(0x292)
+#define B43_NPHY_BPHYFILTBYPASS			B43_PHY_N(0x293)
+#define B43_NPHY_SGILTRNOFFSET			B43_PHY_N(0x294)
+#define B43_NPHY_RADAR_T2_MIN			B43_PHY_N(0x295)
+#define B43_NPHY_TXPWRCTRLDAMPING		B43_PHY_N(0x296)
 #define B43_NPHY_PAPD_EN0			B43_PHY_N(0x297) /* PAPD Enable0 TBD */
 #define B43_NPHY_EPS_TABLE_ADJ0			B43_PHY_N(0x298) /* EPS Table Adj0 TBD */
+#define B43_NPHY_EPS_OVERRIDEI_0		B43_PHY_N(0x299)
+#define B43_NPHY_EPS_OVERRIDEQ_0		B43_PHY_N(0x29A)
 #define B43_NPHY_PAPD_EN1			B43_PHY_N(0x29B) /* PAPD Enable1 TBD */
 #define B43_NPHY_EPS_TABLE_ADJ1			B43_PHY_N(0x29C) /* EPS Table Adj1 TBD */
+#define B43_NPHY_EPS_OVERRIDEI_1		B43_PHY_N(0x29D)
+#define B43_NPHY_EPS_OVERRIDEQ_1		B43_PHY_N(0x29E)
+#define B43_NPHY_PAPD_CAL_ADDRESS		B43_PHY_N(0x29F)
+#define B43_NPHY_PAPD_CAL_YREFEPSILON		B43_PHY_N(0x2A0)
+#define B43_NPHY_PAPD_CAL_SETTLE		B43_PHY_N(0x2A1)
+#define B43_NPHY_PAPD_CAL_CORRELATE		B43_PHY_N(0x2A2)
+#define B43_NPHY_PAPD_CAL_SHIFTS0		B43_PHY_N(0x2A3)
+#define B43_NPHY_PAPD_CAL_SHIFTS1		B43_PHY_N(0x2A4)
+#define B43_NPHY_SAMPLE_START_ADDR		B43_PHY_N(0x2A5)
+#define B43_NPHY_RADAR_ADC_TO_DBM		B43_PHY_N(0x2A6)
+#define B43_NPHY_REV3_C2_INITGAIN_A		B43_PHY_N(0x2A7)
+#define B43_NPHY_REV3_C2_INITGAIN_B		B43_PHY_N(0x2A8)
+#define B43_NPHY_REV3_C2_CLIP_HIGAIN_A		B43_PHY_N(0x2A9)
+#define B43_NPHY_REV3_C2_CLIP_HIGAIN_B		B43_PHY_N(0x2AA)
+#define B43_NPHY_REV3_C2_CLIP_MEDGAIN_A		B43_PHY_N(0x2AB)
+#define B43_NPHY_REV3_C2_CLIP_MEDGAIN_B		B43_PHY_N(0x2AC)
+#define B43_NPHY_REV3_C2_CLIP_LOGAIN_A		B43_PHY_N(0x2AD)
+#define B43_NPHY_REV3_C2_CLIP_LOGAIN_B		B43_PHY_N(0x2AE)
+#define B43_NPHY_REV3_C2_CLIP2_GAIN_A		B43_PHY_N(0x2AF)
+#define B43_NPHY_REV3_C2_CLIP2_GAIN_B		B43_PHY_N(0x2B0)
 
 #define B43_PHY_B_BBCFG				B43_PHY_N_BMODE(0x001) /* BB config */
 #define B43_PHY_B_TEST				B43_PHY_N_BMODE(0x00A)
-- 
1.7.10.4
