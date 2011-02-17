From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 17 Feb 2011 01:50:51 +0100
Subject: [PATCH 2/2] ssb: reset device only if it was enabled
In-Reply-To: <1297903851-5499-1-git-send-email-zajec5@gmail.com>
References: <1297903851-5499-1-git-send-email-zajec5@gmail.com>
Message-ID: <1297903851-5499-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/main.c |   40 ++++++++++++++++++++++------------------
 1 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index 5b6160a..0c1c43a 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -1226,27 +1226,31 @@ void ssb_device_disable(struct ssb_device *dev, u32 core_specific_flags)
 		return;
 
 	reject = ssb_tmslow_reject_bitmask(dev);
-	ssb_write32(dev, SSB_TMSLOW, reject | SSB_TMSLOW_CLOCK);
-	ssb_wait_bits(dev, SSB_TMSLOW, reject, 1000, 1);
-	ssb_wait_bits(dev, SSB_TMSHIGH, SSB_TMSHIGH_BUSY, 1000, 0);
 
-	if (ssb_read32(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
-		val = ssb_read32(dev, SSB_IMSTATE);
-		val |= SSB_IMSTATE_REJECT;
-		ssb_write32(dev, SSB_IMSTATE, val);
-		ssb_wait_bits(dev, SSB_IMSTATE, SSB_IMSTATE_BUSY, 1000, 0);
-	}
+	if (ssb_read32(dev, SSB_TMSLOW) & SSB_TMSLOW_CLOCK) {
+		ssb_write32(dev, SSB_TMSLOW, reject | SSB_TMSLOW_CLOCK);
+		ssb_wait_bits(dev, SSB_TMSLOW, reject, 1000, 1);
+		ssb_wait_bits(dev, SSB_TMSHIGH, SSB_TMSHIGH_BUSY, 1000, 0);
+
+		if (ssb_read32(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
+			val = ssb_read32(dev, SSB_IMSTATE);
+			val |= SSB_IMSTATE_REJECT;
+			ssb_write32(dev, SSB_IMSTATE, val);
+			ssb_wait_bits(dev, SSB_IMSTATE, SSB_IMSTATE_BUSY, 1000,
+				      0);
+		}
 
-	ssb_write32(dev, SSB_TMSLOW,
-		    SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
-		    reject | SSB_TMSLOW_RESET |
-		    core_specific_flags);
-	ssb_flush_tmslow(dev);
+		ssb_write32(dev, SSB_TMSLOW,
+			SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
+			reject | SSB_TMSLOW_RESET |
+			core_specific_flags);
+		ssb_flush_tmslow(dev);
 
-	if (ssb_read32(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
-		val = ssb_read32(dev, SSB_IMSTATE);
-		val &= ~SSB_IMSTATE_REJECT;
-		ssb_write32(dev, SSB_IMSTATE, val);
+		if (ssb_read32(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
+			val = ssb_read32(dev, SSB_IMSTATE);
+			val &= ~SSB_IMSTATE_REJECT;
+			ssb_write32(dev, SSB_IMSTATE, val);
+		}
 	}
 
 	ssb_write32(dev, SSB_TMSLOW,
-- 
1.7.3.4
