From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri,  1 Apr 2011 12:07:32 +0200
Subject: [PATCH 1/3] ssb: pci: trivial: drop useless pointer
Message-ID: <1301652454-11251-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_pcicore.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 0e8d352..e0cf29e 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -417,11 +417,9 @@ static void ssb_pcicore_init_clientmode(struct ssb_pcicore *pc)
 void ssb_pcicore_init(struct ssb_pcicore *pc)
 {
 	struct ssb_device *dev = pc->dev;
-	struct ssb_bus *bus;
 
 	if (!dev)
 		return;
-	bus = dev->bus;
 	if (!ssb_device_is_enabled(dev))
 		ssb_device_enable(dev, 0);
 
-- 
1.7.1
