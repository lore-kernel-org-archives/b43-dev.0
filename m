From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  3 Nov 2010 23:28:46 +0100
Subject: [PATCH] ssb: fail registration for unknown SPROM revision
In-Reply-To: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
References: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
Message-ID: <1288823326-9686-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?utf-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
As noticed my Michael we have this left from old times of limited amount of
revisions. It's not reliable to treat unknown as rev1.

Michael: would you like to add Reported-by?

John: it's for 2.6.38.
---
 drivers/ssb/pci.c |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
index b5343ac..41a7337 100644
--- a/drivers/ssb/pci.c
+++ b/drivers/ssb/pci.c
@@ -600,11 +600,9 @@ static int sprom_extract(struct ssb_bus *bus, struct ssb_sprom *out,
 		sprom_extract_r8(out, in);
 		break;
 	default:
-		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
-			   "  revision %d detected. Will extract"
-			   " v1\n", out->revision);
-		out->revision = 1;
-		sprom_extract_r123(out, in);
+		ssb_printk(KERN_ERR PFX "Unsupported SPROM revision %d"
+			   " detected\n", out->revision);
+		return -EINVAL;
 	}
 
 	if (out->boardflags_lo == 0xFFFF)
-- 
1.6.0.4
