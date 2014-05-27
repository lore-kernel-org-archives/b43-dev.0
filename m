From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 27 May 2014 22:07:33 +0200
Subject: [PATCH 3/3] b43: N-PHY: optimize radio switching on/off
In-Reply-To: <1401221253-4135-1-git-send-email-zajec5@gmail.com>
References: <1401221253-4135-1-git-send-email-zajec5@gmail.com>
Message-ID: <1401221253-4135-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Broadcom's wl 6.30.223.141 has some optimizations for radios 0x205[67].

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c  | 4 +++-
 drivers/net/wireless/b43/phy_n.c | 6 ++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index bf27917..32538ac 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -3742,7 +3742,9 @@ static int b43_switch_band(struct b43_wldev *dev,
 	b43dbg(dev->wl, "Switching to %s GHz band\n",
 	       band_to_string(chan->band));
 
-	b43_software_rfkill(dev, true);
+	/* Some new devices don't need disabling radio for band switching */
+	if (!(phy->type == B43_PHYTYPE_N && phy->rev >= 3))
+		b43_software_rfkill(dev, true);
 
 	phy->gmode = gmode;
 	b43_phy_put_into_reset(dev);
diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 98ff806..86569f6 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -5707,10 +5707,12 @@ static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
 		}
 	} else {
 		if (dev->phy.rev >= 7) {
-			b43_radio_2057_init(dev);
+			if (!dev->phy.radio_on)
+				b43_radio_2057_init(dev);
 			b43_switch_channel(dev, dev->phy.channel);
 		} else if (dev->phy.rev >= 3) {
-			b43_radio_init2056(dev);
+			if (!dev->phy.radio_on)
+				b43_radio_init2056(dev);
 			b43_switch_channel(dev, dev->phy.channel);
 		} else {
 			b43_radio_init2055(dev);
-- 
1.8.4.5
