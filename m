From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:49 +0000
Subject: [PATCH net 037/117] wl12xx: set tx_queue_len_ops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-37-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 2f01a1f58889 ("wl12xx: add driver")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ti/wl1251/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ti/wl1251/debugfs.c b/drivers/net/wireless/ti/wl1251/debugfs.c
index 21d432532bc3..165e346bf383 100644
--- a/drivers/net/wireless/ti/wl1251/debugfs.c
+++ b/drivers/net/wireless/ti/wl1251/debugfs.c
@@ -214,6 +214,7 @@ static const struct file_operations tx_queue_len_ops = {
 	.read = tx_queue_len_read,
 	.open = simple_open,
 	.llseek = generic_file_llseek,
+	.owner = THIS_MODULE,
 };
 
 static ssize_t tx_queue_status_read(struct file *file, char __user *userbuf,
-- 
2.17.1
