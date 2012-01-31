From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed,  1 Feb 2012 00:13:53 +0100
Subject: [PATCH 1/4] ssb: fix cardbus slot in hostmode
In-Reply-To: <1328051636-15449-1-git-send-email-hauke@hauke-m.de>
References: <1328051636-15449-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1328051636-15449-2-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, m@bues.ch, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

ssb supports one extra device on the cardbus. This results in two
devices in total, one beeing the host controller itself and the other
the external device connected to the hostcontroller over cardbus.

This makes the cardbus slot work on the Linksys WRT150N.

Reported-by: Aaron Z <aaronz@pls-net.org>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/ssb/driver_pcicore.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/ssb/driver_pcicore.c b/drivers/ssb/driver_pcicore.c
index 520e828..49d2091 100644
--- a/drivers/ssb/driver_pcicore.c
+++ b/drivers/ssb/driver_pcicore.c
@@ -75,7 +75,7 @@ static u32 get_cfgspace_addr(struct ssb_pcicore *pc,
 	u32 tmp;
 
 	/* We do only have one cardbus device behind the bridge. */
-	if (pc->cardbusmode && (dev >= 1))
+	if (pc->cardbusmode && (dev > 1))
 		goto out;
 
 	if (bus == 0) {
-- 
1.7.5.4
