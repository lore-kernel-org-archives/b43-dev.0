From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 11 Aug 2011 15:07:16 +0200
Subject: [PATCH 3/3] b43: support new TX header,
	noticed to be used by 598.314+ fw
In-Reply-To: <1313068036-13608-1-git-send-email-zajec5@gmail.com>
References: <1313068036-13608-1-git-send-email-zajec5@gmail.com>
Message-ID: <1313068036-13608-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/b43.h  |    3 ++-
 drivers/net/wireless/b43/main.c |    4 +++-
 drivers/net/wireless/b43/xmit.c |   22 ++++++++++++++++++++++
 drivers/net/wireless/b43/xmit.h |   19 +++++++++++++++++++
 4 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/b43.h b/drivers/net/wireless/b43/b43.h
index e9f04ae..9e5974b 100644
--- a/drivers/net/wireless/b43/b43.h
+++ b/drivers/net/wireless/b43/b43.h
@@ -696,6 +696,7 @@ struct b43_firmware_file {
 };
 
 enum b43_firmware_hdr_format {
+	B43_FW_HDR_598,
 	B43_FW_HDR_410,
 	B43_FW_HDR_351,
 };
@@ -884,7 +885,7 @@ struct b43_wl {
 	struct b43_leds leds;
 
 	/* Kmalloc'ed scratch space for PIO TX/RX. Protected by wl->mutex. */
-	u8 pio_scratchspace[110] __attribute__((__aligned__(8)));
+	u8 pio_scratchspace[118] __attribute__((__aligned__(8)));
 	u8 pio_tailspace[4] __attribute__((__aligned__(8)));
 };
 
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index fa05f00..654c21e 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2510,7 +2510,9 @@ static int b43_upload_microcode(struct b43_wldev *dev)
 	}
 	dev->fw.rev = fwrev;
 	dev->fw.patch = fwpatch;
-	if (dev->fw.rev >= 410)
+	if (dev->fw.rev >= 598)
+		dev->fw.hdr_format = B43_FW_HDR_598;
+	else if (dev->fw.rev >= 410)
 		dev->fw.hdr_format = B43_FW_HDR_410;
 	else
 		dev->fw.hdr_format = B43_FW_HDR_351;
diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
index 5ce17d5..b02170d 100644
--- a/drivers/net/wireless/b43/xmit.c
+++ b/drivers/net/wireless/b43/xmit.c
@@ -338,6 +338,10 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 		}
 	}
 	switch (dev->fw.hdr_format) {
+	case B43_FW_HDR_598:
+		b43_generate_plcp_hdr((struct b43_plcp_hdr4 *)(&txhdr->format_598.plcp),
+				      plcp_fragment_len, rate);
+		break;
 	case B43_FW_HDR_351:
 		b43_generate_plcp_hdr((struct b43_plcp_hdr4 *)(&txhdr->format_351.plcp),
 				      plcp_fragment_len, rate);
@@ -435,6 +439,10 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 			struct ieee80211_cts *uninitialized_var(cts);
 
 			switch (dev->fw.hdr_format) {
+			case B43_FW_HDR_598:
+				cts = (struct ieee80211_cts *)
+					(txhdr->format_598.rts_frame);
+				break;
 			case B43_FW_HDR_351:
 				cts = (struct ieee80211_cts *)
 					(txhdr->format_351.rts_frame);
@@ -453,6 +461,10 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 			struct ieee80211_rts *uninitialized_var(rts);
 
 			switch (dev->fw.hdr_format) {
+			case B43_FW_HDR_598:
+				rts = (struct ieee80211_rts *)
+					(txhdr->format_598.rts_frame);
+				break;
 			case B43_FW_HDR_351:
 				rts = (struct ieee80211_rts *)
 					(txhdr->format_351.rts_frame);
@@ -472,6 +484,9 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 
 		/* Generate the PLCP headers for the RTS/CTS frame */
 		switch (dev->fw.hdr_format) {
+		case B43_FW_HDR_598:
+			plcp = &txhdr->format_598.rts_plcp;
+			break;
 		case B43_FW_HDR_351:
 			plcp = &txhdr->format_351.rts_plcp;
 			break;
@@ -486,6 +501,10 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 				      len, rts_rate_fb);
 
 		switch (dev->fw.hdr_format) {
+		case B43_FW_HDR_598:
+			hdr = (struct ieee80211_hdr *)
+				(&txhdr->format_598.rts_frame);
+			break;
 		case B43_FW_HDR_351:
 			hdr = (struct ieee80211_hdr *)
 				(&txhdr->format_351.rts_frame);
@@ -522,6 +541,9 @@ int b43_generate_txhdr(struct b43_wldev *dev,
 
 	/* Magic cookie */
 	switch (dev->fw.hdr_format) {
+	case B43_FW_HDR_598:
+		txhdr->format_598.cookie = cpu_to_le16(cookie);
+		break;
 	case B43_FW_HDR_351:
 		txhdr->format_351.cookie = cpu_to_le16(cookie);
 		break;
diff --git a/drivers/net/wireless/b43/xmit.h b/drivers/net/wireless/b43/xmit.h
index a3ff727..dccf7c1 100644
--- a/drivers/net/wireless/b43/xmit.h
+++ b/drivers/net/wireless/b43/xmit.h
@@ -46,6 +46,23 @@ struct b43_txhdr {
 	__le32 timeout;			/* Timeout */
 
 	union {
+		/* Tested with 598.314, 644.1001 and 666.2 */
+		struct {
+			__le16 mimo_antenna;            /* MIMO antenna select */
+			__le16 preload_size;            /* Preload size */
+			PAD_BYTES(2);
+			__le16 cookie;                  /* TX frame cookie */
+			__le16 tx_status;               /* TX status */
+			__le16 max_n_mpdus;
+			__le16 max_a_bytes_mrt;
+			__le16 max_a_bytes_fbr;
+			__le16 min_m_bytes;
+			struct b43_plcp_hdr6 rts_plcp;  /* RTS PLCP header */
+			__u8 rts_frame[16];             /* The RTS frame (if used) */
+			PAD_BYTES(2);
+			struct b43_plcp_hdr6 plcp;      /* Main PLCP header */
+		} format_598 __packed;
+
 		/* Tested with 410.2160, 478.104 and 508.* */
 		struct {
 			__le16 mimo_antenna;		/* MIMO antenna select */
@@ -170,6 +187,8 @@ static inline
 size_t b43_txhdr_size(struct b43_wldev *dev)
 {
 	switch (dev->fw.hdr_format) {
+	case B43_FW_HDR_598:
+		return 112 + sizeof(struct b43_plcp_hdr6);
 	case B43_FW_HDR_410:
 		return 104 + sizeof(struct b43_plcp_hdr6);
 	case B43_FW_HDR_351:
-- 
1.7.3.4
