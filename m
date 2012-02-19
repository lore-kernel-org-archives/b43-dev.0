From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 19 Feb 2012 19:32:22 +0100
Subject: [PATCH 08/11] MIPS: BCM47XX: return number of written bytes in
 nvram_getenv
In-Reply-To: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1329676345-15856-9-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com, m@bues.ch, Hauke Mehrtens <hauke@hauke-m.de>


Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 arch/mips/bcm47xx/nvram.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/arch/mips/bcm47xx/nvram.c b/arch/mips/bcm47xx/nvram.c
index a84e3bb..d43ceff 100644
--- a/arch/mips/bcm47xx/nvram.c
+++ b/arch/mips/bcm47xx/nvram.c
@@ -107,8 +107,7 @@ int nvram_getenv(char *name, char *val, size_t val_len)
 		value = eq + 1;
 		if ((eq - var) == strlen(name) &&
 			strncmp(var, name, (eq - var)) == 0) {
-			snprintf(val, val_len, "%s", value);
-			return 0;
+			return snprintf(val, val_len, "%s", value);
 		}
 	}
 	return NVRAM_ERR_ENVNOTFOUND;
-- 
1.7.5.4
