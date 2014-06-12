From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 12 Jun 2014 22:28:22 +0200
Subject: [PATCH][3.16 FIX][STABLE] b43: fix frequency reported on G-PHY with
 /new/ firmware
Message-ID: <1402604902-7801-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>, linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, stable@vger.kernel.org

Support for firmware rev 508+ was added years ago, but we never noticed
it reports channel in a different way for G-PHY devices. Instead of
offset from 2400 MHz it simply passes channel id (AKA hw_value).

So far it was (most probably) affecting monitor mode users only, but
the following recent commit made it noticeable for quite everybody:

commit 3afc2167f60a327a2c1e1e2600ef209a3c2b75b7
Author: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
Date:   Tue Mar 4 16:50:13 2014 +0200

    cfg80211/mac80211: ignore signal if the frame was heard on wrong channel

Reported-by: Aaro Koskinen <aaro.koskinen@iki.fi>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Cc: stable at vger.kernel.org
Tested-by: Aaro Koskinen <aaro.koskinen@iki.fi>
---
 drivers/net/wireless/b43/xmit.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 4f38f19..6e6ef3f 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -811,9 +811,13 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		break;
 	case B43_PHYTYPE_G:
 		status.band = IEEE80211_BAND_2GHZ;
-		/* chanid is the radio channel cookie value as used
-		 * to tune the radio. */
-		status.freq = chanid + 2400;
+		/* Somewhere between 478.104 and 508.1084 firmware for G-PHY
+		 * has been modified to be compatible with N-PHY and others.
+		 */
+		if (dev->fw.rev >= 508)
+			status.freq = ieee80211_channel_to_frequency(chanid, status.band);
+		else
+			status.freq = chanid + 2400;
 		break;
 	case B43_PHYTYPE_N:
 	case B43_PHYTYPE_LP:
-- 
1.8.4.5
