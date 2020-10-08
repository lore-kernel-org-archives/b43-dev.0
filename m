From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:40 +0000
Subject: [PATCH net 028/117] i2400m: set i2400m_tx_stats_fops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-28-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c71228caf91e ("i2400m: debugfs controls")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wimax/i2400m/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wimax/i2400m/debugfs.c b/drivers/net/wimax/i2400m/debugfs.c
index 9eda1535f777..144f8a7e98af 100644
--- a/drivers/net/wimax/i2400m/debugfs.c
+++ b/drivers/net/wimax/i2400m/debugfs.c
@@ -141,6 +141,7 @@ const struct file_operations i2400m_tx_stats_fops = {
 	.read =		i2400m_tx_stats_read,
 	.write =	i2400m_tx_stats_write,
 	.llseek =	default_llseek,
+	.owner =	THIS_MODULE,
 };
 
 
-- 
2.17.1
