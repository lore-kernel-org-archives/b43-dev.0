From: Arend van Spriel <arend@broadcom.com>
Date: Sat, 14 Jul 2012 12:10:08 +0200
Subject: [PATCH 2/2] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
Message-ID: <50014580.7060702@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, ath9k-devel@lists.ath9k.org, ath5k-devel@lists.ath5k.org, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, coelho@ti.com, johannes.berg@intel.com

On 07/13/2012 08:52 PM, Thomas Huehn wrote:
> The pointer control.sta is removed from ieee80211_tx_info to free up sufficient
> memory in SKB_CB on the tx-path to enable new annotations per data packet e.g.
> support of upcoming Transmit Power Control (TPC).
> Now the control.sta pointer is put on the stack where it is passed as function
> parameter to the .tx equivalent (ieee80211_ops) of each affected wireless
> driver. Therefore a new structure ieee80211_tx_control is added to mac80211.h
> which holds the sta structure instead.
> 
> ---
>  .../net/wireless/brcm80211/brcmsmac/mac80211_if.c  |  6 +++--
> 
> diff --git a/drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.c b/drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.c
> index 9e79d47..a7be68d 100644
> --- a/drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.c
> +++ b/drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.c
> @@ -264,7 +264,9 @@ static void brcms_set_basic_rate(struct brcm_rateset *rs, u16 rate, bool is_br)
>  	}
>  }
>  
> -static void brcms_ops_tx(struct ieee80211_hw *hw, struct sk_buff *skb)
> +static void brcms_ops_tx(struct ieee80211_hw *hw,
> +			 struct ieee80211_tx_control *control,
> +			 struct sk_buff *skb)

Fix indent here (if it is not a mailer issue).

>  {
>  	struct brcms_info *wl = hw->priv;
>  	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
> @@ -276,7 +278,7 @@ static void brcms_ops_tx(struct ieee80211_hw *hw, struct sk_buff *skb)
>  		goto done;
>  	}
>  	brcms_c_sendpkt_mac80211(wl->wlc, skb, hw);
> -	tx_info->rate_driver_data[0] = tx_info->control.sta;
> +	tx_info->rate_driver_data[0] = control->sta;
>   done:
>  	spin_unlock_bh(&wl->lock);
>  }

Gr. AvS
