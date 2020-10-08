From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:52:04 +0000
Subject: [PATCH net 112/117] Bluetooth: set DEFINE_QUIRK_ATTRIBUTE.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-112-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: b55d1abf568c ("Bluetooth: Expose quirks through debugfs")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/bluetooth/hci_debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bluetooth/hci_debugfs.c b/net/bluetooth/hci_debugfs.c
index b8e297e71692..4a26cb544635 100644
--- a/net/bluetooth/hci_debugfs.c
+++ b/net/bluetooth/hci_debugfs.c
@@ -71,6 +71,7 @@ static const struct file_operations __name ## _fops = {			      \
 	.read		= __name ## _read,				      \
 	.write		= __name ## _write,				      \
 	.llseek		= default_llseek,				      \
+	.owner		= THIS_MODULE,					      \
 }									      \
 
 #define DEFINE_INFO_ATTRIBUTE(__name, __field)				      \
-- 
2.17.1
