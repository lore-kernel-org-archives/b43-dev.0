From: Luciano Coelho <coelho@ti.com>
Date: Sun, 15 Jul 2012 07:49:15 +0300
Subject: [PATCH 2/2] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
Message-ID: <1342327755.1196.6.camel@cumari.coelho.fi>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, ath9k-devel@venema.h4ckr.net, ath5k-devel@venema.h4ckr.net, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, johannes.berg@intel.com

On Fri, 2012-07-13 at 20:52 +0200, Thomas Huehn wrote:
> The pointer control.sta is removed from ieee80211_tx_info to free up sufficient
> memory in SKB_CB on the tx-path to enable new annotations per data packet e.g.
> support of upcoming Transmit Power Control (TPC).
> Now the control.sta pointer is put on the stack where it is passed as function
> parameter to the .tx equivalent (ieee80211_ops) of each affected wireless
> driver. Therefore a new structure ieee80211_tx_control is added to mac80211.h
> which holds the sta structure instead.
> 
> The tx-path of all affected drivers is restructured to respect the chaneged
> layout of struct ieee80211_tx_info. List of modified drivers:
> ath9k
> ath5k
> iwl3954
> iwl4965
> iwl-agn
> mwl8k
> carl9170
> ath9k-htc
> p54
> rt2x00
> rtl8180
> rtl8087
> hwsim
> b43
> b43legacy
> brcmsmac
> zd1211rw
> wl1251
> wlcore
> rtlwifi
> libertas_tf
> at76c50x-usb
> adm8211
> 
> Signed-off-by: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
> Signed-off-by: Alina Friedrichsen <x-alina@gmx.net>
> Signed-off-by: Felix Fietkau <nbd@openwrt.org>
> ---

For the TI drivers part (wl1251/wlcore):

Acked-by: Luciano Coelho <coelho@ti.com>

--
Luca.
