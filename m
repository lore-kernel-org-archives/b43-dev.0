From: Seth Forshee <seth.forshee@canonical.com>
Date: Thu, 31 May 2012 08:49:23 -0500
Subject: [PATCH] b43: ensure ext PA lines are enabled for BCM4331
Message-ID: <1338472163-3810-1-git-send-email-seth.forshee@canonical.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefano Brivio <stefano.brivio@polimi.it>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>, Arend van Spriel <arend@broadcom.com>

Some MacBook Pro models with BCM4331 wireless will stop transmitting
after resuming from S3 without external power attached. This is fixed by
ensuring that the ext PA lines are enabled in BCMA_CC_CHIPCTL. Export
the function in bcma which does this for use by b43 and enable the ext
PA lines during wireless core initialization.

BugLink: http://bugs.launchpad.net/bugs/925577
Cc: Arend van Spriel <arend@broadcom.com>
Cc: stable at vger.kernel.org
Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 drivers/bcma/driver_chipcommon_pmu.c |    1 +
 drivers/net/wireless/b43/main.c      |    7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/bcma/driver_chipcommon_pmu.c b/drivers/bcma/driver_chipcommon_pmu.c
index a058842..332d7fb 100644
--- a/drivers/bcma/driver_chipcommon_pmu.c
+++ b/drivers/bcma/driver_chipcommon_pmu.c
@@ -129,6 +129,7 @@ void bcma_chipco_bcm4331_ext_pa_lines_ctl(struct bcma_drv_cc *cc, bool enable)
 	}
 	bcma_cc_write32(cc, BCMA_CC_CHIPCTL, val);
 }
+EXPORT_SYMBOL_GPL(bcma_chipco_bcm4331_ext_pa_lines_ctl);
 
 void bcma_pmu_workarounds(struct bcma_drv_cc *cc)
 {
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 5a39b22..6bac5cf 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4713,6 +4713,13 @@ static int b43_wireless_core_init(struct b43_wldev *dev)
 	b43_upload_card_macaddress(dev);
 	b43_security_init(dev);
 
+#ifdef CONFIG_B43_BCMA
+	/* Required for tx to work on BCM4331 */
+	if (dev->dev->bus_type == B43_BUS_BCMA && dev->dev->chip_id == 0x4331)
+		bcma_chipco_bcm4331_ext_pa_lines_ctl(&dev->dev->bdev->bus->drv_cc,
+						     true);
+#endif
+
 	ieee80211_wake_queues(dev->wl->hw);
 
 	b43_set_status(dev, B43_STAT_INITIALIZED);
-- 
1.7.9.5
