From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:53 +0000
Subject: [PATCH net 101/117] mt76: mt7615: set fops_ampdu_stat.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-101-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 75601194a1c8 ("mt76: mt7615: collect aggregation stats")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
index 88931658a9fb..1770fa51f562 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
@@ -246,6 +246,7 @@ static const struct file_operations fops_ampdu_stat = {
 	.read = seq_read,
 	.llseek = seq_lseek,
 	.release = single_release,
+	.owner = THIS_MODULE,
 };
 
 static void
-- 
2.17.1
