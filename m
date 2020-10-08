From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:02 +0000
Subject: [PATCH net 050/117] iwlwifi: runtime: set
 _FWRT_DEBUGFS_READ_WRITE_FILE_OPS.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-50-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 93b167c13a3a ("iwlwifi: runtime: sync FW and host clocks for logs")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/intel/iwlwifi/fw/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/intel/iwlwifi/fw/debugfs.c b/drivers/net/wireless/intel/iwlwifi/fw/debugfs.c
index c0edf6fb3760..d99ed6b2f781 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/debugfs.c
+++ b/drivers/net/wireless/intel/iwlwifi/fw/debugfs.c
@@ -151,6 +151,7 @@ static const struct file_operations iwl_dbgfs_##name##_ops = {		\
 	.open = _iwl_dbgfs_##name##_open,				\
 	.llseek = generic_file_llseek,					\
 	.release = _iwl_dbgfs_release,					\
+	.owner = THIS_MODULE,						\
 }
 
 #define _FWRT_DEBUGFS_WRITE_FILE_OPS(name, buflen, argtype)		\
-- 
2.17.1
