From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat,  9 Jul 2011 13:22:03 +0200
Subject: [PATCH] bcma: add check if sprom is available before accessing it.
Message-ID: <1310210523-13431-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com, zajec5@gmail.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>

The SoCs like the bcm4716 do not have a sprom on the bcma bus like a
pcie device. It stores the values in some partition on flash memory.
For ssb this informations are read out in the bcm47xx arch code,
something like that should also be implemented for bcma. Without this
patch bcma panics on SoCs.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/bcma/main.c  |    4 +++-
 drivers/bcma/sprom.c |    3 +++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
index 08a14a3..873e2e4 100644
--- a/drivers/bcma/main.c
+++ b/drivers/bcma/main.c
@@ -149,7 +149,9 @@ int bcma_bus_register(struct bcma_bus *bus)
 
 	/* Try to get SPROM */
 	err = bcma_sprom_get(bus);
-	if (err) {
+	if (err == -ENOENT) {
+		pr_err("No SPROM available\n");
+	} else if (err) {
 		pr_err("Failed to get SPROM: %d\n", err);
 		return -ENOENT;
 	}
diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
index ffbb0e3..8e8d5cf 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -143,6 +143,9 @@ int bcma_sprom_get(struct bcma_bus *bus)
 	if (!bus->drv_cc.core)
 		return -EOPNOTSUPP;
 
+	if (!(bus->drv_cc.capabilities & BCMA_CC_CAP_SPROM))
+		return -ENOENT;
+
 	sprom = kcalloc(SSB_SPROMSIZE_WORDS_R4, sizeof(u16),
 			GFP_KERNEL);
 	if (!sprom)
-- 
1.7.4.1
