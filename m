From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 12 Oct 2011 23:18:14 +0200
Subject: [PATCH 3.2 1/2] Revert "b43: trivial: do not report any link quality
	instead of invalid one"
Message-ID: <1318454295-20573-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

This reverts commit 55ad5962e97430c83d51df36fc18865ee4f78c48.

I assumed N is newer than LP, which isn't true. This regressed LP case.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
It seems that wasn't so "trivial", sorry for this regression :|
---
 drivers/net/wireless/b43/xmit.c |   12 +++++-------
 1 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 5f812d1..b8de62c 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -735,13 +735,11 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 	}
 
 	/* Link quality statistics */
-	if ((chanstat & B43_RX_CHAN_PHYTYPE) >= B43_PHYTYPE_N) {
-		/*
-		s8 rssi = max(rxhdr->power0, rxhdr->power1);
-		TODO: Find out what the rssi value is (dBm or percentage?)
-		      and also find out what the maximum possible value is.
-		      Fill status.ssi and status.signal fields.
-		*/
+	if ((chanstat & B43_RX_CHAN_PHYTYPE) == B43_PHYTYPE_N) {
+//		s8 rssi = max(rxhdr->power0, rxhdr->power1);
+		//TODO: Find out what the rssi value is (dBm or percentage?)
+		//      and also find out what the maximum possible value is.
+		//      Fill status.ssi and status.signal fields.
 	} else {
 		status.signal = b43_rssi_postprocess(dev, rxhdr->jssi,
 						  (phystat0 & B43_RX_PHYST0_OFDM),
-- 
1.7.3.4
