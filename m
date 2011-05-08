From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun,  8 May 2011 19:09:22 +0200
Subject: [PATCH 1/3] ssb: update list of devices supporting multiple 80211
	cores
In-Reply-To: <1304874564-6426-1-git-send-email-zajec5@gmail.com>
References: <1304874564-6426-1-git-send-email-zajec5@gmail.com>
Message-ID: <1304874564-6426-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/scan.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/ssb/scan.c b/drivers/ssb/scan.c
index 7dca719..45e5bab 100644
--- a/drivers/ssb/scan.c
+++ b/drivers/ssb/scan.c
@@ -258,7 +258,10 @@ static int we_support_multiple_80211_cores(struct ssb_bus *bus)
 #ifdef CONFIG_SSB_PCIHOST
 	if (bus->bustype == SSB_BUSTYPE_PCI) {
 		if (bus->host_pci->vendor == PCI_VENDOR_ID_BROADCOM &&
-		    bus->host_pci->device == 0x4324)
+		    ((bus->host_pci->device == 0x4313) ||
+		     (bus->host_pci->device == 0x431A) ||
+		     (bus->host_pci->device == 0x4321) ||
+		     (bus->host_pci->device == 0x4324)))
 			return 1;
 	}
 #endif /* CONFIG_SSB_PCIHOST */
-- 
1.7.3.4
