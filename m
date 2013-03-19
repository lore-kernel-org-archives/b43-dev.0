From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 13:41:31 +0100
Subject: [RFT][PATCH] b43: HT-PHY: disable TX power control on BCM94331X19
Message-ID: <1363696891-22522-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

In case of BCM94331X19 default TX state seems to perform better than
after our configuration. Disable TX power control for now on this card
(until fixing power control).
---
David: could you test this for me, please? Can you see that
> BCM94331X19 detected, disabling TX power control for better performace
message in dmesg? Does it brings you back a better perofmrnce?

Simply apply it on top of wireless-testing.
---
 drivers/net/wireless/b43/phy_ht.c |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index b866770..e5cbe26 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -807,6 +807,11 @@ static void b43_phy_ht_op_prepare_structs(struct b43_wldev *dev)
 
 	for (i = 0; i < 3; i++)
 		phy_ht->bb_mult_save[i] = -1;
+
+	if (dev->dev->board_type == 0x00D6) {
+		pr_warn("BCM94331X19 detected, disabling TX power control for better performace\n");
+		phy_ht->tx_pwr_ctl = false;
+	}
 }
 
 static int b43_phy_ht_op_init(struct b43_wldev *dev)
-- 
1.7.10.4
