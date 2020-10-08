From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:29 +0000
Subject: [PATCH net 017/117] mac80211/cfg80211: set
 DEBUGFS_READONLY_FILE.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-17-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 1ac61302dcd1 ("mac80211/cfg80211: move wiphy specific debugfs entries to cfg80211")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/wireless/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/wireless/debugfs.c b/net/wireless/debugfs.c
index 76b845f68ac8..a00ebcc552e9 100644
--- a/net/wireless/debugfs.c
+++ b/net/wireless/debugfs.c
@@ -26,6 +26,7 @@ static const struct file_operations name## _ops = {			\
 	.read = name## _read,						\
 	.open = simple_open,						\
 	.llseek = generic_file_llseek,					\
+	.owner = THIS_MODULE,						\
 }
 
 DEBUGFS_READONLY_FILE(rts_threshold, 20, "%d",
-- 
2.17.1
