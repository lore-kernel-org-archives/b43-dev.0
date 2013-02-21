From: W. Trevor King <wking@tremily.us>
Date: Thu, 21 Feb 2013 07:34:42 -0500
Subject: [PATCH] b43: Fix 'me' -> 'be' typo in Kconfig
Message-ID: <81849f3444af632521ee18dfa3009b6f60efca86.1361449471.git.wking@tremily.us>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, Michael Buesch <m@bues.ch>, Stefano Brivio <stefano.brivio@polimi.it>, b43-dev@lists.infradead.org, "W. Trevor King" <wking@tremily.us>

From: "W. Trevor King" <wking@tremily.us>

Also add a missing 'the' before 'runtime performance'.

Signed-off-by: W. Trevor King <wking@tremily.us>
---
Based on wireless-testing's master-2013-02-19.

 drivers/net/wireless/b43/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index 7a28d21..f259c49 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -166,8 +166,8 @@ config B43_DEBUG
 	  Broadcom 43xx debugging.
 
 	  This adds additional runtime sanity checks and statistics to the driver.
-	  These checks and statistics might me expensive and hurt runtime performance
-	  of your system.
+	  These checks and statistics might be expensive and hurt the runtime
+	  performance of your system.
 	  This also adds the b43 debugfs interface.
 
 	  Do not enable this, unless you are debugging the driver.
-- 
1.8.2.rc0.16.g20a599e
