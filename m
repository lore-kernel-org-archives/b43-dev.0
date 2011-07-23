From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 23 Jul 2011 11:10:12 +0200
Subject: [PATCH 2/2] bcma: use boardflags define from ssb code
In-Reply-To: <1311412213-3825-1-git-send-email-zajec5@gmail.com>
References: <1311412213-3825-1-git-send-email-zajec5@gmail.com>
Message-ID: <1311412213-3825-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/driver_pci.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/driver_pci.c b/drivers/bcma/driver_pci.c
index dc6f34a..bdf933b 100644
--- a/drivers/bcma/driver_pci.c
+++ b/drivers/bcma/driver_pci.c
@@ -172,7 +172,7 @@ static bool bcma_core_pci_is_in_hostmode(struct bcma_drv_pci *pc)
 	    chipid_top != 0x5300)
 		return false;
 
-	if (bus->sprom.boardflags_lo & SSB_PCICORE_BFL_NOPCI)
+	if (bus->sprom.boardflags_lo & SSB_BFL_NOPCI)
 		return false;
 
 #if 0
-- 
1.7.3.4
