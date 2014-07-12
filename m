From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 12 Jul 2014 16:42:10 +0200
Subject: [PATCH 2/2] ssb: extract antenna gains from SPROMs revs 4+ properly
In-Reply-To: <1405176130-15908-1-git-send-email-zajec5@gmail.com>
References: <1405176130-15908-1-git-send-email-zajec5@gmail.com>
Message-ID: <1405176130-15908-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

They are encoded the same way as in older SPROMs.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/pci.c | 48 ++++++++++++++++++++++++++++++++----------------
 1 file changed, 32 insertions(+), 16 deletions(-)

diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
index ca973d1..0b3c966 100644
--- a/drivers/ssb/pci.c
+++ b/drivers/ssb/pci.c
@@ -526,14 +526,22 @@ static void sprom_extract_r45(struct ssb_sprom *out, const u16 *in)
 	}
 
 	/* Extract the antenna gain values. */
-	SPEX(antenna_gain.a0, SSB_SPROM4_AGAIN01,
-	     SSB_SPROM4_AGAIN0, SSB_SPROM4_AGAIN0_SHIFT);
-	SPEX(antenna_gain.a1, SSB_SPROM4_AGAIN01,
-	     SSB_SPROM4_AGAIN1, SSB_SPROM4_AGAIN1_SHIFT);
-	SPEX(antenna_gain.a2, SSB_SPROM4_AGAIN23,
-	     SSB_SPROM4_AGAIN2, SSB_SPROM4_AGAIN2_SHIFT);
-	SPEX(antenna_gain.a3, SSB_SPROM4_AGAIN23,
-	     SSB_SPROM4_AGAIN3, SSB_SPROM4_AGAIN3_SHIFT);
+	out->antenna_gain.a0 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM4_AGAIN01,
+						     SSB_SPROM4_AGAIN0,
+						     SSB_SPROM4_AGAIN0_SHIFT);
+	out->antenna_gain.a1 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM4_AGAIN01,
+						     SSB_SPROM4_AGAIN1,
+						     SSB_SPROM4_AGAIN1_SHIFT);
+	out->antenna_gain.a2 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM4_AGAIN23,
+						     SSB_SPROM4_AGAIN2,
+						     SSB_SPROM4_AGAIN2_SHIFT);
+	out->antenna_gain.a3 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM4_AGAIN23,
+						     SSB_SPROM4_AGAIN3,
+						     SSB_SPROM4_AGAIN3_SHIFT);
 
 	sprom_extract_r458(out, in);
 
@@ -623,14 +631,22 @@ static void sprom_extract_r8(struct ssb_sprom *out, const u16 *in)
 	SPEX32(ofdm5ghpo, SSB_SPROM8_OFDM5GHPO, 0xFFFFFFFF, 0);
 
 	/* Extract the antenna gain values. */
-	SPEX(antenna_gain.a0, SSB_SPROM8_AGAIN01,
-	     SSB_SPROM8_AGAIN0, SSB_SPROM8_AGAIN0_SHIFT);
-	SPEX(antenna_gain.a1, SSB_SPROM8_AGAIN01,
-	     SSB_SPROM8_AGAIN1, SSB_SPROM8_AGAIN1_SHIFT);
-	SPEX(antenna_gain.a2, SSB_SPROM8_AGAIN23,
-	     SSB_SPROM8_AGAIN2, SSB_SPROM8_AGAIN2_SHIFT);
-	SPEX(antenna_gain.a3, SSB_SPROM8_AGAIN23,
-	     SSB_SPROM8_AGAIN3, SSB_SPROM8_AGAIN3_SHIFT);
+	out->antenna_gain.a0 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM8_AGAIN01,
+						     SSB_SPROM8_AGAIN0,
+						     SSB_SPROM8_AGAIN0_SHIFT);
+	out->antenna_gain.a1 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM8_AGAIN01,
+						     SSB_SPROM8_AGAIN1,
+						     SSB_SPROM8_AGAIN1_SHIFT);
+	out->antenna_gain.a2 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM8_AGAIN23,
+						     SSB_SPROM8_AGAIN2,
+						     SSB_SPROM8_AGAIN2_SHIFT);
+	out->antenna_gain.a3 = sprom_extract_antgain(out->revision, in,
+						     SSB_SPROM8_AGAIN23,
+						     SSB_SPROM8_AGAIN3,
+						     SSB_SPROM8_AGAIN3_SHIFT);
 
 	/* Extract cores power info info */
 	for (i = 0; i < ARRAY_SIZE(pwr_info_offset); i++) {
-- 
1.8.4.5
