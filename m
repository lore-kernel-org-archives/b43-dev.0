From: Paul McQuade <paulmcquad@gmail.com>
Date: Sun, 18 Oct 2015 00:01:38 +0100
Subject: [PATCH 3/3] net: wireless: b43: statics Don't init to 0
In-Reply-To: <1445122898-5810-1-git-send-email-paulmcquad@gmail.com>
References: <1445122898-5810-1-git-send-email-paulmcquad@gmail.com>
Message-ID: <1445122898-5810-3-git-send-email-paulmcquad@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: paulmcquad@gmail.com
Cc: kvalo@codeaurora.org, zajec5@gmail.com, johannes.berg@intel.com, davem@davemloft.net, joe@perches.com, m@bues.ch, mike.looijmans@topic.nl, cengelma@gmx.at, khoroshilov@ispras.ru, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

Don't turn statics to 0 or NULL

Signed-off-by: Paul McQuade <paulmcquad@gmail.com>
---
 drivers/net/wireless/b43/main.c   | 2 +-
 drivers/net/wireless/b43/phy_lp.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 040caa4..2b50650 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -109,7 +109,7 @@ int b43_modparam_verbose = B43_VERBOSITY_DEFAULT;
 module_param_named(verbose, b43_modparam_verbose, int, 0644);
 MODULE_PARM_DESC(verbose, "Log message verbosity: 0=error, 1=warn, 2=info(default), 3=debug");
 
-static int b43_modparam_pio = 0;
+static int b43_modparam_pio;
 module_param_named(pio, b43_modparam_pio, int, 0644);
 MODULE_PARM_DESC(pio, "Use PIO accesses by default: 0=DMA, 1=PIO");
 
diff --git a/drivers/net/wireless/b43/phy_lp.c b/drivers/net/wireless/b43/phy_lp.c
index 058a9f2..086f0ba 100644
--- a/drivers/net/wireless/b43/phy_lp.c
+++ b/drivers/net/wireless/b43/phy_lp.c
@@ -2502,7 +2502,7 @@ static int lpphy_b2063_tune(struct b43_wldev *dev,
 {
 	struct ssb_bus *bus = dev->dev->sdev->bus;
 
-	static const struct b206x_channel *chandata = NULL;
+	static const struct b206x_channel *chandata;
 	u32 crystal_freq = bus->chipco.pmu.crystalfreq * 1000;
 	u32 freqref, vco_freq, val1, val2, val3, timeout, timeoutref, count;
 	u16 old_comm15, scale;
-- 
2.6.1
