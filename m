From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:47 +0000
Subject: [PATCH net 095/117] brcmfmac: set bus_reset_fops.owner to THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-95-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 2f8c8e62cd50 ("brcmfmac: add "reset" debugfs entry for testing reset")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
index f89010a81ffb..f3d358a1aa07 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
@@ -1184,6 +1184,7 @@ static const struct file_operations bus_reset_fops = {
 	.open	= simple_open,
 	.llseek	= no_llseek,
 	.write	= bus_reset_write,
+	.owner = THIS_MODULE,
 };
 
 static int brcmf_bus_started(struct brcmf_pub *drvr, struct cfg80211_ops *ops)
-- 
2.17.1
