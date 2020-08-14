From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 14 Aug 2020 12:39:29 +0100
Subject: [PATCH 26/30] net: wireless: broadcom: b43: phy_common: Demote
 non-conformant kerneldoc header
In-Reply-To: <20200814113933.1903438-1-lee.jones@linaro.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
Message-ID: <20200814113933.1903438-27-lee.jones@linaro.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/net/wireless/broadcom/b43/phy_common.c:467: warning: Function parameter or member 'work' not described in 'b43_phy_txpower_adjust_work'

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Martin Langer <martin-langer@gmx.de>
Cc: Stefano Brivio <stefano.brivio@polimi.it>
Cc: Michael Buesch <m@bues.ch>
Cc: van Dyk <kugelfang@gentoo.org>
Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
Cc: linux-wireless at vger.kernel.org
Cc: b43-dev at lists.infradead.org
Cc: netdev at vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/net/wireless/broadcom/b43/phy_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_common.c b/drivers/net/wireless/broadcom/b43/phy_common.c
index 1de4de094d61b..285490f6f0a1d 100644
--- a/drivers/net/wireless/broadcom/b43/phy_common.c
+++ b/drivers/net/wireless/broadcom/b43/phy_common.c
@@ -458,7 +458,7 @@ void b43_software_rfkill(struct b43_wldev *dev, bool blocked)
 	b43_mac_enable(dev);
 }
 
-/**
+/*
  * b43_phy_txpower_adjust_work - TX power workqueue.
  *
  * Workqueue for updating the TX power parameters in hardware.
-- 
2.25.1
