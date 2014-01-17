From: ZHAO Gang <gamerh2o@gmail.com>
Date: Sat, 18 Jan 2014 00:17:39 +0800
Subject: [PATCH v4 2/2] b43: use kernel api to replace b43 specific helper
 function
In-Reply-To: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
References: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
Message-ID: <1d5702e0bc7bddf7d1fbd5d068d8eaa2025bf32c.1389975095.git.gamerh2o@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefano Brivio <stefano.brivio@polimi.it>
Cc: Johannes Berg <johannes@sipsolutions.net>, Jonas Gorski <jogo@openwrt.org>, Luca Coelho <luca@coelho.fi>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

Use ieee80211_channel_to_frequency() to replace b43_channel_to_freq_{2,5}ghz(),
and remove unused b43_freq_to_channel_{2,5}ghz().

Signed-off-by: ZHAO Gang <gamerh2o@gmail.com>
---
v4: bump version to consistent with first patch.

 drivers/net/wireless/b43/main.h | 35 -----------------------------------
 drivers/net/wireless/b43/xmit.c | 12 ++++++------
 2 files changed, 6 insertions(+), 41 deletions(-)

diff --git a/drivers/net/wireless/b43/main.h b/drivers/net/wireless/b43/main.h
index abac25e..f476fc3 100644
--- a/drivers/net/wireless/b43/main.h
+++ b/drivers/net/wireless/b43/main.h
@@ -58,41 +58,6 @@ enum b43_verbosity {
 #endif
 };
 
-
-/* Lightweight function to convert a frequency (in Mhz) to a channel number. */
-static inline u8 b43_freq_to_channel_5ghz(int freq)
-{
-	return ((freq - 5000) / 5);
-}
-static inline u8 b43_freq_to_channel_2ghz(int freq)
-{
-	u8 channel;
-
-	if (freq == 2484)
-		channel = 14;
-	else
-		channel = (freq - 2407) / 5;
-
-	return channel;
-}
-
-/* Lightweight function to convert a channel number to a frequency (in Mhz). */
-static inline int b43_channel_to_freq_5ghz(u8 channel)
-{
-	return (5000 + (5 * channel));
-}
-static inline int b43_channel_to_freq_2ghz(u8 channel)
-{
-	int freq;
-
-	if (channel == 14)
-		freq = 2484;
-	else
-		freq = 2407 + (5 * channel);
-
-	return freq;
-}
-
 static inline int b43_is_cck_rate(int rate)
 {
 	return (rate == B43_CCK_RATE_1MB ||
diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 50e5ddb..218a0f3 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -806,7 +806,8 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		B43_WARN_ON(1);
 		/* FIXME: We don't really know which value the "chanid" contains.
 		 *        So the following assignment might be wrong. */
-		status.freq = b43_channel_to_freq_5ghz(chanid);
+		status.freq =
+			ieee80211_channel_to_frequency(chanid, status.band);
 		break;
 	case B43_PHYTYPE_G:
 		status.band = IEEE80211_BAND_2GHZ;
@@ -819,13 +820,12 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 	case B43_PHYTYPE_HT:
 		/* chanid is the SHM channel cookie. Which is the plain
 		 * channel number in b43. */
-		if (chanstat & B43_RX_CHAN_5GHZ) {
+		if (chanstat & B43_RX_CHAN_5GHZ)
 			status.band = IEEE80211_BAND_5GHZ;
-			status.freq = b43_channel_to_freq_5ghz(chanid);
-		} else {
+		else
 			status.band = IEEE80211_BAND_2GHZ;
-			status.freq = b43_channel_to_freq_2ghz(chanid);
-		}
+		status.freq =
+			ieee80211_channel_to_frequency(chanid, status.band);
 		break;
 	default:
 		B43_WARN_ON(1);
-- 
1.8.4.2
