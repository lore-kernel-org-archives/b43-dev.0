From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Jul 2011 19:52:16 +0200
Subject: [PATCH 3/3 V3] b43: bcma: get DMA translation bits
In-Reply-To: <1311184336-3633-1-git-send-email-zajec5@gmail.com>
References: <1311184336-3633-1-git-send-email-zajec5@gmail.com>
Message-ID: <1311184336-3633-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Pavel Roskin <proski@gnu.org>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/dma.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index 997d3ad..60c6b61 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -1057,6 +1057,11 @@ int b43_dma_init(struct b43_wldev *dev)
 		return err;
 
 	switch (dev->dev->bus_type) {
+#ifdef CONFIG_B43_BCMA
+	case B43_BUS_BCMA:
+		dma->translation = bcma_core_dma_translation(dev->dev->bdev);
+		break;
+#endif
 #ifdef CONFIG_B43_SSB
 	case B43_BUS_SSB:
 		dma->translation = ssb_dma_translation(dev->dev->sdev);
-- 
1.7.3.4
