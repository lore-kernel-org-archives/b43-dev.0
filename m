From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  8 Aug 2012 19:10:16 +0200
Subject: [PATCH] b43legacy: fix logic in GPIO init
In-Reply-To: <1344445816-11871-1-git-send-email-zajec5@gmail.com>
References: <1344445816-11871-1-git-send-email-zajec5@gmail.com>
Message-ID: <1344445816-11871-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
It's compile-tested only, as I don't have hardware to test it. It's
quite obvious and was also applied in b43.
---
 drivers/net/wireless/b43legacy/main.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43legacy/main.c b/drivers/net/wireless/b43legacy/main.c
index 8156135..3ea1a85 100644
--- a/drivers/net/wireless/b43legacy/main.c
+++ b/drivers/net/wireless/b43legacy/main.c
@@ -1920,7 +1920,7 @@ static int b43legacy_gpio_init(struct b43legacy_wldev *dev)
 		return 0;
 	ssb_write32(gpiodev, B43legacy_GPIO_CONTROL,
 		    (ssb_read32(gpiodev, B43legacy_GPIO_CONTROL)
-		     & mask) | set);
+		     & ~mask) | set);
 
 	return 0;
 }
-- 
1.7.7
