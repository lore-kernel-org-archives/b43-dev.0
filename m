From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:28 +0000
Subject: [PATCH net 016/117] mac80211: set DEBUGFS_DEVSTATS_FILE.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-16-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: e9f207f0ff90 ("[MAC80211]: Add debugfs attributes.")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/mac80211/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/mac80211/debugfs.c b/net/mac80211/debugfs.c
index 97eec43a6945..adde0b2797c9 100644
--- a/net/mac80211/debugfs.c
+++ b/net/mac80211/debugfs.c
@@ -542,6 +542,7 @@ static const struct file_operations stats_ ##name## _ops = {		\
 	.read = stats_ ##name## _read,					\
 	.open = simple_open,						\
 	.llseek = generic_file_llseek,					\
+	.owner = THIS_MODULE,						\
 };
 
 #define DEBUGFS_STATS_ADD(name)					\
-- 
2.17.1
