From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:52:00 +0000
Subject: [PATCH net 108/117] Bluetooth: set force_bredr_smp_fops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-108-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 300acfdec916 ("Bluetooth: Introduce force_bredr_smp debugfs option for testing")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/bluetooth/smp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
index bf4bef13d935..9b96a2d85e86 100644
--- a/net/bluetooth/smp.c
+++ b/net/bluetooth/smp.c
@@ -3407,6 +3407,7 @@ static const struct file_operations force_bredr_smp_fops = {
 	.read		= force_bredr_smp_read,
 	.write		= force_bredr_smp_write,
 	.llseek		= default_llseek,
+	.owner		= THIS_MODULE,
 };
 
 int smp_register(struct hci_dev *hdev)
-- 
2.17.1
