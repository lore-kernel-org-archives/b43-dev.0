From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  8 Jul 2014 21:00:19 +0200
Subject: [PATCH][3.16 MAYBE?] b43: don't warn about no 5 GHz support on 2.4
 GHz devices
Message-ID: <1404846019-11079-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This could be a bit confusing to see warning about lacking support for
5 GHz band if your device supports 2.4 GHz only.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
John: even I was quite confused to see this warning on my BCM5357. I
suspected b43 incorrectly detected my WiFi as 5 GHz capable. I think
that proposed behavior makes more sense.
Do you think it's OK/worth to take it for 3.16?
---
 drivers/net/wireless/b43/main.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 8aeef10..27dc343 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5268,14 +5268,16 @@ static int b43_wireless_core_attach(struct b43_wldev *dev)
 	b43_supported_bands(dev, &have_2ghz_phy, &have_5ghz_phy);
 
 	/* We don't support 5 GHz on some PHYs yet */
-	switch (dev->phy.type) {
-	case B43_PHYTYPE_A:
-	case B43_PHYTYPE_G:
-	case B43_PHYTYPE_N:
-	case B43_PHYTYPE_LP:
-	case B43_PHYTYPE_HT:
-		b43warn(wl, "5 GHz band is unsupported on this PHY\n");
-		have_5ghz_phy = false;
+	if (have_5ghz_phy) {
+		switch (dev->phy.type) {
+		case B43_PHYTYPE_A:
+		case B43_PHYTYPE_G:
+		case B43_PHYTYPE_N:
+		case B43_PHYTYPE_LP:
+		case B43_PHYTYPE_HT:
+			b43warn(wl, "5 GHz band is unsupported on this PHY\n");
+			have_5ghz_phy = false;
+		}
 	}
 
 	if (!have_2ghz_phy && !have_5ghz_phy) {
-- 
1.8.4.5
