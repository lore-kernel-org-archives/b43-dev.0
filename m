From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:44 +0000
Subject: [PATCH net 032/117] wl1271: set DEBUGFS_READONLY_FILE.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-32-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: f5fc0f86b02a ("wl1271: add wl1271 driver files")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ti/wlcore/debugfs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ti/wlcore/debugfs.h b/drivers/net/wireless/ti/wlcore/debugfs.h
index fc3bb0d2ab8d..9cc2dee42f51 100644
--- a/drivers/net/wireless/ti/wlcore/debugfs.h
+++ b/drivers/net/wireless/ti/wlcore/debugfs.h
@@ -35,6 +35,7 @@ static const struct file_operations name## _ops = {			\
 	.read = name## _read,						\
 	.open = simple_open,						\
 	.llseek	= generic_file_llseek,					\
+	.owner = THIS_MODULE,						\
 };
 
 #define DEBUGFS_ADD(name, parent)					\
-- 
2.17.1
