From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 12 Aug 2011 00:03:25 +0200
Subject: [PATCH 1/2] b43: include HT-PHY in some common code
Message-ID: <1313100206-25922-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |    1 +
 drivers/net/wireless/b43/xmit.c |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 654c21e..1adadc8 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2949,6 +2949,7 @@ static void b43_rate_memory_init(struct b43_wldev *dev)
 	case B43_PHYTYPE_G:
 	case B43_PHYTYPE_N:
 	case B43_PHYTYPE_LP:
+	case B43_PHYTYPE_HT:
 		b43_rate_memory_write(dev, B43_OFDM_RATE_6MB, 1);
 		b43_rate_memory_write(dev, B43_OFDM_RATE_12MB, 1);
 		b43_rate_memory_write(dev, B43_OFDM_RATE_18MB, 1);
diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 5b82409..b8de62c 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -797,6 +797,7 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		break;
 	case B43_PHYTYPE_N:
 	case B43_PHYTYPE_LP:
+	case B43_PHYTYPE_HT:
 		/* chanid is the SHM channel cookie. Which is the plain
 		 * channel number in b43. */
 		if (chanstat & B43_RX_CHAN_5GHZ) {
-- 
1.7.3.4
