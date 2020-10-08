From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:29 +0000
Subject: [PATCH net 077/117] wil6210: set fops_rbufcap.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-77-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c5b3a6582b1e ("wil6210: Add support for setting RBUFCAP configuration")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ath/wil6210/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/wil6210/debugfs.c b/drivers/net/wireless/ath/wil6210/debugfs.c
index 914954cb9b0b..6c00d57e743a 100644
--- a/drivers/net/wireless/ath/wil6210/debugfs.c
+++ b/drivers/net/wireless/ath/wil6210/debugfs.c
@@ -769,6 +769,7 @@ static ssize_t wil_write_file_rbufcap(struct file *file,
 static const struct file_operations fops_rbufcap = {
 	.write = wil_write_file_rbufcap,
 	.open  = simple_open,
+	.owner = THIS_MODULE,
 };
 
 /* block ack control, write:
-- 
2.17.1
