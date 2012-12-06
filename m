From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu,  6 Dec 2012 22:44:58 +0100
Subject: [PATCH] b43-fwcutter: pack correct ucode for brcmsmac fw
Message-ID: <1354830298-4160-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

brcmsmac supports only lcn-phy core with core rev 24 and no n-phy cores
with core rev 24, so pack the correct ucode image into the firmware
package.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 fwcutter/fwcutter.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fwcutter/fwcutter.c b/fwcutter/fwcutter.c
index 6f5788c..e9082f9 100644
--- a/fwcutter/fwcutter.c
+++ b/fwcutter/fwcutter.c
@@ -449,7 +449,7 @@ static int brcmsmac_name_to_idx(const char *name)
 		return D11N0INITVALS16;
 	} else if (strcmp("ucode16_mimo", name) == 0) {
 		return D11UCODE_OVERSIGHT16_MIMO;
-	} else if (strcmp("ucode24_mimo", name) == 0) {
+	} else if (strcmp("ucode24_lcn", name) == 0) {
 		return D11UCODE_OVERSIGHT24_LCN;
 	}
 	return 0;
@@ -459,7 +459,7 @@ static int brcmsmac_name_to_size_idx(const char *name)
 {
 	if (strcmp("ucode16_mimo", name) == 0) {
 		return D11UCODE_OVERSIGHT16_MIMOSZ;
-	} else if (strcmp("ucode24_mimo", name) == 0) {
+	} else if (strcmp("ucode24_lcn", name) == 0) {
 		return D11UCODE_OVERSIGHT24_LCNSZ;
 	}
 	return 0;
-- 
1.7.10.4
