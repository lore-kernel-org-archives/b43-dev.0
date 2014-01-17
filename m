From: ZHAO Gang <gamerh2o@gmail.com>
Date: Fri, 17 Jan 2014 13:27:33 +0800
Subject: [PATCH 1/2] b43: fix the wrong assignment of status.freq in b43_rx()
Message-ID: <a8aa052ea196de8256dcdc5b3ae81cfa64d3f9ff.1389935084.git.gamerh2o@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefano Brivio <stefano.brivio@polimi.it>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>

In following patch, replace b43 specific helper function with kernel
api to reduce code duplication.

Signed-off-by: ZHAO Gang <gamerh2o@gmail.com>
---
 drivers/net/wireless/b43/xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 4ae63f4..50e5ddb 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -821,10 +821,10 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		 * channel number in b43. */
 		if (chanstat & B43_RX_CHAN_5GHZ) {
 			status.band = IEEE80211_BAND_5GHZ;
-			status.freq = b43_freq_to_channel_5ghz(chanid);
+			status.freq = b43_channel_to_freq_5ghz(chanid);
 		} else {
 			status.band = IEEE80211_BAND_2GHZ;
-			status.freq = b43_freq_to_channel_2ghz(chanid);
+			status.freq = b43_channel_to_freq_2ghz(chanid);
 		}
 		break;
 	default:
-- 
1.8.4.2
