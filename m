From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 12 Dec 2011 21:38:36 +0100
Subject: [PATCH 2/2] b43: N-PHY: workaround broken auto-increment on BCM43224
In-Reply-To: <1323722316-4265-1-git-send-email-zajec5@gmail.com>
References: <1323722316-4265-1-git-send-email-zajec5@gmail.com>
Message-ID: <1323722316-4265-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/tables_nphy.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/tables_nphy.c b/drivers/net/wireless/b43/tables_nphy.c
index e1fc337..3252560 100644
--- a/drivers/net/wireless/b43/tables_nphy.c
+++ b/drivers/net/wireless/b43/tables_nphy.c
@@ -2905,6 +2905,12 @@ void b43_ntab_read_bulk(struct b43_wldev *dev, u32 offset,
 	b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset);
 
 	for (i = 0; i < nr_elements; i++) {
+		/* Auto increment broken + caching issue on BCM43224? */
+		if (dev->dev->chip_id == 43224 && dev->dev->chip_rev == 1) {
+			b43_phy_read(dev, B43_NPHY_TABLE_DATALO);
+			b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset + i);
+		}
+
 		switch (type) {
 		case B43_NTAB_8BIT:
 			*data = b43_phy_read(dev, B43_NPHY_TABLE_DATALO) & 0xFF;
-- 
1.7.3.4
