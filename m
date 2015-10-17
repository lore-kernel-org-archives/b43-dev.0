From: Paul McQuade <paulmcquad@gmail.com>
Date: Sun, 18 Oct 2015 00:01:36 +0100
Subject: [PATCH 1/3] net: wireless: rsi: Coding Spaces
Message-ID: <1445122898-5810-1-git-send-email-paulmcquad@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: paulmcquad@gmail.com
Cc: kvalo@codeaurora.org, zajec5@gmail.com, johannes.berg@intel.com, davem@davemloft.net, joe@perches.com, m@bues.ch, mike.looijmans@topic.nl, cengelma@gmx.at, khoroshilov@ispras.ru, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

Removed space before that ','

Signed-off-by: Paul McQuade <paulmcquad@gmail.com>
---
 drivers/net/wireless/rsi/rsi_91x_sdio_ops.c | 2 +-
 drivers/net/wireless/rsi/rsi_mgmt.h         | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/rsi/rsi_91x_sdio_ops.c b/drivers/net/wireless/rsi/rsi_91x_sdio_ops.c
index 40d7231..8fa241b 100644
--- a/drivers/net/wireless/rsi/rsi_91x_sdio_ops.c
+++ b/drivers/net/wireless/rsi/rsi_91x_sdio_ops.c
@@ -435,7 +435,7 @@ void rsi_interrupt_handler(struct rsi_hw *adapter)
 				} else {
 					rsi_dbg(ERR_ZONE,
 						"%s: Firmware Status is 0x%x\n",
-						__func__ , fw_status);
+						__func__, fw_status);
 					rsi_sdio_ack_intr(common->priv,
 							  (1 << FW_ASSERT_IND));
 				}
diff --git a/drivers/net/wireless/rsi/rsi_mgmt.h b/drivers/net/wireless/rsi/rsi_mgmt.h
index 3741173..3d4eddd 100644
--- a/drivers/net/wireless/rsi/rsi_mgmt.h
+++ b/drivers/net/wireless/rsi/rsi_mgmt.h
@@ -173,9 +173,9 @@ enum cmd_frame_type {
 	AUTO_RATE_IND,
 	BOOTUP_PARAMS_REQUEST,
 	VAP_CAPABILITIES,
-	EEPROM_READ_TYPE ,
+	EEPROM_READ_TYPE,
 	EEPROM_WRITE,
-	GPIO_PIN_CONFIG ,
+	GPIO_PIN_CONFIG,
 	SET_RX_FILTER,
 	AMPDU_IND,
 	STATS_REQUEST_FRAME,
-- 
2.6.1
