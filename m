From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 29 Apr 2012 02:18:49 +0200
Subject: [PATCH 1/4] bcma: implement setting core clock mode to dynamic
In-Reply-To: <1335658732-24351-1-git-send-email-hauke@hauke-m.de>
References: <1335658732-24351-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1335658732-24351-2-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, arend@broadcom.com, Hauke Mehrtens <hauke@hauke-m.de>

This patch is based on code from _ai_clkctl_cc() in brcmsmac.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bcma/core.c b/drivers/bcma/core.c
index 893f6e0..98e243c 100644
--- a/drivers/bcma/core.c
+++ b/drivers/bcma/core.c
@@ -77,7 +77,7 @@ void bcma_core_set_clockmode(struct bcma_device *core,
 			pr_err("HT force timeout\n");
 		break;
 	case BCMA_CLKMODE_DYNAMIC:
-		pr_warn("Dynamic clockmode not supported yet!\n");
+		bcma_set32(core, BCMA_CLKCTLST, ~BCMA_CLKCTLST_FORCEHT);
 		break;
 	}
 }
-- 
1.7.9.5
