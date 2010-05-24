From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 24 May 2010 21:50:24 +0200
Subject: [PATCH 2/2] ssb: fast powerup delay calculation for PMU capable
	devices
In-Reply-To: <1274730624-22922-1-git-send-email-zajec5@gmail.com>
References: <1274730624-22922-1-git-send-email-zajec5@gmail.com>
Message-ID: <1274730624-22922-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Acked-by: G?bor Stefanik <netrolller.3d@gmail.com>
---
 drivers/ssb/driver_chipcommon.c |   24 ++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/driver_chipcommon.c b/drivers/ssb/driver_chipcommon.c
index 59ae76b..bda8514 100644
--- a/drivers/ssb/driver_chipcommon.c
+++ b/drivers/ssb/driver_chipcommon.c
@@ -209,6 +209,24 @@ static void chipco_powercontrol_init(struct ssb_chipcommon *cc)
 	}
 }
 
+/* http://bcm-v4.sipsolutions.net/802.11/PmuFastPwrupDelay */
+static u16 pmu_fast_powerup_delay(struct ssb_chipcommon *cc)
+{
+	struct ssb_bus *bus = cc->dev->bus;
+
+	switch (bus->chip_id) {
+	case 0x4312:
+	case 0x4322:
+	case 0x4328:
+		return 7000;
+	case 0x4325:
+		/* TODO: */
+	default:
+		return 15000;
+	}
+}
+
+/* http://bcm-v4.sipsolutions.net/802.11/ClkctlFastPwrupDelay */
 static void calc_fast_powerup_delay(struct ssb_chipcommon *cc)
 {
 	struct ssb_bus *bus = cc->dev->bus;
@@ -218,6 +236,12 @@ static void calc_fast_powerup_delay(struct ssb_chipcommon *cc)
 
 	if (bus->bustype != SSB_BUSTYPE_PCI)
 		return;
+
+	if (cc->capabilities & SSB_CHIPCO_CAP_PMU) {
+		cc->fast_pwrup_delay = pmu_fast_powerup_delay(cc);
+		return;
+	}
+
 	if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
 		return;
 
-- 
1.6.4.2
