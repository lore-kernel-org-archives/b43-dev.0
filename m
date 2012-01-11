From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 11 Jan 2012 14:39:32 -0600
Subject: [PATCH] bcma: Enable logging of SPROM offset
Message-ID: <4f0df384.FkBMG6tZuMiWW0Yf%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>
Cc: zajec5@gmail.com, arend@broadcom.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

The SPROM location has been relocated again for some devices. This patch
will log the offset when CONFIG_BCMA_DEBUG has been selected.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---
 
Index: wireless-testing-new/drivers/bcma/sprom.c
===================================================================
--- wireless-testing-new.orig/drivers/bcma/sprom.c
+++ wireless-testing-new/drivers/bcma/sprom.c
@@ -230,6 +230,7 @@ int bcma_sprom_get(struct bcma_bus *bus)
 	 * TODO: understand this condition and use it */
 	offset = (bus->chipinfo.id == 0x4331) ? BCMA_CC_SPROM :
 		BCMA_CC_SPROM_PCIE6;
+	pr_debug("SPROM offset 0x%x\n", offset);
 	bcma_sprom_read(bus, offset, sprom);
 
 	if (bus->chipinfo.id == 0x4331)
