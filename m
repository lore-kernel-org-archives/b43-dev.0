From: Jarl Friis <jarl@softace.dk>
Date: Wed, 19 Sep 2012 13:18:12 +0200
Subject: [PATCH 1/2] Added information about which firmware file is being
 requested.
Message-ID: <1348053493-22955-1-git-send-email-jarl@softace.dk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefano Brivio <stefano.brivio@polimi.it>, =?UTF-8?q?G=C3=A1bor=20Stefanik?= <netrolller.3d@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Jarl Friis <jarl@softace.dk>

This is informative information to provide about which actual firmware
file is being used.

Signed-off-by: Jarl Friis <jarl@softace.dk>
---
 drivers/net/wireless/b43/main.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index a140165..202a0eb 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2131,6 +2131,7 @@ int b43_do_request_fw(struct b43_request_fw_context *ctx,
 		B43_WARN_ON(1);
 		return -ENOSYS;
 	}
+	b43info(ctx->dev->wl, "Requesting firmware file '%s'\n", ctx->fwname);
 	err = request_firmware(&blob, ctx->fwname, ctx->dev->dev->dev);
 	if (err == -ENOENT) {
 		snprintf(ctx->errors[ctx->req_type],
-- 
1.7.9.5
