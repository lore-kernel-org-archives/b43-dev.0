From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  1 Jun 2011 11:01:11 +0200
Subject: [RFT][PATCH 3.0] ssb: fix PCI(e) driver regression causing oops on
	PCI cards
Message-ID: <1306918871-16965-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andreas Schwab <schwab@linux-m68k.org>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, linuxppc-dev@ozlabs.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

We were incorrectly executing PCIe specific workarounds on PCI cards.
This resulted in:
Machine check in kernel mode.
Caused by (from SRR1=149030): Transfer error ack signal
Oops: Machine check, sig: 7 [#1]

Reported-by: Andreas Schwab <schwab@linux-m68k.org>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/ssb/driver_pcicore.c |   10 ++++++----
 1 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 82feb34..2a20dab 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -539,10 +539,12 @@ void ssb_pcicore_init(struct ssb_pcicore *pc)
 	if (!pc->hostmode)
 		ssb_pcicore_init_clientmode(pc);
 
-	/* Additional always once-executed workarounds */
-	ssb_pcicore_serdes_workaround(pc);
-	/* TODO: ASPM */
-	/* TODO: Clock Request Update */
+	/* Additional PCIe always once-executed workarounds */
+	if (dev->id.coreid == SSB_DEV_PCIE) {
+		ssb_pcicore_serdes_workaround(pc);
+		/* TODO: ASPM */
+		/* TODO: Clock Request Update */
+	}
 }
 
 static u32 ssb_pcie_read(struct ssb_pcicore *pc, u32 address)
-- 
1.7.1
