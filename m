From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Apr 2011 22:40:24 +0200
Subject: [PATCH 3/3] ssb: cc: clear GPIOPULL registers on init
In-Reply-To: <1303245624-3057-1-git-send-email-zajec5@gmail.com>
References: <1303245624-3057-1-git-send-email-zajec5@gmail.com>
Message-ID: <1303245624-3057-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_chipcommon.c           |    7 +++++++
 include/linux/ssb/ssb_driver_chipcommon.h |    2 ++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/driver_chipcommon.c b/drivers/ssb/driver_chipcommon.c
index 7c031fd..5476ca5 100644
--- a/drivers/ssb/driver_chipcommon.c
+++ b/drivers/ssb/driver_chipcommon.c
@@ -260,6 +260,13 @@ void ssb_chipcommon_init(struct ssb_chipcommon *cc)
 	if (cc->dev->id.revision >= 11)
 		cc->status = chipco_read32(cc, SSB_CHIPCO_CHIPSTAT);
 	ssb_dprintk(KERN_INFO PFX "chipcommon status is 0x%x\n", cc->status);
+
+	if (cc->dev->id.revision >= 16) {
+		/* TODO: is this needed on lower revision cores? */
+		chipco_write32(cc, SSB_CHIPCO_GPIOPULLUP, 0);
+		chipco_write32(cc, SSB_CHIPCO_GPIOPULLDOWN, 0);
+	}
+
 	ssb_pmu_init(cc);
 	chipco_powercontrol_init(cc);
 	ssb_chipco_set_clockmode(cc, SSB_CLKMODE_FAST);
diff --git a/include/linux/ssb/ssb_driver_chipcommon.h b/include/linux/ssb/ssb_driver_chipcommon.h
index 2cdf249..ba83bc5 100644
--- a/include/linux/ssb/ssb_driver_chipcommon.h
+++ b/include/linux/ssb/ssb_driver_chipcommon.h
@@ -123,6 +123,8 @@
 #define SSB_CHIPCO_FLASHDATA		0x0048
 #define SSB_CHIPCO_BCAST_ADDR		0x0050
 #define SSB_CHIPCO_BCAST_DATA		0x0054
+#define SSB_CHIPCO_GPIOPULLUP		0x0058
+#define SSB_CHIPCO_GPIOPULLDOWN		0x005C
 #define SSB_CHIPCO_GPIOIN		0x0060
 #define SSB_CHIPCO_GPIOOUT		0x0064
 #define SSB_CHIPCO_GPIOOUTEN		0x0068
-- 
1.7.3.4
