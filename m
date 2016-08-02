From: Baole Ni <baolex.ni@intel.com>
Date: Tue,  2 Aug 2016 19:44:55 +0800
Subject: [PATCH 0772/1285] Replace numeric parameter like 0444 with macro
Message-ID: <20160802114455.1141-1-baolex.ni@intel.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry.Finger@lwfinger.net, kvalo@codeaurora.org, bkenward@solarflare.com, linux-driver@qlogic.com, computersforpeace@gmail.com, m.chehab@samsung.com, pawel@osciak.com, m.szyprowski@samsung.com, kyungmin.park@samsung.com, k.kozlowski@samsung.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, chuansheng.liu@intel.com, baolex.ni@intel.com, lars@metafoo.de, johannes.berg@intel.com

I find that the developers often just specified the numeric value
when calling a macro which is defined with a parameter for access permission.
As we know, these numeric value for access permission have had the corresponding macro,
and that using macro can improve the robustness and readability of the code,
thus, I suggest replacing the numeric parameter with the macro.

Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
Signed-off-by: Baole Ni <baolex.ni@intel.com>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 83770d2..a3303cd 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -65,7 +65,7 @@ MODULE_FIRMWARE("b43legacy/ucode4.fw");
 
 #if defined(CONFIG_B43LEGACY_DMA) && defined(CONFIG_B43LEGACY_PIO)
 static int modparam_pio;
-module_param_named(pio, modparam_pio, int, 0444);
+module_param_named(pio, modparam_pio, int, S_IRUSR | S_IRGRP | S_IROTH);
 MODULE_PARM_DESC(pio, "enable(1) / disable(0) PIO mode");
 #elif defined(CONFIG_B43LEGACY_DMA)
 # define modparam_pio	0
@@ -74,12 +74,12 @@ MODULE_PARM_DESC(pio, "enable(1) / disable(0) PIO mode");
 #endif
 
 static int modparam_bad_frames_preempt;
-module_param_named(bad_frames_preempt, modparam_bad_frames_preempt, int, 0444);
+module_param_named(bad_frames_preempt, modparam_bad_frames_preempt, int, S_IRUSR | S_IRGRP | S_IROTH);
 MODULE_PARM_DESC(bad_frames_preempt, "enable(1) / disable(0) Bad Frames"
 		 " Preemption");
 
 static char modparam_fwpostfix[16];
-module_param_string(fwpostfix, modparam_fwpostfix, 16, 0444);
+module_param_string(fwpostfix, modparam_fwpostfix, 16, S_IRUSR | S_IRGRP | S_IROTH);
 MODULE_PARM_DESC(fwpostfix, "Postfix for the firmware files to load.");
 
 /* The following table supports BCM4301, BCM4303 and BCM4306/2 devices. */
-- 
2.9.2
