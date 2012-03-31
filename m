From: Antonio Quartulli <ordex@autistici.org>
Date: Sun,  1 Apr 2012 00:35:40 +0300
Subject: [PATCH] b43: claim support for IBSS RSN
Message-ID: <1333229740-5182-1-git-send-email-ordex@autistici.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, Stefano Brivio <stefano.brivio@polimi.it>, b43-dev@lists.infradead.org, Jo-Philipp Wich <jow@openwrt.org>, Antonio Quartulli <ordex@autistici.org>

The driver now claims to support IBSS/RSN. Group key configuration in hardware
is skipped. Software encryption is used for multicast communications.

Signed-off-by: Antonio Quartulli <ordex@autistici.org>
---
 drivers/net/wireless/b43/main.c |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index c79e663..05ea95b 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4010,6 +4010,20 @@ static int b43_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	if (modparam_nohwcrypt)
 		return -ENOSPC; /* User disabled HW-crypto */
 
+	if ((vif->type == NL80211_IFTYPE_ADHOC ||
+	     vif->type == NL80211_IFTYPE_MESH_POINT) &&
+	    (key->cipher == WLAN_CIPHER_SUITE_TKIP ||
+	     key->cipher == WLAN_CIPHER_SUITE_CCMP) &&
+	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
+		/*
+		 * For now, disable hw crypto for the RSN IBSS group keys. This
+		 * could be optimized in the future, but until that gets
+		 * implemented, use of software crypto for group addressed
+		 * frames is a acceptable to allow RSN IBSS to be used.
+		 */
+		return -EOPNOTSUPP;
+	}
+
 	mutex_lock(&wl->mutex);
 
 	dev = wl->current_dev;
@@ -5275,6 +5289,8 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 		BIT(NL80211_IFTYPE_WDS) |
 		BIT(NL80211_IFTYPE_ADHOC);
 
+	hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;
+
 	hw->queues = modparam_qos ? B43_QOS_QUEUE_NUM : 1;
 	wl->mac80211_initially_registered_queues = hw->queues;
 	hw->max_rates = 2;
-- 
1.7.9.4
