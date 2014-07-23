From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 23 Jul 2014 16:55:44 +0200
Subject: [PATCH] b43: report correct rate to mac80211 for 5 GHz packets
Message-ID: <1406127344-4112-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

So far we were assuming only A-PHY supports 5 GHz.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/xmit.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 6e6ef3f..426dc13 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -80,9 +80,10 @@ static int b43_plcp_get_bitrate_idx_cck(struct b43_plcp_hdr6 *plcp)
 }
 
 /* Extract the bitrate index out of an OFDM PLCP header. */
-static int b43_plcp_get_bitrate_idx_ofdm(struct b43_plcp_hdr6 *plcp, bool aphy)
+static int b43_plcp_get_bitrate_idx_ofdm(struct b43_plcp_hdr6 *plcp, bool ghz5)
 {
-	int base = aphy ? 0 : 4;
+	/* For 2 GHz band first OFDM rate is at index 4, see main.c */
+	int base = ghz5 ? 0 : 4;
 
 	switch (plcp->raw[0] & 0xF) {
 	case 0xB:
@@ -767,7 +768,7 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 
 	if (phystat0 & B43_RX_PHYST0_OFDM)
 		rate_idx = b43_plcp_get_bitrate_idx_ofdm(plcp,
-						phytype == B43_PHYTYPE_A);
+					!!(chanstat & B43_RX_CHAN_5GHZ));
 	else
 		rate_idx = b43_plcp_get_bitrate_idx_cck(plcp);
 	if (unlikely(rate_idx == -1)) {
-- 
1.8.4.5
