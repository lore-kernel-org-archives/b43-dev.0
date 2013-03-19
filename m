From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 13:18:43 +0100
Subject: [PATCH 1/2] ssb: extract board_type from SPROM
Message-ID: <1363695524-22064-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/pci.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
index 63ff69f..99bd5ad 100644
--- a/drivers/ssb/pci.c
+++ b/drivers/ssb/pci.c
@@ -369,6 +369,7 @@ static void sprom_extract_r123(struct ssb_sprom *out, const u16 *in)
 	SPEX(et0mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET0M, 14);
 	SPEX(et1mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET1M, 15);
 	SPEX(board_rev, SSB_SPROM1_BINF, SSB_SPROM1_BINF_BREV, 0);
+	SPEX(board_type, SSB_SPROM1_SPID, 0xFFFF, 0);
 	if (out->revision == 1)
 		SPEX(country_code, SSB_SPROM1_BINF, SSB_SPROM1_BINF_CCODE,
 		     SSB_SPROM1_BINF_CCODE_SHIFT);
@@ -464,6 +465,7 @@ static void sprom_extract_r45(struct ssb_sprom *out, const u16 *in)
 	SPEX(et1phyaddr, SSB_SPROM4_ETHPHY, SSB_SPROM4_ETHPHY_ET1A,
 	     SSB_SPROM4_ETHPHY_ET1A_SHIFT);
 	SPEX(board_rev, SSB_SPROM4_BOARDREV, 0xFFFF, 0);
+	SPEX(board_type, SSB_SPROM1_SPID, 0xFFFF, 0);
 	if (out->revision == 4) {
 		SPEX(alpha2[0], SSB_SPROM4_CCODE, 0xff00, 8);
 		SPEX(alpha2[1], SSB_SPROM4_CCODE, 0x00ff, 0);
@@ -535,6 +537,7 @@ static void sprom_extract_r8(struct ssb_sprom *out, const u16 *in)
 	sprom_get_mac(out->il0mac, &in[SPOFF(SSB_SPROM8_IL0MAC)]);
 
 	SPEX(board_rev, SSB_SPROM8_BOARDREV, 0xFFFF, 0);
+	SPEX(board_type, SSB_SPROM1_SPID, 0xFFFF, 0);
 	SPEX(alpha2[0], SSB_SPROM8_CCODE, 0xff00, 8);
 	SPEX(alpha2[1], SSB_SPROM8_CCODE, 0x00ff, 0);
 	SPEX(boardflags_lo, SSB_SPROM8_BFLLO, 0xFFFF, 0);
-- 
1.7.10.4
