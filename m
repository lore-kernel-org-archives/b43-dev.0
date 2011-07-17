From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 10:30:34 +0200
Subject: [PATCH 4/4] b43: HT-PHY: fix typo in 0x2059 radio init
In-Reply-To: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
References: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310891434-3537-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Following operation was incorrectly translated:
 radio_read(0x0011) -> 0xffff
radio_write(0x0011) <- 0xfff7

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/phy_ht.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index f903498..2105f9c 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -148,7 +148,7 @@ static void b43_radio_2059_init(struct b43_wldev *dev)
 		b43_radio_mask(dev, 0x17F, ~0x1);
 	}
 
-	b43_radio_mask(dev, 0x11, 0x0008);
+	b43_radio_mask(dev, 0x11, ~0x0008);
 }
 
 /**************************************************
-- 
1.7.3.4
