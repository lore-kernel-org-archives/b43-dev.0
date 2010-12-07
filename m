From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  7 Dec 2010 09:42:05 +0100
Subject: [PATCH 2/4] b43: N-PHY: reorder and optimize tables initialization
In-Reply-To: <1291711327-4690-1-git-send-email-zajec5@gmail.com>
References: <1291711327-4690-1-git-send-email-zajec5@gmail.com>
Message-ID: <1291711327-4690-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Order was changed in specs. For writing arrays we have designed bulk function
which makes use of auto increment and do not write table address over and over.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/tables_nphy.c |   12 +++++-------
 1 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/b43/tables_nphy.c b/drivers/net/wireless/b43/tables_nphy.c
index 46f0a7a..df61c16 100644
--- a/drivers/net/wireless/b43/tables_nphy.c
+++ b/drivers/net/wireless/b43/tables_nphy.c
@@ -1811,9 +1811,7 @@ void b43_ntab_write_bulk(struct b43_wldev *dev, u32 offset,
 }
 
 #define ntab_upload(dev, offset, data) do { \
-		unsigned int i;						\
-		for (i = 0; i < (offset##_SIZE); i++)			\
-			b43_ntab_write(dev, (offset) + i, (data)[i]);	\
+		b43_ntab_write_bulk(dev, offset, offset##_SIZE, data);	\
 	} while (0)
 
 void b43_nphy_rev0_1_2_tables_init(struct b43_wldev *dev)
@@ -1825,18 +1823,18 @@ void b43_nphy_rev0_1_2_tables_init(struct b43_wldev *dev)
 	ntab_upload(dev, B43_NTAB_TDTRN, b43_ntab_tdtrn);
 	ntab_upload(dev, B43_NTAB_INTLEVEL, b43_ntab_intlevel);
 	ntab_upload(dev, B43_NTAB_PILOT, b43_ntab_pilot);
-	ntab_upload(dev, B43_NTAB_PILOTLT, b43_ntab_pilotlt);
 	ntab_upload(dev, B43_NTAB_TDI20A0, b43_ntab_tdi20a0);
 	ntab_upload(dev, B43_NTAB_TDI20A1, b43_ntab_tdi20a1);
 	ntab_upload(dev, B43_NTAB_TDI40A0, b43_ntab_tdi40a0);
 	ntab_upload(dev, B43_NTAB_TDI40A1, b43_ntab_tdi40a1);
-	ntab_upload(dev, B43_NTAB_BDI, b43_ntab_bdi);
 	ntab_upload(dev, B43_NTAB_CHANEST, b43_ntab_channelest);
 	ntab_upload(dev, B43_NTAB_MCS, b43_ntab_mcs);
-
-	/* Volatile tables */
 	ntab_upload(dev, B43_NTAB_NOISEVAR10, b43_ntab_noisevar10);
 	ntab_upload(dev, B43_NTAB_NOISEVAR11, b43_ntab_noisevar11);
+
+	/* Volatile tables */
+	ntab_upload(dev, B43_NTAB_BDI, b43_ntab_bdi);
+	ntab_upload(dev, B43_NTAB_PILOTLT, b43_ntab_pilotlt);
 	ntab_upload(dev, B43_NTAB_C0_ESTPLT, b43_ntab_estimatepowerlt0);
 	ntab_upload(dev, B43_NTAB_C1_ESTPLT, b43_ntab_estimatepowerlt1);
 	ntab_upload(dev, B43_NTAB_C0_ADJPLT, b43_ntab_adjustpower0);
-- 
1.6.3.3
