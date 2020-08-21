From: Gustavo A. R. Silva <gustavoars@kernel.org>
Date: Fri, 21 Aug 2020 01:42:18 -0500
Subject: [PATCH][next] b43: Use fallthrough pseudo-keyword
Message-ID: <20200821064218.GA19502@embeddedor>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1].

[1] https://www.kernel.org/doc/html/v5.7/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/wireless/broadcom/b43/dma.c         | 2 +-
 drivers/net/wireless/broadcom/b43/main.c        | 8 ++++----
 drivers/net/wireless/broadcom/b43/phy_n.c       | 2 +-
 drivers/net/wireless/broadcom/b43/pio.c         | 2 +-
 drivers/net/wireless/broadcom/b43/tables_nphy.c | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index ca671fc13116..9a7c62bd5e43 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1317,7 +1317,7 @@ static struct b43_dmaring *select_ring_by_priority(struct b43_wldev *dev,
 		switch (queue_prio) {
 		default:
 			B43_WARN_ON(1);
-			/* fallthrough */
+			fallthrough;
 		case 0:
 			ring = dev->dma.tx_ring_AC_VO;
 			break;
diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index a54dd4f7fa54..88def6fa267b 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -1873,7 +1873,7 @@ static void b43_handle_firmware_panic(struct b43_wldev *dev)
 	switch (reason) {
 	default:
 		b43dbg(dev->wl, "The panic reason is unknown.\n");
-		/* fallthrough */
+		fallthrough;
 	case B43_FWPANIC_DIE:
 		/* Do not restart the controller or firmware.
 		 * The device is nonfunctional from now on.
@@ -2266,7 +2266,7 @@ int b43_do_request_fw(struct b43_request_fw_context *ctx,
 		size = be32_to_cpu(hdr->size);
 		if (size != ctx->blob->size - sizeof(struct b43_fw_header))
 			goto err_format;
-		/* fallthrough */
+		fallthrough;
 	case B43_FW_TYPE_IV:
 		if (hdr->ver != 1)
 			goto err_format;
@@ -3178,7 +3178,7 @@ static void b43_rate_memory_init(struct b43_wldev *dev)
 		b43_rate_memory_write(dev, B43_OFDM_RATE_36MB, 1);
 		b43_rate_memory_write(dev, B43_OFDM_RATE_48MB, 1);
 		b43_rate_memory_write(dev, B43_OFDM_RATE_54MB, 1);
-		/* fallthrough */
+		fallthrough;
 	case B43_PHYTYPE_B:
 		b43_rate_memory_write(dev, B43_CCK_RATE_1MB, 0);
 		b43_rate_memory_write(dev, B43_CCK_RATE_2MB, 0);
@@ -5329,7 +5329,7 @@ static void b43_supported_bands(struct b43_wldev *dev, bool *have_2ghz_phy,
 		/* There are 14e4:4321 PCI devs with 2.4 GHz BCM4321 (N-PHY) */
 		if (dev->phy.type != B43_PHYTYPE_G)
 			break;
-		/* fall through */
+		fallthrough;
 	case 0x4313: /* BCM4311 */
 	case 0x431a: /* BCM4318 */
 	case 0x432a: /* BCM4321 */
diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index ca2018da9753..0fe09b3989da 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -3239,7 +3239,7 @@ static void b43_nphy_workarounds_rev3plus(struct b43_wldev *dev)
 		if (!(dev->phy.rev >= 4 &&
 		      b43_current_band(dev->wl) == NL80211_BAND_2GHZ))
 			break;
-		/* FALL THROUGH */
+		fallthrough;
 	case 0:
 	case 1:
 		b43_ntab_write_bulk(dev, B43_NTAB16(8, 0x08), 4, vmid);
diff --git a/drivers/net/wireless/broadcom/b43/pio.c b/drivers/net/wireless/broadcom/b43/pio.c
index 1a11c5dfb8d9..8c28a9250cd1 100644
--- a/drivers/net/wireless/broadcom/b43/pio.c
+++ b/drivers/net/wireless/broadcom/b43/pio.c
@@ -294,7 +294,7 @@ static struct b43_pio_txqueue *select_queue_by_priority(struct b43_wldev *dev,
 		switch (queue_prio) {
 		default:
 			B43_WARN_ON(1);
-			/* fallthrough */
+			fallthrough;
 		case 0:
 			q = dev->pio.tx_queue_AC_VO;
 			break;
diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c b/drivers/net/wireless/broadcom/b43/tables_nphy.c
index 7957db94e84c..41a25d909d0d 100644
--- a/drivers/net/wireless/broadcom/b43/tables_nphy.c
+++ b/drivers/net/wireless/broadcom/b43/tables_nphy.c
@@ -3717,7 +3717,7 @@ const u32 *b43_nphy_get_tx_gain_table(struct b43_wldev *dev)
 		case 5:
 			if (sprom->fem.ghz2.extpa_gain == 3)
 				return b43_ntab_tx_gain_epa_rev3_hi_pwr_2g;
-			/* fall through */
+			fallthrough;
 		case 4:
 		case 3:
 			return b43_ntab_tx_gain_epa_rev3_2g;
-- 
2.27.0
