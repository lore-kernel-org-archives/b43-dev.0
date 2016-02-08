From: Lars-Peter Clausen <lars@metafoo.de>
Date: Mon,  8 Feb 2016 21:41:12 +0100
Subject: [PATCH 1/2] b43: Remove unnecessary synchronize_irq() before
 free_irq()
Message-ID: <1454964073-25108-1-git-send-email-lars@metafoo.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, Chaoming Li <chaoming_li@realsil.com.cn>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Lars-Peter Clausen <lars@metafoo.de>

Calling synchronize_irq() right before free_irq() is quite useless. On one
hand the IRQ can easily fire again before free_irq() is entered, on the
other hand free_irq() itself calls synchronize_irq() internally (in a race
condition free way), before any state associated with the IRQ is freed.

Patch was generated using the following semantic patch:
// <smpl>
@@
expression irq;
@@
-synchronize_irq(irq);
 free_irq(irq, ...);
// </smpl>

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index c279211..72380af 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4375,12 +4375,10 @@ redo:
 	/* Synchronize and free the interrupt handlers. Unlock to avoid deadlocks. */
 	orig_dev = dev;
 	mutex_unlock(&wl->mutex);
-	if (b43_bus_host_is_sdio(dev->dev)) {
+	if (b43_bus_host_is_sdio(dev->dev))
 		b43_sdio_free_irq(dev);
-	} else {
-		synchronize_irq(dev->dev->irq);
+	else
 		free_irq(dev->dev->irq, dev);
-	}
 	mutex_lock(&wl->mutex);
 	dev = wl->current_dev;
 	if (!dev)
-- 
2.1.4
