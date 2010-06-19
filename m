From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 19 Jun 2010 08:29:08 -0500
Subject: [PATCH] b43: Clarify logged message after fatal DMA error and
	switch to PIO mode
Message-ID: <4c1cc624.Whz955JR9XYzqjst%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

The message following fatal DMA errors fails to indicate properly that the
driver has switched to PIO mode.

Signed-off-by: Larry Finger <Larry.Finger@wfinger.net>
---

Index: wireless-testing/drivers/net/wireless/b43/main.c
===================================================================
--- wireless-testing.orig/drivers/net/wireless/b43/main.c
+++ wireless-testing/drivers/net/wireless/b43/main.c
@@ -1804,7 +1804,7 @@ static void b43_do_interrupt_thread(stru
 			       dma_reason[2], dma_reason[3],
 			       dma_reason[4], dma_reason[5]);
 			b43err(dev->wl, "This device does not support DMA "
-			       "on your system. Please use PIO instead.\n");
+			       "on your system. It will now be switched to PIO.\n");
 			/* Fall back to PIO transfers if we get fatal DMA errors! */
 			dev->use_pio = 1;
 			b43_controller_restart(dev, "DMA error");
