From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 31 Jul 2014 21:59:45 +0200
Subject: [PATCH 3.18 4/7] b43: N-PHY: update rev3+ gain control workarounds
In-Reply-To: <1406836788-23704-1-git-send-email-zajec5@gmail.com>
References: <1406836788-23704-1-git-send-email-zajec5@gmail.com>
Message-ID: <1406836788-23704-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This fixes workarounds on rev 6+ and cleans code slightly.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/tables_nphy.c | 61 +++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 24 deletions(-)

diff --git a/drivers/net/wireless/b43/tables_nphy.c b/drivers/net/wireless/b43/tables_nphy.c
index 4b58850..f449cff 100644
--- a/drivers/net/wireless/b43/tables_nphy.c
+++ b/drivers/net/wireless/b43/tables_nphy.c
@@ -3197,7 +3197,7 @@ static struct nphy_gain_ctl_workaround_entry nphy_gain_ctl_workaround[2][4] = {
 			{ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 },
 			0x527E, /* invalid for external LNA! */
 			{ 0x513F, 0x513F, 0x513F, 0x513F }, /* invalid for external LNA! */
-			0x1076, 0x0066, 0x0000, /* low is invalid (the last one) */
+			0x007E, 0x0066, 0x0000, /* low is invalid (the last one) */
 			0x18, 0x18, 0x18,
 			0x01D0, 0x5,
 		},
@@ -3711,6 +3711,7 @@ const u32 *b43_nphy_get_tx_gain_table(struct b43_wldev *dev)
 struct nphy_gain_ctl_workaround_entry *b43_nphy_get_gain_ctl_workaround_ent(
 	struct b43_wldev *dev, bool ghz5, bool ext_lna)
 {
+	struct b43_phy *phy = &dev->phy;
 	struct nphy_gain_ctl_workaround_entry *e;
 	u8 phy_idx;
 
@@ -3729,37 +3730,49 @@ struct nphy_gain_ctl_workaround_entry *b43_nphy_get_gain_ctl_workaround_ent(
 	e = &nphy_gain_ctl_workaround[ghz5][phy_idx];
 
 	/* Some workarounds to the workarounds... */
-	if (ghz5 && dev->phy.rev >= 6) {
-		if (dev->phy.radio_rev == 11 &&
-		    !b43_is_40mhz(dev))
-			e->cliplo_gain = 0x2d;
-	} else if (!ghz5 && dev->phy.rev >= 5) {
-		static const int gain_data[] = {0x0062, 0x0064, 0x006a, 0x106a,
-						0x106c, 0x1074, 0x107c, 0x207c};
+	if (!ghz5) {
 		u8 tr_iso = dev->dev->bus_sprom->fem.ghz2.tr_iso;
 
-		if (ext_lna) {
+		if (tr_iso > 7)
+			tr_iso = 3;
+
+		if (phy->rev >= 6) {
+			static const int gain_data[] = { 0x106a, 0x106c, 0x1074,
+							 0x107c, 0x007e, 0x107e,
+							 0x207e, 0x307e, };
+
+			e->cliplo_gain = gain_data[tr_iso];
+		} else if (phy->rev == 5) {
+			static const int gain_data[] = { 0x0062, 0x0064, 0x006a,
+							 0x106a, 0x106c, 0x1074,
+							 0x107c, 0x207c, };
+
+			e->cliplo_gain = gain_data[tr_iso];
+		}
+
+		if (phy->rev >= 5 && ext_lna) {
 			e->rfseq_init[0] &= ~0x4000;
 			e->rfseq_init[1] &= ~0x4000;
 			e->rfseq_init[2] &= ~0x4000;
 			e->rfseq_init[3] &= ~0x4000;
 			e->init_gain &= ~0x4000;
 		}
-		if (tr_iso > 7)
-			tr_iso = 3;
-		e->cliplo_gain = gain_data[tr_iso];
-
-	} else if (ghz5 && dev->phy.rev == 4 && ext_lna) {
-		e->rfseq_init[0] &= ~0x4000;
-		e->rfseq_init[1] &= ~0x4000;
-		e->rfseq_init[2] &= ~0x4000;
-		e->rfseq_init[3] &= ~0x4000;
-		e->init_gain &= ~0x4000;
-		e->rfseq_init[0] |= 0x1000;
-		e->rfseq_init[1] |= 0x1000;
-		e->rfseq_init[2] |= 0x1000;
-		e->rfseq_init[3] |= 0x1000;
-		e->init_gain |= 0x1000;
+	} else {
+		if (phy->rev >= 6) {
+			if (phy->radio_rev == 11 && !b43_is_40mhz(dev))
+				e->crsminu = 0x2d;
+		} else if (phy->rev == 4 && ext_lna) {
+			e->rfseq_init[0] &= ~0x4000;
+			e->rfseq_init[1] &= ~0x4000;
+			e->rfseq_init[2] &= ~0x4000;
+			e->rfseq_init[3] &= ~0x4000;
+			e->init_gain &= ~0x4000;
+			e->rfseq_init[0] |= 0x1000;
+			e->rfseq_init[1] |= 0x1000;
+			e->rfseq_init[2] |= 0x1000;
+			e->rfseq_init[3] |= 0x1000;
+			e->init_gain |= 0x1000;
+		}
 	}
 
 	return e;
-- 
1.8.4.5
