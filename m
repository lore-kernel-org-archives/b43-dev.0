From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:35 +0000
Subject: [PATCH net 023/117] netdevsim: set
 nsim_udp_tunnels_info_reset_fops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-23-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 424be63ad831 ("netdevsim: add UDP tunnel port offload support")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/netdevsim/udp_tunnels.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/netdevsim/udp_tunnels.c b/drivers/net/netdevsim/udp_tunnels.c
index 22c06a76033c..2482b0f80b2f 100644
--- a/drivers/net/netdevsim/udp_tunnels.c
+++ b/drivers/net/netdevsim/udp_tunnels.c
@@ -119,6 +119,7 @@ static const struct file_operations nsim_udp_tunnels_info_reset_fops = {
 	.open = simple_open,
 	.write = nsim_udp_tunnels_info_reset_write,
 	.llseek = generic_file_llseek,
+	.owner = THIS_MODULE,
 };
 
 int nsim_udp_tunnels_info_create(struct nsim_dev *nsim_dev,
-- 
2.17.1
