From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 16 Aug 2011 12:10:58 +0200
Subject: [PATCH] b43: warn when forcing PIO mode
Message-ID: <1313489458-8843-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

We have resolved all the known issues with DMA mode, however some users
(or distros) are still forcing PIO mode by config files. Without
debugging enabled it's not noticable at all. Add the warning for them.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 1adadc8..e0b1156 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4636,8 +4636,13 @@ static int b43_wireless_core_init(struct b43_wldev *dev)
 	b43_shm_write16(dev, B43_SHM_SCRATCH, B43_SHM_SC_MAXCONT, 0x3FF);
 
 	if (b43_bus_host_is_pcmcia(dev->dev) ||
-	    b43_bus_host_is_sdio(dev->dev) ||
-	    dev->use_pio) {
+	    b43_bus_host_is_sdio(dev->dev)) {
+		dev->__using_pio_transfers = 1;
+		err = b43_pio_init(dev);
+	} else if (dev->use_pio) {
+		b43warn(dev->wl, "Forced PIO by use_pio module paramater. "
+			"This should not be needed and will result in lower "
+			"performance.\n");
 		dev->__using_pio_transfers = 1;
 		err = b43_pio_init(dev);
 	} else {
-- 
1.7.3.4
