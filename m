From: Gustavo A. R. Silva <gustavoars@kernel.org>
Date: Fri, 21 Aug 2020 01:44:12 -0500
Subject: [PATCH][next] b43legacy: Use fallthrough pseudo-keyword
Message-ID: <20200821064412.GA20612@embeddedor>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1].

[1] https://www.kernel.org/doc/html/v5.7/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/wireless/broadcom/b43legacy/dma.c  | 2 +-
 drivers/net/wireless/broadcom/b43legacy/main.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index f7594e2a896e..7e2f70c4207c 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -189,7 +189,7 @@ return dev->dma.tx_ring1;
 	switch (queue_priority) {
 	default:
 		B43legacy_WARN_ON(1);
-		/* fallthrough */
+		fallthrough;
 	case 0:
 		ring = dev->dma.tx_ring3;
 		break;
diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 2eaf481f03f1..7fab9f107c10 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -1537,7 +1537,7 @@ static int do_request_fw(struct b43legacy_wldev *dev,
 		size = be32_to_cpu(hdr->size);
 		if (size != (*fw)->size - sizeof(struct b43legacy_fw_header))
 			goto err_format;
-		/* fallthrough */
+		fallthrough;
 	case B43legacy_FW_TYPE_IV:
 		if (hdr->ver != 1)
 			goto err_format;
@@ -2076,7 +2076,7 @@ static void b43legacy_rate_memory_init(struct b43legacy_wldev *dev)
 		b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_36MB, 1);
 		b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_48MB, 1);
 		b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_54MB, 1);
-		/* fallthrough */
+		fallthrough;
 	case B43legacy_PHYTYPE_B:
 		b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_1MB, 0);
 		b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_2MB, 0);
-- 
2.27.0
