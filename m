From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:50 +0000
Subject: [PATCH net 098/117] wireless: mwifiex: set .owner to THIS_MODULE in
 debugfs.c
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-98-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/marvell/mwifiex/debugfs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/marvell/mwifiex/debugfs.c b/drivers/net/wireless/marvell/mwifiex/debugfs.c
index dded92db1f37..641113260439 100644
--- a/drivers/net/wireless/marvell/mwifiex/debugfs.c
+++ b/drivers/net/wireless/marvell/mwifiex/debugfs.c
@@ -931,18 +931,21 @@ static const struct file_operations mwifiex_dfs_##name##_fops = {       \
 	.read = mwifiex_##name##_read,                                  \
 	.write = mwifiex_##name##_write,                                \
 	.open = simple_open,                                            \
+	.owner = THIS_MODULE,						\
 };
 
 #define MWIFIEX_DFS_FILE_READ_OPS(name)                                 \
 static const struct file_operations mwifiex_dfs_##name##_fops = {       \
 	.read = mwifiex_##name##_read,                                  \
 	.open = simple_open,                                            \
+	.owner = THIS_MODULE,						\
 };
 
 #define MWIFIEX_DFS_FILE_WRITE_OPS(name)                                \
 static const struct file_operations mwifiex_dfs_##name##_fops = {       \
 	.write = mwifiex_##name##_write,                                \
 	.open = simple_open,                                            \
+	.owner = THIS_MODULE,						\
 };
 
 
-- 
2.17.1
