From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:33 +0000
Subject: [PATCH net 021/117] 6lowpan: iphc: set lowpan_ctx_pfx_fops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-21-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 5609c185f24d ("6lowpan: iphc: add support for stateful compression")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/6lowpan/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/6lowpan/debugfs.c b/net/6lowpan/debugfs.c
index 1c140af06d52..29c3627a00e2 100644
--- a/net/6lowpan/debugfs.c
+++ b/net/6lowpan/debugfs.c
@@ -161,6 +161,7 @@ static const struct file_operations lowpan_ctx_pfx_fops = {
 	.write		= lowpan_ctx_pfx_write,
 	.llseek		= seq_lseek,
 	.release	= single_release,
+	.owner		= THIS_MODULE,
 };
 
 static void lowpan_dev_debugfs_ctx_init(struct net_device *dev,
-- 
2.17.1
