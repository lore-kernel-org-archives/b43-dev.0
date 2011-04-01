From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri,  1 Apr 2011 12:06:48 +0200
Subject: [PATCH] ssb: trivial: use u8 for chip_rev (it's mask is 0xF)
Message-ID: <1301652408-11216-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/scan.c      |    2 +-
 include/linux/ssb/ssb.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ssb/scan.c b/drivers/ssb/scan.c
index 29884c0..7dca719 100644
--- a/drivers/ssb/scan.c
+++ b/drivers/ssb/scan.c
@@ -307,7 +307,7 @@ int ssb_bus_scan(struct ssb_bus *bus,
 	} else {
 		if (bus->bustype == SSB_BUSTYPE_PCI) {
 			bus->chip_id = pcidev_to_chipid(bus->host_pci);
-			pci_read_config_word(bus->host_pci, PCI_REVISION_ID,
+			pci_read_config_byte(bus->host_pci, PCI_REVISION_ID,
 					     &bus->chip_rev);
 			bus->chip_package = 0;
 		} else {
diff --git a/include/linux/ssb/ssb.h b/include/linux/ssb/ssb.h
index 9659eff..7e99b34 100644
--- a/include/linux/ssb/ssb.h
+++ b/include/linux/ssb/ssb.h
@@ -308,7 +308,7 @@ struct ssb_bus {
 
 	/* ID information about the Chip. */
 	u16 chip_id;
-	u16 chip_rev;
+	u8 chip_rev;
 	u16 sprom_offset;
 	u16 sprom_size;		/* number of words in sprom */
 	u8 chip_package;
-- 
1.7.1
