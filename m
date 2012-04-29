From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 29 Apr 2012 02:04:09 +0200
Subject: [PATCH 4/8] MIPS: bcm47xx: read baordrev without prefix from sprom
In-Reply-To: <1335657853-23925-1-git-send-email-hauke@hauke-m.de>
References: <1335657853-23925-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1335657853-23925-5-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com, m@bues.ch, ralf@linux-mips.org, Hauke Mehrtens <hauke@hauke-m.de>

When the boardrev with a prefix is not available, try to read it
without a prefix. This is based on code from the Broadcom SDK.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 arch/mips/bcm47xx/sprom.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/bcm47xx/sprom.c b/arch/mips/bcm47xx/sprom.c
index a29d207..17282e0 100644
--- a/arch/mips/bcm47xx/sprom.c
+++ b/arch/mips/bcm47xx/sprom.c
@@ -165,6 +165,8 @@ static void bcm47xx_fill_sprom_r1234589(struct ssb_sprom *sprom,
 					const char *prefix)
 {
 	nvram_read_u16(prefix, NULL, "boardrev", &sprom->board_rev, 0);
+	if (!sprom->board_rev)
+		nvram_read_u16(NULL, NULL, "boardrev", &sprom->board_rev, 0);
 	nvram_read_u16(prefix, NULL, "boardnum", &sprom->board_num, 0);
 	nvram_read_u8(prefix, NULL, "ledbh0", &sprom->gpio0, 0xff);
 	nvram_read_u8(prefix, NULL, "ledbh1", &sprom->gpio1, 0xff);
-- 
1.7.9.5
