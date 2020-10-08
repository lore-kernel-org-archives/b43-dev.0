From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:18 +0000
Subject: [PATCH net 066/117] ath11k: set fops_pktlog_filter.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-66-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ath/ath11k/debug.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/debug.c b/drivers/net/wireless/ath/ath11k/debug.c
index 8494ddbef7e7..da085c0a01ed 100644
--- a/drivers/net/wireless/ath/ath11k/debug.c
+++ b/drivers/net/wireless/ath/ath11k/debug.c
@@ -1123,7 +1123,8 @@ static ssize_t ath11k_read_pktlog_filter(struct file *file,
 static const struct file_operations fops_pktlog_filter = {
 	.read = ath11k_read_pktlog_filter,
 	.write = ath11k_write_pktlog_filter,
-	.open = simple_open
+	.open = simple_open,
+	.owner = THIS_MODULE,
 };
 
 static ssize_t ath11k_write_simulate_radar(struct file *file,
-- 
2.17.1
