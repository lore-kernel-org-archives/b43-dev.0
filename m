From: Adrian Chadd <adrian@freebsd.org>
Date: Mon, 16 May 2016 20:25:34 -0700
Subject: [PATCH] [b43] don't unconditionally fall back to CCK if the rate is
 6MB OFDM.
In-Reply-To: <1463455534-22512-1-git-send-email-adrian@freebsd.org>
References: <1463455534-22512-1-git-send-email-adrian@freebsd.org>
Message-ID: <1463455534-22512-2-git-send-email-adrian@freebsd.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org
Cc: Adrian Chadd <adrian@freebsd.org>, Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org

Check the current PHY operating mode (gmode) to see if we should
fall back from 6MB OFDM to 11MB CCK.  For 5GHz operation this isn't
allowed.

Note, the fallback lookup is only done for RTS rates; normal fallback
rates are done via mac80211 and aren't affected by this change.

	Signed-off-by: Adrian Chadd <adrian@freebsd.org>
---
 drivers/net/wireless/broadcom/b43/xmit.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index f620126..7edbcdb 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -205,7 +205,7 @@ static u16 b43_generate_tx_phy_ctl1(struct b43_wldev *dev, u8 bitrate)
 	return control;
 }
 
-static u8 b43_calc_fallback_rate(u8 bitrate)
+static u8 b43_calc_fallback_rate(u8 bitrate, int gmode)
 {
 	switch (bitrate) {
 	case B43_CCK_RATE_1MB:
@@ -216,8 +216,15 @@ static u8 b43_calc_fallback_rate(u8 bitrate)
 		return B43_CCK_RATE_2MB;
 	case B43_CCK_RATE_11MB:
 		return B43_CCK_RATE_5MB;
+	/*
+	 * Don't just fallback to CCK; it may be in 5GHz operation
+	 * and falling back to CCK won't work out very well.
+	 */
 	case B43_OFDM_RATE_6MB:
-		return B43_CCK_RATE_5MB;
+		if (gmode)
+			return B43_CCK_RATE_5MB;
+		else
+			return B43_OFDM_RATE_6MB;
 	case B43_OFDM_RATE_9MB:
 		return B43_OFDM_RATE_6MB;
 	case B43_OFDM_RATE_12MB:
@@ -438,7 +445,7 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 
 		rts_rate = rts_cts_rate ? rts_cts_rate->hw_value : B43_CCK_RATE_1MB;
 		rts_rate_ofdm = b43_is_ofdm_rate(rts_rate);
-		rts_rate_fb = b43_calc_fallback_rate(rts_rate);
+		rts_rate_fb = b43_calc_fallback_rate(rts_rate, phy->gmode);
 		rts_rate_fb_ofdm = b43_is_ofdm_rate(rts_rate_fb);
 
 		if (rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
-- 
2.6.3
