From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:52:08 +0000
Subject: [PATCH net 116/117] Bluetooth: 6LoWPAN: set lowpan_control_fops.owner
 to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-116-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 6b8d4a6a0314 ("Bluetooth: 6LoWPAN: Use connected oriented channel instead of fixed one")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/bluetooth/6lowpan.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bluetooth/6lowpan.c b/net/bluetooth/6lowpan.c
index cff4944d5b66..0936184f0813 100644
--- a/net/bluetooth/6lowpan.c
+++ b/net/bluetooth/6lowpan.c
@@ -1214,6 +1214,7 @@ static const struct file_operations lowpan_control_fops = {
 	.write		= lowpan_control_write,
 	.llseek		= seq_lseek,
 	.release	= single_release,
+	.owner		= THIS_MODULE,
 };
 
 static void disconnect_devices(void)
-- 
2.17.1
