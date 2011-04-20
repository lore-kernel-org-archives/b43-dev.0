From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 20 Apr 2011 19:14:09 +0200
Subject: [RFC][PATCH] ssb: mark bus as powered up earlier?
Message-ID: <1303319649-2189-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

---
This order seems to be wrong for me, but how we didn't get any reports about
errors? Are cores supported by ssb_chipco_set_clockmode so rare? Or is ssb so
rarely compiled with DEBUG?

The problem is that ssb_chipco_set_clockmode may want to touch CC registers to
control power of the bus. However touching registers without powered_up set
causes warnings.

Am I right at this?
---
 drivers/ssb/main.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index e06d634..076362e 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -1309,20 +1309,20 @@ EXPORT_SYMBOL(ssb_bus_may_powerdown);
 
 int ssb_bus_powerup(struct ssb_bus *bus, bool dynamic_pctl)
 {
-	struct ssb_chipcommon *cc;
 	int err;
 	enum ssb_clkmode mode;
 
 	err = ssb_pci_xtal(bus, SSB_GPIO_XTAL | SSB_GPIO_PLL, 1);
 	if (err)
 		goto error;
-	cc = &bus->chipco;
-	mode = dynamic_pctl ? SSB_CLKMODE_DYNAMIC : SSB_CLKMODE_FAST;
-	ssb_chipco_set_clockmode(cc, mode);
 
 #ifdef CONFIG_SSB_DEBUG
 	bus->powered_up = 1;
 #endif
+
+	mode = dynamic_pctl ? SSB_CLKMODE_DYNAMIC : SSB_CLKMODE_FAST;
+	ssb_chipco_set_clockmode(&bus->chipco, mode);
+
 	return 0;
 error:
 	ssb_printk(KERN_ERR PFX "Bus powerup failed\n");
-- 
1.7.3.4
