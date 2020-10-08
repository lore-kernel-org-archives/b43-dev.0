From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:52:07 +0000
Subject: [PATCH net 115/117] Bluetooth: set force_no_mitm_fops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-115-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c2aa30db744d ("Bluetooth: debugfs option to unset MITM flag")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/bluetooth/hci_debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bluetooth/hci_debugfs.c b/net/bluetooth/hci_debugfs.c
index 6ea692a3d4a8..c9a074da16dd 100644
--- a/net/bluetooth/hci_debugfs.c
+++ b/net/bluetooth/hci_debugfs.c
@@ -1122,6 +1122,7 @@ static const struct file_operations force_no_mitm_fops = {
 	.read		= force_no_mitm_read,
 	.write		= force_no_mitm_write,
 	.llseek		= default_llseek,
+	.owner		= THIS_MODULE,
 };
 
 DEFINE_QUIRK_ATTRIBUTE(quirk_strict_duplicate_filter,
-- 
2.17.1
