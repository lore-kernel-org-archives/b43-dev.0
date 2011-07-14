From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 14 Jul 2011 21:49:21 +0200
Subject: [PATCH 4/4] bcma: extract SPROM rev 9 the same way as rev 8
In-Reply-To: <1310672961-5311-1-git-send-email-zajec5@gmail.com>
References: <1310672961-5311-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310672961-5311-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

SPROM rev 9 was discovered on 14e4:4331, it seems to have very similar
layout to rev 8 one. Use the same extracting function until we find some
differences.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/sprom.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
index 8e8d5cf..52917e5 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -112,7 +112,7 @@ static int bcma_sprom_valid(const u16 *sprom)
 		return err;
 
 	revision = sprom[SSB_SPROMSIZE_WORDS_R4 - 1] & SSB_SPROM_REVISION_REV;
-	if (revision != 8) {
+	if (revision != 8 && revision != 9) {
 		pr_err("Unsupported SPROM revision: %d\n", revision);
 		return -ENOENT;
 	}
-- 
1.7.3.4
