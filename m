From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 06 May 2012 16:01:05 -0500
Subject: [PATCH] b43legacy: Fix error due to MMIO access with SSB
 unpowered
Message-ID: <4fa6e691.07pJDEPTzATe9gO6%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

There is a dummy read of a PCI MMIO register that occurs before the SSB bus
has been powered, which is an error. This bug has not been seen earlier,
but was apparently exposed when udev was updated to version 182.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
Cc: stable <stable@vger.kernel.org>
---

John,

This fix should be applied to 3.4.

Larry
---

Index: wireless-testing-new/drivers/net/wireless/b43legacy/main.c
===================================================================
--- wireless-testing-new.orig/drivers/net/wireless/b43legacy/main.c
+++ wireless-testing-new/drivers/net/wireless/b43legacy/main.c
@@ -1573,8 +1573,6 @@ static void b43legacy_request_firmware(s
 	const char *filename;
 	int err;
 
-	/* do dummy read */
-	ssb_read32(dev->dev, SSB_TMSHIGH);
 	if (!fw->ucode) {
 		if (rev == 2)
 			filename = "ucode2";
