From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 20:49:35 +0200
Subject: [PATCH 3/9] b43: b43_op_config: use IEEE80211_CONF_CHANGE_CHANNEL
In-Reply-To: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
References: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401562181-14608-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This is tiny optimization and grouping band/channel ops.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index a9e50ee..59aa4fd 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -3807,16 +3807,23 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 	mutex_lock(&wl->mutex);
 	b43_mac_suspend(dev);
 
-	/* Switch the band (if necessary). This might change the active core. */
-	err = b43_switch_band(dev, conf->chandef.chan);
-	if (err)
-		goto out_unlock_mutex;
+	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
+		if (conf_is_ht(conf))
+			phy->is_40mhz = conf_is_ht40_minus(conf) ||
+					conf_is_ht40_plus(conf);
+		else
+			phy->is_40mhz = false;
 
-	if (conf_is_ht(conf))
-		phy->is_40mhz =
-			(conf_is_ht40_minus(conf) || conf_is_ht40_plus(conf));
-	else
-		phy->is_40mhz = false;
+		/* Switch the band (if necessary). */
+		err = b43_switch_band(dev, conf->chandef.chan);
+		if (err)
+			goto out_mac_enable;
+
+		/* Switch to the requested channel.
+		 * The firmware takes care of races with the TX handler.
+		 */
+		b43_switch_channel(dev, conf->chandef.chan->hw_value);
+	}
 
 	if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
 		b43_set_retry_limits(dev, conf->short_frame_max_tx_count,
@@ -3825,11 +3832,6 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 	if (!changed)
 		goto out_mac_enable;
 
-	/* Switch to the requested channel.
-	 * The firmware takes care of races with the TX handler. */
-	if (conf->chandef.chan->hw_value != phy->channel)
-		b43_switch_channel(dev, conf->chandef.chan->hw_value);
-
 	dev->wl->radiotap_enabled = !!(conf->flags & IEEE80211_CONF_MONITOR);
 
 	/* Adjust the desired TX power level. */
@@ -3865,7 +3867,6 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 
 out_mac_enable:
 	b43_mac_enable(dev);
-out_unlock_mutex:
 	mutex_unlock(&wl->mutex);
 
 	return err;
-- 
1.8.4.5
