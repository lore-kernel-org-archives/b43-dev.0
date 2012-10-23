From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 23 Oct 2012 09:53:01 -0500
Subject: b43 driver NULL pointer dereference on 3.4.15
In-Reply-To: <50861EE6.70902@gmx.eu>
References: <50861EE6.70902@gmx.eu>
Message-ID: <5086AF4D.5070404@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/22/2012 11:36 PM, Markus Kanet wrote:
> NULL pointer dereference when unloading the b43 driver (not b43legacy) during
> shutdown if firmware was never loaded. See attached syslog.

When I did the b43legacy patch, it seemed reasonable that b43 also needed a 
similar fix, but I could not get b43 to fail on two different systems. Does the 
patch below work for you?

Larry

Index: wireless-testing-new/drivers/net/wireless/b43/main.c
===================================================================
--- wireless-testing-new.orig/drivers/net/wireless/b43/main.c
+++ wireless-testing-new/drivers/net/wireless/b43/main.c
@@ -5404,6 +5404,8 @@ static void b43_bcma_remove(struct bcma_
  	cancel_work_sync(&wldev->restart_work);

  	B43_WARN_ON(!wl);
+	if (!wldev->fw.ucode.data)
+		return;			/* NULL if firmware never loaded */
  	if (wl->current_dev == wldev && wl->hw_registred) {
  		b43_leds_stop(wldev);
  		ieee80211_unregister_hw(wl->hw);
