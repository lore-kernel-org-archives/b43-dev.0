From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 27 Apr 2011 18:21:34 +0200
Subject: [PATCH] ssb: pci: early fix for SPROM core index
Message-ID: <1303921294-6591-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
This was documented in:
Message-ID: <4BB81CAD.10602@lwfinger.net>
---
 drivers/ssb/driver_pcicore.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 32a9b61..8fde122 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -414,6 +414,16 @@ static int pcicore_is_in_hostmode(struct ssb_pcicore *pc)
  * Workarounds.
  **************************************************/
 
+static void ssb_pcicore_fix_sprom_core_index(struct ssb_pcicore *pc)
+{
+	u16 tmp = pcicore_read16(pc, SSB_PCICORE_SPROM(0));
+	if (((tmp & 0xF000) >> 12) != pc->dev->core_index) {
+		tmp &= ~0xF000;
+		tmp |= (pc->dev->core_index << 12);
+		pcicore_write16(pc, SSB_PCICORE_SPROM(0), tmp);
+	}
+}
+
 static u8 ssb_pcicore_polarity_workaround(struct ssb_pcicore *pc)
 {
 	return (ssb_pcie_read(pc, 0x204) & 0x10) ? 0xC0 : 0x80;
@@ -521,6 +531,8 @@ void ssb_pcicore_init(struct ssb_pcicore *pc)
 	if (!ssb_device_is_enabled(dev))
 		ssb_device_enable(dev, 0);
 
+	ssb_pcicore_fix_sprom_core_index(pc);
+
 #ifdef CONFIG_SSB_PCICORE_HOSTMODE
 	pc->hostmode = pcicore_is_in_hostmode(pc);
 	if (pc->hostmode)
-- 
1.7.3.4
