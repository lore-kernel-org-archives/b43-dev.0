From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 14 Jul 2011 21:49:19 +0200
Subject: [PATCH 2/4] bcma: cc: set GPIOTIMER register
In-Reply-To: <1310672961-5311-1-git-send-email-zajec5@gmail.com>
References: <1310672961-5311-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310672961-5311-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

We use value supplied via SPROM, or default 10:90 as fallback.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/driver_chipcommon.c |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/drivers/bcma/driver_chipcommon.c b/drivers/bcma/driver_chipcommon.c
index 6061022..fb54302 100644
--- a/drivers/bcma/driver_chipcommon.c
+++ b/drivers/bcma/driver_chipcommon.c
@@ -23,6 +23,9 @@ static inline u32 bcma_cc_write32_masked(struct bcma_drv_cc *cc, u16 offset,
 
 void bcma_core_chipcommon_init(struct bcma_drv_cc *cc)
 {
+	u32 leddc_on = 10;
+	u32 leddc_off = 90;
+
 	if (cc->core->id.rev >= 11)
 		cc->status = bcma_cc_read32(cc, BCMA_CC_CHIPSTAT);
 	cc->capabilities = bcma_cc_read32(cc, BCMA_CC_CAP);
@@ -38,6 +41,17 @@ void bcma_core_chipcommon_init(struct bcma_drv_cc *cc)
 		bcma_pmu_init(cc);
 	if (cc->capabilities & BCMA_CC_CAP_PCTL)
 		pr_err("Power control not implemented!\n");
+
+	if (cc->core->id.rev >= 16) {
+		if (cc->core->bus->sprom.leddc_on_time &&
+		    cc->core->bus->sprom.leddc_off_time) {
+			leddc_on = cc->core->bus->sprom.leddc_on_time;
+			leddc_off = cc->core->bus->sprom.leddc_off_time;
+		}
+		bcma_cc_write32(cc, BCMA_CC_GPIOTIMER,
+			((leddc_on << BCMA_CC_GPIOTIMER_ONTIME_SHIFT) |
+			 (leddc_off << BCMA_CC_GPIOTIMER_OFFTIME_SHIFT)));
+	}
 }
 
 /* Set chip watchdog reset timer to fire in 'ticks' backplane cycles */
-- 
1.7.3.4
