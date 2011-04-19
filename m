From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Apr 2011 22:40:22 +0200
Subject: [PATCH 1/3] ssb: pci: trivial: correct amount of maximum retries
Message-ID: <1303245624-3057-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_pcicore.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 1ba9f0e..dbda168 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -522,7 +522,7 @@ static u16 ssb_pcie_mdio_read(struct ssb_pcicore *pc, u8 device, u8 address)
 	pcicore_write32(pc, mdio_data, v);
 	/* Wait for the device to complete the transaction */
 	udelay(10);
-	for (i = 0; i < 200; i++) {
+	for (i = 0; i < max_retries; i++) {
 		v = pcicore_read32(pc, mdio_control);
 		if (v & 0x100 /* Trans complete */) {
 			udelay(10);
-- 
1.7.3.4
