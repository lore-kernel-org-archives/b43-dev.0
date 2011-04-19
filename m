From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Apr 2011 22:40:23 +0200
Subject: [PATCH 2/3] ssb: cc: use correct min_msk for 0x4312
In-Reply-To: <1303245624-3057-1-git-send-email-zajec5@gmail.com>
References: <1303245624-3057-1-git-send-email-zajec5@gmail.com>
Message-ID: <1303245624-3057-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Default min_msk on my 0x4312 is 0x80000CBB, not 0xCBB. Now we follow
specs and wl (noticed in MMIO dumps).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_chipcommon_pmu.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/driver_chipcommon_pmu.c b/drivers/ssb/driver_chipcommon_pmu.c
index 5732bb2..305ade7 100644
--- a/drivers/ssb/driver_chipcommon_pmu.c
+++ b/drivers/ssb/driver_chipcommon_pmu.c
@@ -423,6 +423,8 @@ static void ssb_pmu_resources_init(struct ssb_chipcommon *cc)
 
 	switch (bus->chip_id) {
 	case 0x4312:
+		 min_msk = 0xCBB;
+		 break;
 	case 0x4322:
 		/* We keep the default settings:
 		 * min_msk = 0xCBB
-- 
1.7.3.4
