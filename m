From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 16 Aug 2011 12:11:12 +0200
Subject: [RFC][PATCH] b43: drop Kconfig option of forcing PIO mode
Message-ID: <1313489472-8876-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Larry Finger <larry.finger@lwfinger.net>

We have module param called use_pio which is much easier to use.

Cc: Larry Finger <larry.finger@lwfinger.net>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
Larry introduced use_pio with:
    b43: Allow PIO mode to be selected at module load
I believe we can leave this simple module param and drop
CONFIG_B43_FORCE_PIO instead.
---
 drivers/net/wireless/b43/Kconfig |   10 ----------
 drivers/net/wireless/b43/main.c  |    2 +-
 2 files changed, 1 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index 3c5e571..bfc1cb4 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -169,13 +169,3 @@ config B43_DEBUG
 	  Say N, if you are a distributor or user building a release kernel
 	  for production use.
 	  Only say Y, if you are debugging a problem in the b43 driver sourcecode.
-
-config B43_FORCE_PIO
-	bool "Force usage of PIO instead of DMA"
-	depends on B43 && B43_DEBUG
-	---help---
-	  This will disable DMA and always enable PIO instead.
-
-	  Say N!
-	  This is only for debugging the PIO engine code. You do
-	  _NOT_ want to enable this.
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index e0b1156..7c4cab0 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -108,7 +108,7 @@ int b43_modparam_verbose = B43_VERBOSITY_DEFAULT;
 module_param_named(verbose, b43_modparam_verbose, int, 0644);
 MODULE_PARM_DESC(verbose, "Log message verbosity: 0=error, 1=warn, 2=info(default), 3=debug");
 
-static int b43_modparam_pio = B43_PIO_DEFAULT;
+static int b43_modparam_pio = 0;
 module_param_named(pio, b43_modparam_pio, int, 0644);
 MODULE_PARM_DESC(pio, "Use PIO accesses by default: 0=DMA, 1=PIO");
 
-- 
1.7.3.4
