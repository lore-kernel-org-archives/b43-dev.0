From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:14 +0000
Subject: [PATCH net 002/117] mac80211: set rcname_ops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-2-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 4b7679a561e5 ("mac80211: clean up rate control API")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/mac80211/rate.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/mac80211/rate.c b/net/mac80211/rate.c
index b051f125d3af..4f9d33fc895e 100644
--- a/net/mac80211/rate.c
+++ b/net/mac80211/rate.c
@@ -218,6 +218,7 @@ const struct file_operations rcname_ops = {
 	.read = rcname_read,
 	.open = simple_open,
 	.llseek = default_llseek,
+	.owner = THIS_MODULE,
 };
 #endif
 
-- 
2.17.1
