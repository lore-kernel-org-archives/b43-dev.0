From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:23 +0000
Subject: [PATCH net 071/117] ath10k: set fops_enable_extd_tx_stats.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-71-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 348cd95c8196 ("ath10k: add debugfs entry to enable extended tx stats")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ath/ath10k/debug.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index d1f8cf0d5604..8829232e2b34 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -2097,7 +2097,8 @@ static ssize_t ath10k_read_enable_extd_tx_stats(struct file *file,
 static const struct file_operations fops_enable_extd_tx_stats = {
 	.read = ath10k_read_enable_extd_tx_stats,
 	.write = ath10k_write_enable_extd_tx_stats,
-	.open = simple_open
+	.open = simple_open,
+	.owner = THIS_MODULE,
 };
 
 static ssize_t ath10k_write_peer_stats(struct file *file,
-- 
2.17.1
