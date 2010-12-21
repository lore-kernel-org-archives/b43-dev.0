From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 21 Dec 2010 11:50:19 +0100
Subject: [PATCH 1/4] b43: use correct firmware for newer cores
Message-ID: <1292928622-27651-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 1aec160..5fb0bc6 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2121,8 +2121,10 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		filename = "ucode13";
 	else if (rev == 14)
 		filename = "ucode14";
-	else if (rev >= 15)
+	else if (rev == 15)
 		filename = "ucode15";
+	else if ((rev >= 16) && (rev <= 20))
+		filename = "ucode16_mimo";
 	else
 		goto err_no_ucode;
 	err = b43_do_request_fw(ctx, filename, &fw->ucode);
@@ -2165,7 +2167,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 			goto err_no_initvals;
 		break;
 	case B43_PHYTYPE_N:
-		if ((rev >= 11) && (rev <= 12))
+		if (rev >= 16)
+			filename = "n0initvals16";
+		else if ((rev >= 11) && (rev <= 12))
 			filename = "n0initvals11";
 		else
 			goto err_no_initvals;
@@ -2209,7 +2213,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 			goto err_no_initvals;
 		break;
 	case B43_PHYTYPE_N:
-		if ((rev >= 11) && (rev <= 12))
+		if (rev >= 16)
+			filename = "n0bsinitvals16";
+		else if ((rev >= 11) && (rev <= 12))
 			filename = "n0bsinitvals11";
 		else
 			goto err_no_initvals;
-- 
1.6.3.3
