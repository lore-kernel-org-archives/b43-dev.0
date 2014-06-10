From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 10 Jun 2014 13:32:05 +0200
Subject: [3.16 FIX][PATCH] b43: fix typo in Kconfig (make
 B43_BUSES_BCMA_AND_SSB the default for real)
Message-ID: <1402399925-23096-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, Paul Bolle <pebolle@tiscali.nl>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Reported-by: Paul Bolle <pebolle@tiscali.nl>
Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
index e3f67b8..40fd9b7 100644
--- a/drivers/net/wireless/b43/Kconfig
+++ b/drivers/net/wireless/b43/Kconfig
@@ -36,7 +36,7 @@ config B43_SSB
 choice
 	prompt "Supported bus types"
 	depends on B43
-	default B43_BCMA_AND_SSB
+	default B43_BUSES_BCMA_AND_SSB
 
 config B43_BUSES_BCMA_AND_SSB
 	bool "BCMA and SSB"
-- 
1.8.4.5
