From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:50:16 +0000
Subject: [PATCH net 004/117] mac80211: set minstrel_ht_stat_csv_fops.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-4-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 2cae0b6a70d6 ("mac80211: add new Minstrel-HT statistic output via csv")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 net/mac80211/rc80211_minstrel_ht_debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/mac80211/rc80211_minstrel_ht_debugfs.c b/net/mac80211/rc80211_minstrel_ht_debugfs.c
index 6021e394e5da..cdb51aa460a3 100644
--- a/net/mac80211/rc80211_minstrel_ht_debugfs.c
+++ b/net/mac80211/rc80211_minstrel_ht_debugfs.c
@@ -312,6 +312,7 @@ static const struct file_operations minstrel_ht_stat_csv_fops = {
 	.read = minstrel_stats_read,
 	.release = minstrel_stats_release,
 	.llseek = no_llseek,
+	.owner = THIS_MODULE,
 };
 
 void
-- 
2.17.1
