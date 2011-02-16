From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 16 Feb 2011 13:58:26 +0100
Subject: [PATCH 2/2] ssb: remove invalid define SSB_TMSLOW_PHYCLK
In-Reply-To: <1297861106-18739-1-git-send-email-zajec5@gmail.com>
References: <1297861106-18739-1-git-send-email-zajec5@gmail.com>
Message-ID: <1297861106-18739-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, =?UTF-8?q?G=C3=A1bor=20Stefanik?= <netrolller.3d@gmail.com>

It was incorrectly introduced in d2730b2a6a019d14455556019d744ab051e6554b. We
have already fixed function to use correct define, but forgot remove old one.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Cc: G?bor Stefanik <netrolller.3d@gmail.com>
---
 include/linux/ssb/ssb_regs.h |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/include/linux/ssb/ssb_regs.h b/include/linux/ssb/ssb_regs.h
index 489f7b6..01253c6 100644
--- a/include/linux/ssb/ssb_regs.h
+++ b/include/linux/ssb/ssb_regs.h
@@ -97,7 +97,6 @@
 #define  SSB_TMSLOW_RESET	0x00000001 /* Reset */
 #define  SSB_TMSLOW_REJECT_22	0x00000002 /* Reject (Backplane rev 2.2) */
 #define  SSB_TMSLOW_REJECT_23	0x00000004 /* Reject (Backplane rev 2.3) */
-#define  SSB_TMSLOW_PHYCLK	0x00000010 /* MAC PHY Clock Control Enable */
 #define  SSB_TMSLOW_CLOCK	0x00010000 /* Clock Enable */
 #define  SSB_TMSLOW_FGC		0x00020000 /* Force Gated Clocks On */
 #define  SSB_TMSLOW_PE		0x40000000 /* Power Management Enable */
-- 
1.7.1
