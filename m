From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Jul 2011 17:41:55 +0200
Subject: [PATCH] b43: change selecting ucode for newer cores
Message-ID: <1309966915-3434-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Older cores had unique PHY. This is not true anymore for newer ones.
For example core rev 16 can be LP, SSLPN or N (PHY).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   26 +++++++++++++++++---------
 1 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index f0b9dd1..cddc5a8 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2160,20 +2160,28 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 	int err;
 
 	/* Get microcode */
-	if ((rev >= 5) && (rev <= 10))
+	if ((rev >= 5) && (rev <= 10)) {
 		filename = "ucode5";
-	else if ((rev >= 11) && (rev <= 12))
+	} else if ((rev >= 11) && (rev <= 12)) {
 		filename = "ucode11";
-	else if (rev == 13)
+	} else if (rev == 13) {
 		filename = "ucode13";
-	else if (rev == 14)
+	} else if (rev == 14) {
 		filename = "ucode14";
-	else if (rev == 15)
+	} else if (rev == 15) {
 		filename = "ucode15";
-	else if ((rev >= 16) && (rev <= 20))
-		filename = "ucode16_mimo";
-	else
-		goto err_no_ucode;
+	} else {
+		switch (dev->phy.type) {
+		case B43_PHYTYPE_N:
+			if (rev >= 16)
+				filename = "ucode16_mimo";
+			else
+				goto err_no_ucode;
+			break;
+		default:
+			goto err_no_ucode;
+		}
+	}
 	err = b43_do_request_fw(ctx, filename, &fw->ucode);
 	if (err)
 		goto err_load;
-- 
1.7.3.4
