From: Takashi Iwai <tiwai@suse.de>
Date: Thu,  4 May 2017 11:27:52 +0200
Subject: [PATCH] b43: Add missing MODULE_FIRMWARE()
Message-ID: <20170504092752.2422-1-tiwai@suse.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Some recent firmware entries were forgotten to be added via
MODULE_FIRMWARE(), which may result in the non-functional state when
the driver is loaded in initrd.

Link: http://bugzilla.opensuse.org/show_bug.cgi?id=1037344
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/net/wireless/broadcom/b43/main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index d23aac7503d3..b37e7391f55d 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -71,8 +71,18 @@ MODULE_FIRMWARE("b43/ucode11.fw");
 MODULE_FIRMWARE("b43/ucode13.fw");
 MODULE_FIRMWARE("b43/ucode14.fw");
 MODULE_FIRMWARE("b43/ucode15.fw");
+MODULE_FIRMWARE("b43/ucode16_lp.fw");
 MODULE_FIRMWARE("b43/ucode16_mimo.fw");
+MODULE_FIRMWARE("b43/ucode24_lcn.fw");
+MODULE_FIRMWARE("b43/ucode25_lcn.fw");
+MODULE_FIRMWARE("b43/ucode25_mimo.fw");
+MODULE_FIRMWARE("b43/ucode26_mimo.fw");
+MODULE_FIRMWARE("b43/ucode29_mimo.fw");
+MODULE_FIRMWARE("b43/ucode33_lcn40.fw");
+MODULE_FIRMWARE("b43/ucode30_mimo.fw");
 MODULE_FIRMWARE("b43/ucode5.fw");
+MODULE_FIRMWARE("b43/ucode40.fw");
+MODULE_FIRMWARE("b43/ucode42.fw");
 MODULE_FIRMWARE("b43/ucode9.fw");
 
 static int modparam_bad_frames_preempt;
-- 
2.12.2
