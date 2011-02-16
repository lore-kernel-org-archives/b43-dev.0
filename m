From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 16 Feb 2011 13:58:25 +0100
Subject: [PATCH 1/2] ssb: trivial: fix SPROM extract warning formatting
Message-ID: <1297861106-18739-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/pci.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
index 158449e..127897c 100644
--- a/drivers/ssb/pci.c
+++ b/drivers/ssb/pci.c
@@ -641,7 +641,7 @@ static int sprom_extract(struct ssb_bus *bus, struct ssb_sprom *out,
 		break;
 	default:
 		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
-			   "  revision %d detected. Will extract"
+			   " revision %d detected. Will extract"
 			   " v1\n", out->revision);
 		out->revision = 1;
 		sprom_extract_r123(out, in);
-- 
1.7.1
