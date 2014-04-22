From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 22 Apr 2014 13:54:37 +0200
Subject: [PATCH 3/3] b43: don't pre-set radio_on variable to true
In-Reply-To: <1398167677-9207-1-git-send-email-zajec5@gmail.com>
References: <1398167677-9207-1-git-send-email-zajec5@gmail.com>
Message-ID: <1398167677-9207-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Setting it to true during init doesn't seem to be any workaround while
it can cause problems (not enabling radio due to belief it's enabled).

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index f0de7dd..32e08d3 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -5178,7 +5178,6 @@ static int b43_wireless_core_attach(struct b43_wldev *dev)
 	}
 
 	dev->phy.gmode = have_2ghz_phy;
-	dev->phy.radio_on = true;
 	b43_wireless_core_reset(dev, dev->phy.gmode);
 
 	err = b43_phy_versioning(dev);
-- 
1.8.4.5
