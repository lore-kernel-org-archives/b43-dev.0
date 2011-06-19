From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 19 Jun 2011 02:18:12 +0200
Subject: [PATCH 2/2] b43: HT-PHY: enable radio
In-Reply-To: <1308442692-4205-1-git-send-email-zajec5@gmail.com>
References: <1308442692-4205-1-git-send-email-zajec5@gmail.com>
Message-ID: <1308442692-4205-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

The trick was to find 0x810 PHY reg ops close to analog enabling code.
To find out proper masks and sets, MMIO hacks were used.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
Bigger part of MMIO dump, showing where implemented OPS were found:
>>> analog(ON) start
phy_write(0x0911) <- 0x00cd
phy_write(0x0910) <- 0x0000
phy_write(0x0915) <- 0x00cd
phy_write(0x0914) <- 0x0000
phy_write(0x0919) <- 0x00cd
phy_write(0x0918) <- 0x0000
>>> analog(ON) end

 read16 0xb06003e0 -> 0x9701
 read32 0xb0600120 -> 0xc4020402

 phy_read(0x0810) -> 0x0000
phy_write(0x0810) <- 0x0000
 phy_read(0x0810) -> 0x0000
phy_write(0x0810) <- 0x0001
 phy_read(0x0810) -> 0x0001
phy_write(0x0810) <- 0x0000
 phy_read(0x0810) -> 0x0000
phy_write(0x0810) <- 0x0002

radio_write(0x0c51) <- 0x0070
---
 drivers/net/wireless/b43/phy_ht.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index e84d4c1..008c1a9 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -69,6 +69,10 @@ static void b43_phy_ht_op_software_rfkill(struct b43_wldev *dev,
 	if (blocked) {
 		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
 	} else {
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
+		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x1);
+		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
+		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x2);
 	}
 }
 
-- 
1.7.3.4
