From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:04 +0000
Subject: [PATCH net 052/117] iwlwifi: set DEBUGFS_READ_FILE_OPS.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-52-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: be663ab67077 ("iwlwifi: split the drivers for agn and legacy devices 3945/4965")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/intel/iwlegacy/debug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/intel/iwlegacy/debug.c b/drivers/net/wireless/intel/iwlegacy/debug.c
index 4f741b305d96..03571066f580 100644
--- a/drivers/net/wireless/intel/iwlegacy/debug.c
+++ b/drivers/net/wireless/intel/iwlegacy/debug.c
@@ -136,6 +136,7 @@ static const struct file_operations il_dbgfs_##name##_ops = {	\
 	.read = il_dbgfs_##name##_read,				\
 	.open = simple_open,					\
 	.llseek = generic_file_llseek,				\
+	.owner = THIS_MODULE,					\
 };
 
 #define DEBUGFS_WRITE_FILE_OPS(name)				\
-- 
2.17.1
