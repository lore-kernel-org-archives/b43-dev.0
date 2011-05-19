From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 19 May 2011 15:11:25 +0200
Subject: [PATCH 2/4] b43: SDIO: use new pointers path to access ssb_device
In-Reply-To: <1305810687-4567-1-git-send-email-zajec5@gmail.com>
References: <1305810687-4567-1-git-send-email-zajec5@gmail.com>
Message-ID: <1305810687-4567-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Julian Calaby <julian.calaby@gmail.com>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

SDIO code is SSB specific, we can safely just use "sdev"

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/sdio.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/sdio.c b/drivers/net/wireless/b43/sdio.c
index 808e25b..e6c733d 100644
--- a/drivers/net/wireless/b43/sdio.c
+++ b/drivers/net/wireless/b43/sdio.c
@@ -66,7 +66,7 @@ static void b43_sdio_interrupt_dispatcher(struct sdio_func *func)
 int b43_sdio_request_irq(struct b43_wldev *dev,
 			 void (*handler)(struct b43_wldev *dev))
 {
-	struct ssb_bus *bus = dev->sdev->bus;
+	struct ssb_bus *bus = dev->dev->sdev->bus;
 	struct sdio_func *func = bus->host_sdio;
 	struct b43_sdio *sdio = sdio_get_drvdata(func);
 	int err;
@@ -82,7 +82,7 @@ int b43_sdio_request_irq(struct b43_wldev *dev,
 
 void b43_sdio_free_irq(struct b43_wldev *dev)
 {
-	struct ssb_bus *bus = dev->sdev->bus;
+	struct ssb_bus *bus = dev->dev->sdev->bus;
 	struct sdio_func *func = bus->host_sdio;
 	struct b43_sdio *sdio = sdio_get_drvdata(func);
 
-- 
1.7.3.4
