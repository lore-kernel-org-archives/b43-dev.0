From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 20:49:33 +0200
Subject: [PATCH 1/9] b43: drop B43_DEFAULT_CHANNEL
In-Reply-To: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
References: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401562181-14608-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

It was never used, b43_switch_channel is always called with hw_value
(from mac80211) or whatever get_default_chan returns.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_common.c | 3 ---
 drivers/net/wireless/b43/phy_common.h | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index 08244b3..ac4cf2b 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -408,9 +408,6 @@ int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
 	u16 channelcookie, savedcookie;
 	int err;
 
-	if (new_channel == B43_DEFAULT_CHANNEL)
-		new_channel = phy->ops->get_default_chan(dev);
-
 	/* First we set the channel radio code to prevent the
 	 * firmware from sending ghost packets.
 	 */
diff --git a/drivers/net/wireless/b43/phy_common.h b/drivers/net/wireless/b43/phy_common.h
index 4ad6240..9a92df4 100644
--- a/drivers/net/wireless/b43/phy_common.h
+++ b/drivers/net/wireless/b43/phy_common.h
@@ -400,10 +400,6 @@ void b43_phy_take_out_of_reset(struct b43_wldev *dev);
  * b43_switch_channel - Switch to another channel
  */
 int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel);
-/**
- * B43_DEFAULT_CHANNEL - Switch to the default channel.
- */
-#define B43_DEFAULT_CHANNEL	UINT_MAX
 
 /**
  * b43_software_rfkill - Turn the radio ON or OFF in software.
-- 
1.8.4.5
