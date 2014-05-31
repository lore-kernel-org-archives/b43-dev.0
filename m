From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 20:49:38 +0200
Subject: [PATCH 6/9] b43: store current channel using struct cfg80211_chan_def
In-Reply-To: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
References: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401562181-14608-7-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c       | 1 +
 drivers/net/wireless/b43/phy_common.c | 9 +++++++--
 drivers/net/wireless/b43/phy_common.h | 1 +
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 5e4eed3..2b99ed3 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -3808,6 +3808,7 @@ static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
 	b43_mac_suspend(dev);
 
 	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
+		phy->chandef = &conf->chandef;
 		phy->channel = conf->chandef.chan->hw_value;
 		if (conf_is_ht(conf))
 			phy->is_40mhz = conf_is_ht40_minus(conf) ||
diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index b465011..9aa6c9c 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -94,8 +94,13 @@ int b43_phy_init(struct b43_wldev *dev)
 	const struct b43_phy_operations *ops = phy->ops;
 	int err;
 
-	if (!phy->channel)
-		phy->channel = ops->get_default_chan(dev);
+	/* During PHY init we need to use some channel. On the first init this
+	 * function is called *before* b43_op_config, so our pointer is NULL.
+	 */
+	if (!phy->chandef) {
+		phy->chandef = &dev->wl->hw->conf.chandef;
+		phy->channel = phy->chandef->chan->hw_value;
+	}
 
 	phy->ops->switch_analog(dev, true);
 	b43_software_rfkill(dev, false);
diff --git a/drivers/net/wireless/b43/phy_common.h b/drivers/net/wireless/b43/phy_common.h
index 9a92df4..56dfe7a 100644
--- a/drivers/net/wireless/b43/phy_common.h
+++ b/drivers/net/wireless/b43/phy_common.h
@@ -267,6 +267,7 @@ struct b43_phy {
 	unsigned long next_txpwr_check_time;
 
 	/* Current channel */
+	struct cfg80211_chan_def *chandef;
 	unsigned int channel;
 	u16 channel_freq;
 	enum nl80211_channel_type channel_type;
-- 
1.8.4.5
