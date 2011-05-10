From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 10 May 2011 15:53:16 +0200
Subject: [PATCH] b43legacy: trivial: use TMSLOW def instead of magic value
Message-ID: <1305035596-7615-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43legacy/main.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43legacy/main.c b/drivers/net/wireless/b43legacy/main.c
index f6d5446..1ab8861 100644
--- a/drivers/net/wireless/b43legacy/main.c
+++ b/drivers/net/wireless/b43legacy/main.c
@@ -2234,7 +2234,7 @@ static int b43legacy_chip_init(struct b43legacy_wldev *dev)
 	b43legacy_write32(dev, B43legacy_MMIO_DMA5_IRQ_MASK, 0x0000DC00);
 
 	value32 = ssb_read32(dev->dev, SSB_TMSLOW);
-	value32 |= 0x00100000;
+	value32 |= B43legacy_TMSLOW_MACPHYCLKEN;
 	ssb_write32(dev->dev, SSB_TMSLOW, value32);
 
 	b43legacy_write16(dev, B43legacy_MMIO_POWERUP_DELAY,
-- 
1.7.1
