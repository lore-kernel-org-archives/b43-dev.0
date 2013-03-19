From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 13:18:44 +0100
Subject: [PATCH 2/2] bcma: extract board_type from SPROM
In-Reply-To: <1363695524-22064-1-git-send-email-zajec5@gmail.com>
References: <1363695524-22064-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363695524-22064-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/bcma/sprom.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
index 4adf9ef..8934298 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -217,6 +217,7 @@ static void bcma_sprom_extract_r8(struct bcma_bus *bus, const u16 *sprom)
 	}
 
 	SPEX(board_rev, SSB_SPROM8_BOARDREV, ~0, 0);
+	SPEX(board_type, SSB_SPROM1_SPID, ~0, 0);
 
 	SPEX(txpid2g[0], SSB_SPROM4_TXPID2G01, SSB_SPROM4_TXPID2G0,
 	     SSB_SPROM4_TXPID2G0_SHIFT);
-- 
1.7.10.4
