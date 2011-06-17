From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 17 Jun 2011 13:15:24 +0200
Subject: [PATCH 2/2] bcma: fix BCM43224 rev 0 workaround
In-Reply-To: <1308309324-8680-1-git-send-email-zajec5@gmail.com>
References: <1308309324-8680-1-git-send-email-zajec5@gmail.com>
Message-ID: <1308309324-8680-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/driver_chipcommon_pmu.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/driver_chipcommon_pmu.c b/drivers/bcma/driver_chipcommon_pmu.c
index 934b7ed..dd5846b 100644
--- a/drivers/bcma/driver_chipcommon_pmu.c
+++ b/drivers/bcma/driver_chipcommon_pmu.c
@@ -98,7 +98,7 @@ void bcma_pmu_workarounds(struct bcma_drv_cc *cc)
 		if (bus->chipinfo.rev == 0) {
 			pr_err("Workarounds for 43224 rev 0 not fully "
 				"implemented\n");
-			bcma_chipco_chipctl_maskset(cc, 0, ~0, 0xF0);
+			bcma_chipco_chipctl_maskset(cc, 0, ~0, 0x00F000F0);
 		} else {
 			bcma_chipco_chipctl_maskset(cc, 0, ~0, 0xF0);
 		}
-- 
1.7.3.4
