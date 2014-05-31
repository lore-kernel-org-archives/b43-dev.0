From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 20:49:37 +0200
Subject: [PATCH 5/9] b43: b43_op_config: set channel info before switching band
In-Reply-To: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
References: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401562181-14608-6-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Band switching code needs to know what channel we switch to.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c       | 3 ++-
 drivers/net/wireless/b43/phy_common.c | 1 -
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 59aa4fd..5e4eed3 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -3808,6 +3808,7 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 	b43_mac_suspend(dev);
 
 	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
+		phy->channel = conf->chandef.chan->hw_value;
 		if (conf_is_ht(conf))
 			phy->is_40mhz = conf_is_ht40_minus(conf) ||
 					conf_is_ht40_plus(conf);
@@ -3822,7 +3823,7 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 		/* Switch to the requested channel.
 		 * The firmware takes care of races with the TX handler.
 		 */
-		b43_switch_channel(dev, conf->chandef.chan->hw_value);
+		b43_switch_channel(dev, phy->channel);
 	}
 
 	if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index 3bfb795..b465011 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -424,7 +424,6 @@ int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
 	if (err)
 		goto err_restore_cookie;
 
-	dev->phy.channel = new_channel;
 	/* Wait for the radio to tune to the channel and stabilize. */
 	msleep(8);
 
-- 
1.8.4.5
