From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Jul 2011 18:05:14 +0200
Subject: [PATCH] b43: select BLOCKIO for BCMA
Message-ID: <1309968314-11634-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

We want PIO as fallback for BCMA as well.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/Kconfig |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index 0c29c74..17f9dab 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -90,6 +90,12 @@ config B43_SDIO
 
 #Data transfers to the device via PIO. We want it as a fallback even
 # if we can do DMA.
+config B43_BCMA_PIO
+	bool
+	depends on B43_BCMA
+	select BCMA_BLOCKIO
+	default y
+
 config B43_PIO
 	bool
 	depends on B43
-- 
1.7.3.4
