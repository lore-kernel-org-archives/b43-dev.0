From: Markus Kanet <dvmailing@gmx.eu>
Date: Tue, 23 Oct 2012 21:10:56 +0200
Subject: b43 driver NULL pointer dereference on 3.4.15
In-Reply-To: <5086AF4D.5070404@lwfinger.net>
References: <50861EE6.70902@gmx.eu> <5086AF4D.5070404@lwfinger.net>
Message-ID: <5086EBC0.6010701@gmx.eu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Am 23.10.2012 16:53, schrieb Larry Finger:
> When I did the b43legacy patch, it seemed reasonable that b43 also
> needed a similar fix, but I could not get b43 to fail on two different
> systems. Does the patch below work for you?

Thanks for the patch, but it does not apply correct to the 3.4.15 kernel 
sources. Maybe because of the code after the two extra lines looks 
different from your patch and from the 3.4.15 sources.

I tried to add the two lines manually to the kernel sources and did a 
rebuild of the 3.4.15 kernel and it seem to work. At least i don't get 
any errors on shutdown or when using rmmod.

Attached is my patch with a bit more of context... please check twice if 
it is correct.

Markus

-------------- next part --------------
diff -U8 -d -r -N linux-3.4.15.orig/drivers/net/wireless/b43/main.c linux-3.4.15/drivers/net/wireless/b43/main.c
--- linux-3.4.15.orig/drivers/net/wireless/b43/main.c	2012-10-21 18:28:17.000000000 +0200
+++ linux-3.4.15/drivers/net/wireless/b43/main.c	2012-10-23 19:27:03.000000000 +0200
@@ -5425,16 +5425,18 @@
 	struct b43_wldev *wldev = ssb_get_drvdata(sdev);
 	struct b43_bus_dev *dev = wldev->dev;
 
 	/* We must cancel any work here before unregistering from ieee80211,
 	 * as the ieee80211 unreg will destroy the workqueue. */
 	cancel_work_sync(&wldev->restart_work);
 
 	B43_WARN_ON(!wl);
+	if (!wldev->fw.ucode.data)
+		return;			/* NULL if firmware never loaded */
 	if (wl->current_dev == wldev) {
 		/* Restore the queues count before unregistering, because firmware detect
 		 * might have modified it. Restoring is important, so the networking
 		 * stack can properly free resources. */
 		wl->hw->queues = wl->mac80211_initially_registered_queues;
 		b43_leds_stop(wldev);
 		ieee80211_unregister_hw(wl->hw);
 	}
