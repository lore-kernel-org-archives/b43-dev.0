From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 22 Dec 2011 00:47:19 +0100
Subject: [PATCH 4/4] b43: N-PHY: fix typo in TX power fix
In-Reply-To: <1324511239-3536-1-git-send-email-zajec5@gmail.com>
References: <1324511239-3536-1-git-send-email-zajec5@gmail.com>
Message-ID: <1324511239-3536-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_n.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
index b8525cc..aadfed0 100644
--- a/drivers/net/wireless/b43/phy_n.c
+++ b/drivers/net/wireless/b43/phy_n.c
@@ -2218,7 +2218,7 @@ static void b43_nphy_tx_power_fix(struct b43_wldev *dev)
 		}
 	}
 	if (dev->phy.rev < 7 &&
-	    (txpi[0] < 40 || txpi[0] > 100 || txpi[1] < 40 || txpi[1] > 10))
+	    (txpi[0] < 40 || txpi[0] > 100 || txpi[1] < 40 || txpi[1] > 100))
 		txpi[0] = txpi[1] = 91;
 
 	/*
-- 
1.7.3.4
