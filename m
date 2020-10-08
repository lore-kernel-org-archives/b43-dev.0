From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:31 +0000
Subject: [PATCH net 019/117] net: hsr: set hsr_fops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-19-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: fc4ecaeebd26 ("net: hsr: add debugfs support for display node list")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/hsr/hsr_debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/hsr/hsr_debugfs.c b/net/hsr/hsr_debugfs.c
index 7e11a6c35bc3..92ebb5ff41e4 100644
--- a/net/hsr/hsr_debugfs.c
+++ b/net/hsr/hsr_debugfs.c
@@ -90,6 +90,7 @@ static const struct file_operations hsr_fops = {
 	.read	= seq_read,
 	.llseek = seq_lseek,
 	.release = single_release,
+	.owner = THIS_MODULE,
 };
 
 /* hsr_debugfs_init - create hsr node_table file for dumping
-- 
2.17.1
