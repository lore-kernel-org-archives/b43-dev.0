From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 31 May 2014 20:49:36 +0200
Subject: [PATCH 4/9] b43: PHY: don't force default channel during init
In-Reply-To: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
References: <1401562181-14608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401562181-14608-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

PHY may need to be re-initialized during runtime (e.g. on band switch).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_common.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_common.c b/drivers/net/wireless/b43/phy_common.c
index ac4cf2b..3bfb795 100644
--- a/drivers/net/wireless/b43/phy_common.c
+++ b/drivers/net/wireless/b43/phy_common.c
@@ -94,7 +94,8 @@ int b43_phy_init(struct b43_wldev *dev)
 	const struct b43_phy_operations *ops = phy->ops;
 	int err;
 
-	phy->channel = ops->get_default_chan(dev);
+	if (!phy->channel)
+		phy->channel = ops->get_default_chan(dev);
 
 	phy->ops->switch_analog(dev, true);
 	b43_software_rfkill(dev, false);
@@ -106,9 +107,7 @@ int b43_phy_init(struct b43_wldev *dev)
 	}
 	phy->do_full_init = false;
 
-	/* Make sure to switch hardware and firmware (SHM) to
-	 * the default channel. */
-	err = b43_switch_channel(dev, ops->get_default_chan(dev));
+	err = b43_switch_channel(dev, phy->channel);
 	if (err) {
 		b43err(dev->wl, "PHY init: Channel switch to default failed\n");
 		goto err_phy_exit;
-- 
1.8.4.5
