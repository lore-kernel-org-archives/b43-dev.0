From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:52:01 +0000
Subject: [PATCH net 109/117] Bluetooth: set test_smp_fops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-109-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 64dd374eac15 ("Bluetooth: Export SMP selftest result in debugfs")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/bluetooth/smp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
index 9b96a2d85e86..3b91f927aab5 100644
--- a/net/bluetooth/smp.c
+++ b/net/bluetooth/smp.c
@@ -3752,6 +3752,7 @@ static const struct file_operations test_smp_fops = {
 	.open		= simple_open,
 	.read		= test_smp_read,
 	.llseek		= default_llseek,
+	.owner		= THIS_MODULE,
 };
 
 static int __init run_selftests(struct crypto_shash *tfm_cmac,
-- 
2.17.1
