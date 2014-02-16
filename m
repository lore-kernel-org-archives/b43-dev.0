From: Zhao, Gang <gamerh2o@gmail.com>
Date: Sun, 16 Feb 2014 22:31:37 +0800
Subject: [PATCH 1/2] b43: Kconfig: let config B43_BCMA_PIO depends on B43
Message-ID: <fe0bba2d6b5b1d3b5021755aa8dc169d8e8f4655.1392560760.git.gamerh2o@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Logically, config B43_BCMA_PIO should depend on B43. This also solves
the problem that sub options of b43 driver didn't indent correctly in
make menuconfig's ncurses window.

Signed-off-by: Zhao, Gang <gamerh2o@gmail.com>
---
 drivers/net/wireless/b43/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index 51ff0b1..088d544 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -92,7 +92,7 @@ config B43_SDIO
 # if we can do DMA.
 config B43_BCMA_PIO
 	bool
-	depends on B43_BCMA
+	depends on B43 && B43_BCMA
 	select BCMA_BLOCKIO
 	default y
 
-- 
1.8.5.3
