From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 19 Feb 2012 19:32:23 +0100
Subject: [PATCH 09/11] MIPS: BCM47XX: fix signature of nvram_parse_macaddr
In-Reply-To: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
Message-ID: <1329676345-15856-10-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com, m@bues.ch, Hauke Mehrtens <hauke@hauke-m.de>

Explicitly enforce an char array of 6 bytes for the mac address.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 arch/mips/include/asm/mach-bcm47xx/nvram.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/mips/include/asm/mach-bcm47xx/nvram.h b/arch/mips/include/asm/mach-bcm47xx/nvram.h
index 184d5ec..69ef3ef 100644
--- a/arch/mips/include/asm/mach-bcm47xx/nvram.h
+++ b/arch/mips/include/asm/mach-bcm47xx/nvram.h
@@ -37,7 +37,7 @@ struct nvram_header {
 
 extern int nvram_getenv(char *name, char *val, size_t val_len);
 
-static inline void nvram_parse_macaddr(char *buf, u8 *macaddr)
+static inline void nvram_parse_macaddr(char *buf, u8 macaddr[6])
 {
 	if (strchr(buf, ':'))
 		sscanf(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &macaddr[0],
-- 
1.7.5.4
