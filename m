From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 28 Oct 2011 12:17:49 -0500
Subject: [PATCH] b43: Remove unneeded message
Message-ID: <4eaae3bd.6dGvZRxCR5KjZSGd%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>, zajec5@gmail.com, Michael Buesch <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

The driver can spam the logs with "RX: Packet dropped" messages. These drops
originate from 1. a correpted PLCP, 2. decryption errors, and 3. packet 
size underruns. Condition #3 logs a separate message, thus no dropped message
is needed.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---

Index: wireless-testing-new/drivers/net/wireless/b43/xmit.c
===================================================================
--- wireless-testing-new.orig/drivers/net/wireless/b43/xmit.c
+++ wireless-testing-new/drivers/net/wireless/b43/xmit.c
@@ -831,7 +831,6 @@ void b43_rx(struct b43_wldev *dev, struc
 #endif
 	return;
 drop:
-	b43dbg(dev->wl, "RX: Packet dropped\n");
 	dev_kfree_skb_any(skb);
 }
 
