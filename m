From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:45 +0000
Subject: [PATCH net 093/117] wil6210: set fops_compressed_rx_status.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-93-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 96c93589e2df ("wil6210: initialize TX and RX enhanced DMA rings")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ath/wil6210/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/wil6210/debugfs.c b/drivers/net/wireless/ath/wil6210/debugfs.c
index 4ac558f95586..7540c49aba3f 100644
--- a/drivers/net/wireless/ath/wil6210/debugfs.c
+++ b/drivers/net/wireless/ath/wil6210/debugfs.c
@@ -2347,6 +2347,7 @@ static const struct file_operations fops_compressed_rx_status = {
 	.read = seq_read,
 	.write = wil_compressed_rx_status_write,
 	.llseek	= seq_lseek,
+	.owner = THIS_MODULE,
 };
 
 /*----------------*/
-- 
2.17.1
