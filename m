From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:30 +0000
Subject: [PATCH net 018/117] cfg80211: set ht40allow_map_ops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-18-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 80a3511d70e8 ("cfg80211: add debugfs HT40 allow map")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/wireless/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/wireless/debugfs.c b/net/wireless/debugfs.c
index a00ebcc552e9..eb54c0ac4728 100644
--- a/net/wireless/debugfs.c
+++ b/net/wireless/debugfs.c
@@ -98,6 +98,7 @@ static const struct file_operations ht40allow_map_ops = {
 	.read = ht40allow_map_read,
 	.open = simple_open,
 	.llseek = default_llseek,
+	.owner = THIS_MODULE,
 };
 
 #define DEBUGFS_ADD(name)						\
-- 
2.17.1
