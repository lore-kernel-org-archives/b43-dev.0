From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 29 Jun 2014 21:46:45 +0200
Subject: [PATCH] b43: treat LCNXN-PHY as extra N-PHY devices
Message-ID: <1404071205-12568-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

LCNXN is simply a continuation of N, e.g. code handling LCNXN revs 0 and
1 is mostly the same as for N-PHY revs 7+.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 3e4333c..0b1aac4 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4331,6 +4331,13 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 	analog_type = (tmp & B43_PHYVER_ANALOG) >> B43_PHYVER_ANALOG_SHIFT;
 	phy_type = (tmp & B43_PHYVER_TYPE) >> B43_PHYVER_TYPE_SHIFT;
 	phy_rev = (tmp & B43_PHYVER_VERSION);
+
+	/* LCNXN is continuation of N which run out of revisions */
+	if (phy_type == B43_PHYTYPE_LCNXN) {
+		phy_type = B43_PHYTYPE_N;
+		phy_rev += 16;
+	}
+
 	switch (phy_type) {
 #ifdef CONFIG_B43_PHY_G
 	case B43_PHYTYPE_G:
-- 
1.8.4.5
