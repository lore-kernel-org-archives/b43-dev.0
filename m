From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 13 Jan 2012 22:55:05 +0100
Subject: [PATCH V3 1/2] MAINTAINERS: move BCMA to keep the list sorted
Message-ID: <1326491706-14970-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
V3: S-o-b
---
 MAINTAINERS |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4babed7..dc11e28 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1595,6 +1595,13 @@ L:	linux-scsi at vger.kernel.org
 S:	Supported
 F:	drivers/scsi/bnx2fc/
 
+BROADCOM SPECIFIC AMBA DRIVER (BCMA)
+M:	Rafa? Mi?ecki <zajec5@gmail.com>
+L:	linux-wireless at vger.kernel.org
+S:	Maintained
+F:	drivers/bcma/
+F:	include/linux/bcma/
+
 BROCADE BFA FC SCSI DRIVER
 M:	Jing Huang <huangj@brocade.com>
 L:	linux-scsi at vger.kernel.org
@@ -6101,13 +6108,6 @@ S:	Maintained
 F:	drivers/ssb/
 F:	include/linux/ssb/
 
-BROADCOM SPECIFIC AMBA DRIVER (BCMA)
-M:	Rafa? Mi?ecki <zajec5@gmail.com>
-L:	linux-wireless at vger.kernel.org
-S:	Maintained
-F:	drivers/bcma/
-F:	include/linux/bcma/
-
 SONY VAIO CONTROL DEVICE DRIVER
 M:	Mattia Dongili <malattia@linux.it>
 L:	platform-driver-x86 at vger.kernel.org
-- 
1.7.7
