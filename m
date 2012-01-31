From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed,  1 Feb 2012 00:13:55 +0100
Subject: [PATCH 3/4] ssb: log the id, rev and pkg of the chip found
In-Reply-To: <1328051636-15449-1-git-send-email-hauke@hauke-m.de>
References: <1328051636-15449-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1328051636-15449-4-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, m@bues.ch, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

This makes us see what type of hardware someone uses by the dmesg
output.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/ssb/scan.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/scan.c b/drivers/ssb/scan.c
index 3e84487..266c7c5 100644
--- a/drivers/ssb/scan.c
+++ b/drivers/ssb/scan.c
@@ -318,6 +318,9 @@ int ssb_bus_scan(struct ssb_bus *bus,
 			bus->chip_package = 0;
 		}
 	}
+	ssb_printk(KERN_INFO PFX "Found chip with id 0x%04X, rev 0x%02X and "
+		   "package 0x%02X\n", bus->chip_id, bus->chip_rev,
+		   bus->chip_package);
 	if (!bus->nr_devices)
 		bus->nr_devices = chipid_to_nrcores(bus->chip_id);
 	if (bus->nr_devices > ARRAY_SIZE(bus->devices)) {
-- 
1.7.5.4
