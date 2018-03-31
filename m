From: Pkshih <pkshih@realtek.com>
Date: Sat, 31 Mar 2018 14:01:12 +0000
Subject: [PATCH 06/12] wireless: Convert simple uses of a static const
 Ethernet broadcast address
In-Reply-To: <79196f134a513d50968e8e208a0e56b3c0236ee3.1522479607.git.joe@perches.com>
References: <cover.1522479607.git.joe@perches.com>
 <79196f134a513d50968e8e208a0e56b3c0236ee3.1522479607.git.joe@perches.com>
Message-ID: <1522504872.1910.17.camel@realtek.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "huxm@marvell.com" <huxm@marvell.com>, "gbhat@marvell.com" <gbhat@marvell.com>, "jussi.kivilinna@iki.fi" <jussi.kivilinna@iki.fi>, "nishants@marvell.com" <nishants@marvell.com>, "kvalo@codeaurora.org" <kvalo@codeaurora.org>, "joe@perches.com" <joe@perches.com>, "amitkarwar@gmail.com" <amitkarwar@gmail.com>, "chunkeey@googlemail.com" <chunkeey@googlemail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

On Sat, 2018-03-31 at 00:05 -0700, Joe Perches wrote:
> Use the new ether_broadcast_addr global instead to save some object code.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> ?drivers/net/wireless/admtek/adm8211.c???????????| 3 +--
> ?drivers/net/wireless/ath/carl9170/mac.c?????????| 4 +---
> ?drivers/net/wireless/broadcom/b43/main.c????????| 3 +--
> ?drivers/net/wireless/marvell/mwifiex/cfg80211.c | 3 +--
> ?drivers/net/wireless/realtek/rtlwifi/core.c?????| 5 ++---
> ?drivers/net/wireless/rndis_wlan.c???????????????| 6 +-----
> ?drivers/net/wireless/ti/wl1251/main.c???????????| 5 +----
> ?drivers/net/wireless/ti/wlcore/main.c???????????| 5 +----
> ?8 files changed, 9 insertions(+), 25 deletions(-)
> 
> ?
> diff --git a/drivers/net/wireless/realtek/rtlwifi/core.c
> b/drivers/net/wireless/realtek/rtlwifi/core.c
> index cfea57efa7f4..8c534a93dad5 100644
> --- a/drivers/net/wireless/realtek/rtlwifi/core.c
> +++ b/drivers/net/wireless/realtek/rtlwifi/core.c
> @@ -1527,7 +1527,6 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
> ?	bool wep_only = false;
> ?	int err = 0;
> ?	u8 mac_addr[ETH_ALEN];
> -	u8 bcast_addr[ETH_ALEN] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
> ?
> ?	rtlpriv->btcoexist.btc_info.in_4way = false;
> ?
> @@ -1544,7 +1543,7 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
> ?	RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
> ?		?"%s hardware based encryption for keyidx: %d, mac: %pM\n",
> ?		??cmd == SET_KEY ? "Using" : "Disabling", key->keyidx,
> -		??sta ? sta->addr : bcast_addr);
> +		??sta ? sta->addr : ether_broadcast_addr);
> ?	rtlpriv->sec.being_setkey = true;
> ?	rtl_ips_nic_on(hw);
> ?	mutex_lock(&rtlpriv->locks.conf_mutex);
> @@ -1649,7 +1648,7 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
> ?			memcpy(rtlpriv->sec.key_buf[key_idx],
> ?			???????key->key, key->keylen);
> ?			rtlpriv->sec.key_len[key_idx] = key->keylen;
> -			memcpy(mac_addr, bcast_addr, ETH_ALEN);
> +			memcpy(mac_addr, ether_broadcast_addr, ETH_ALEN);

Use?ether_addr_copy(mac_addr, ether_broadcast_addr) ?


> ?		} else {	/* pairwise key */
> ?			RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
> ?				?"set pairwise key\n");
