From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Oct 2010 07:50:06 +0200
Subject: [PATCH 1/3] b43: N-PHY: simplify channel switching
In-Reply-To: <1286344208-32479-1-git-send-email-zajec5@gmail.com>
References: <1286344208-32479-1-git-send-email-zajec5@gmail.com>
Message-ID: <1286344208-32479-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |   27 +++++++++++----------------
 1 files changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index ac217da..47c58cd 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -73,7 +73,8 @@ static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
 						u16 value, u8 core, bool off);
 static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
 						u16 value, u8 core);
-static int nphy_channel_switch(struct b43_wldev *dev, unsigned int channel);
+static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
+				      unsigned int new_channel);
 
 static inline bool b43_empty_chanspec(struct b43_chanspec *chanspec)
 {
@@ -223,7 +224,7 @@ static void b43_radio_init2055_post(struct b43_wldev *dev)
 	if (i)
 		b43err(dev->wl, "radio post init timeout\n");
 	b43_radio_mask(dev, B2055_CAL_LPOCTL, 0xFF7F);
-	nphy_channel_switch(dev, dev->phy.channel);
+	b43_nphy_op_switch_channel(dev, dev->phy.channel);
 	b43_radio_write(dev, B2055_C1_RX_BB_LPF, 0x9);
 	b43_radio_write(dev, B2055_C2_RX_BB_LPF, 0x9);
 	b43_radio_write(dev, B2055_C1_RX_BB_MIDACHP, 0x83);
@@ -3438,18 +3439,6 @@ static int b43_nphy_set_chanspec(struct b43_wldev *dev,
 	return 0;
 }
 
-/* Tune the hardware to a new channel */
-static int nphy_channel_switch(struct b43_wldev *dev, unsigned int channel)
-{
-	struct b43_phy_n *nphy = dev->phy.n;
-
-	struct b43_chanspec chanspec;
-	chanspec = nphy->radio_chanspec;
-	chanspec.channel = channel;
-
-	return b43_nphy_set_chanspec(dev, chanspec);
-}
-
 static int b43_nphy_op_allocate(struct b43_wldev *dev)
 {
 	struct b43_phy_n *nphy;
@@ -3570,7 +3559,7 @@ static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
 	} else {
 		if (dev->phy.rev >= 3) {
 			b43_radio_init2056(dev);
-			b43_nphy_set_chanspec(dev, nphy->radio_chanspec);
+			b43_nphy_op_switch_channel(dev, dev->phy.channel);
 		} else {
 			b43_radio_init2055(dev);
 		}
@@ -3586,6 +3575,9 @@ static void b43_nphy_op_switch_analog(struct b43_wldev *dev, bool on)
 static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
 				      unsigned int new_channel)
 {
+	struct b43_phy_n *nphy = dev->phy.n;
+	struct b43_chanspec chanspec;
+
 	if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
 		if ((new_channel < 1) || (new_channel > 14))
 			return -EINVAL;
@@ -3594,7 +3586,10 @@ static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
 			return -EINVAL;
 	}
 
-	return nphy_channel_switch(dev, new_channel);
+	chanspec = nphy->radio_chanspec;
+	chanspec.channel = new_channel;
+
+	return b43_nphy_set_chanspec(dev, chanspec);
 }
 
 static unsigned int b43_nphy_op_get_default_chan(struct b43_wldev *dev)
-- 
1.7.1
