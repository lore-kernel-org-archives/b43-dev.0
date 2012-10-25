From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 25 Oct 2012 18:39:29 +0200
Subject: [PATCH 2/2] ssb: handle BCM43222 in pmu code.
In-Reply-To: <1351183169-13392-1-git-send-email-hauke@hauke-m.de>
References: <1351183169-13392-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1351183169-13392-2-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, m@bues.ch, b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>

The BCM43222 with the chipid 43222 or 0xa8d6 in hex do not need any
special handling in the pmu code. This prevents some error messages
being shown.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/ssb/driver_chipcommon_pmu.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ssb/driver_chipcommon_pmu.c b/drivers/ssb/driver_chipcommon_pmu.c
index b58fef7..d7d5804 100644
--- a/drivers/ssb/driver_chipcommon_pmu.c
+++ b/drivers/ssb/driver_chipcommon_pmu.c
@@ -346,6 +346,8 @@ static void ssb_pmu_pll_init(struct ssb_chipcommon *cc)
 			chipco_write32(cc, SSB_CHIPCO_PLLCTL_DATA, 0x380005C0);
 		}
 		break;
+	case 43222:
+		break;
 	default:
 		ssb_printk(KERN_ERR PFX
 			   "ERROR: PLL init unknown for device %04X\n",
@@ -434,6 +436,7 @@ static void ssb_pmu_resources_init(struct ssb_chipcommon *cc)
 		 min_msk = 0xCBB;
 		 break;
 	case 0x4322:
+	case 43222:
 		/* We keep the default settings:
 		 * min_msk = 0xCBB
 		 * max_msk = 0x7FFFF
-- 
1.7.9.5
