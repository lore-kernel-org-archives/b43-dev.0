From: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Date: Fri, 13 Jul 2012 20:52:24 +0200
Subject: [PATCH 1/2] mac80211_hwsim: fix possible race condition in usage of
 info->control.sta & control.vif
In-Reply-To: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
Message-ID: <1342205545-45382-2-git-send-email-thomas@net.t-labs.tu-berlin.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, ath9k-devel@lists.ath9k.org, ath5k-devel@lists.ath5k.org, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, coelho@ti.com, johannes.berg@intel.com

info->control.sta and control.vif may only be dereferenced during the
drv_tx call otherwise could lead to use-after-free bugs.

Signed-off-by: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
---
 drivers/net/wireless/mac80211_hwsim.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/wireless/mac80211_hwsim.c b/drivers/net/wireless/mac80211_hwsim.c
index 3f38d84..826ac7b 100644
--- a/drivers/net/wireless/mac80211_hwsim.c
+++ b/drivers/net/wireless/mac80211_hwsim.c
@@ -1540,11 +1540,6 @@ static int hwsim_tx_info_frame_received_nl(struct sk_buff *skb_2,
 	/* now send back TX status */
 	txi = IEEE80211_SKB_CB(skb);
 
-	if (txi->control.vif)
-		hwsim_check_magic(txi->control.vif);
-	if (txi->control.sta)
-		hwsim_check_sta_magic(txi->control.sta);
-
 	ieee80211_tx_info_clear_status(txi);
 
 	for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
-- 
1.7.11.1
