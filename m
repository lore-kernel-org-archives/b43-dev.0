From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 22 Oct 2010 22:24:05 +0200
Subject: [PATCH] b43: rfkill: use status register based on core revision not
	(PHY's)
Message-ID: <1287779045-20257-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
This makes my N-PHY radio at least running (no scanning results so far). The
same register is used by wl on this device.
---
 drivers/net/wireless/b43/rfkill.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/rfkill.c b/drivers/net/wireless/b43/rfkill.c
index 78016ae..d2734c9 100644
--- a/drivers/net/wireless/b43/rfkill.c
+++ b/drivers/net/wireless/b43/rfkill.c
@@ -28,7 +28,7 @@
 /* Returns TRUE, if the radio is enabled in hardware. */
 bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
 {
-	if (dev->phy.rev >= 3 || dev->phy.type == B43_PHYTYPE_LP) {
+	if (dev->dev->id.revision >= 3) {
 		if (!(b43_read32(dev, B43_MMIO_RADIO_HWENABLED_HI)
 		      & B43_MMIO_RADIO_HWENABLED_HI_MASK))
 			return 1;
-- 
1.7.1
