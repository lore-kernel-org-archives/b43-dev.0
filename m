From: Felipe Pena <felipensp@gmail.com>
Date: Wed, 16 Oct 2013 21:40:24 -0300
Subject: [PATCH] drivers: net: wireless: b43: Fix possible NULL ptr dereference
Message-ID: <1381970424-4709-1-git-send-email-felipensp@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefano Brivio <stefano.brivio@polimi.it>, "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Felipe Pena <felipensp@gmail.com>

On the ternary expression the 'e' variable could be NULL dereferenced,
when b43_nphy_get_rf_ctl_over_rev7 function returns NULL.

Signed-off-by: Felipe Pena <felipensp@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index 7c970d3..05ee7f1 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -164,7 +164,8 @@ static void b43_nphy_rf_ctl_override_rev7(struct b43_wldev *dev, u16 field,
 		}
 		en_addr = en_addrs[override][i];

-		val_addr = (i == 0) ? e->val_addr_core0 : e->val_addr_core1;
+		if (e)
+			val_addr = (i == 0) ? e->val_addr_core0 : e->val_addr_core1;

 		if (off) {
 			b43_phy_mask(dev, en_addr, ~en_mask);
--
1.7.10.4
