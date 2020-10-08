From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:26 +0000
Subject: [PATCH net 074/117] wcn36xx: set fops_wcn36xx_dump.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-74-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 8e84c2582169 ("wcn36xx: mac80211 driver for Qualcomm WCN3660/WCN3680 hardware")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/ath/wcn36xx/debug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/wcn36xx/debug.c b/drivers/net/wireless/ath/wcn36xx/debug.c
index 6bd874c0a9f5..4b78be5c67e8 100644
--- a/drivers/net/wireless/ath/wcn36xx/debug.c
+++ b/drivers/net/wireless/ath/wcn36xx/debug.c
@@ -135,6 +135,7 @@ static ssize_t write_file_dump(struct file *file,
 static const struct file_operations fops_wcn36xx_dump = {
 	.open = simple_open,
 	.write =       write_file_dump,
+	.owner = THIS_MODULE,
 };
 
 #define ADD_FILE(name, mode, fop, priv_data)		\
-- 
2.17.1
