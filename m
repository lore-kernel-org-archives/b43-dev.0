From: Arik Nemtsov <arik@wizery.com>
Date: Thu, 26 Jul 2012 19:57:14 +0300
Subject: [PATCH v6] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <501170F2.3050300@net.t-labs.tu-berlin.de>
References: <1343318961-46933-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1343319453.4477.2.camel@jlt3.sipsolutions.net>
 <1343319579.4477.3.camel@jlt3.sipsolutions.net>
 <501170F2.3050300@net.t-labs.tu-berlin.de>
Message-ID: <CA+XVXfegYYwc=esyZmJHu1tEqQKcq+h+MnSyp9dXiiwqroG3tw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: Johannes Berg <johannes@sipsolutions.net>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, ath9k-devel@lists.ath9k.org, ath5k-devel@lists.ath5k.org, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, coelho@ti.com, nbd@openwrt.org

On Thu, Jul 26, 2012 at 7:31 PM, Thomas Huehn
<thomas@net.t-labs.tu-berlin.de> wrote:
> Hi Johannes,
>
> Johannes Berg schrieb:
>
>>>
>>> /home/johannes/sys/wireless/drivers/net/wireless/ti/wlcore/tx.c: In
>>> function ?wl1271_skb_queue_head?:
>>> /home/johannes/sys/wireless/drivers/net/wireless/ti/wlcore/tx.c:622:48:
>>> warning: ?hlid? may be used uninitialized in this function
>>> [-Wuninitialized]
>>
>> Those changes make no sense anyway -- you should be able to pass the
>> station pointer through if it previously used info->control.sta, instead
>> of doing an (expensive) lookup.
>
>
> This is the call path
>
> in main.c ... INIT_WORK(&wl->tx_work, wl1271_tx_work);
>  jumps to tx.c...wl1271_tx_work(struct work_struct *work)
>   calls wl1271_tx_work(struct work_struct *work)
>    calls wlcore_tx_work_locked(struct wl1271 *wl)
>     calls wl1271_skb_queue_head()
>      calls wl12xx_tx_get_hlid()
>       calls wl12xx_tx_get_hlid_ap() .... where sta is needed.
>
> But I could not find any point in the call path where I could grab the
> sta pointer and pass it through. I will move the rcu into
> wl12xx_tx_get_hlid_ap(), but I do not see any cheaper way here as using rcu.

I agree with Johannes. The find_sta() in the Tx path is unacceptable.

A relatively simple change here would be to put the sta pointer in the
portion of the struct reserved for rate control during op_tx(). wlcore
doesn't use software rate control anyway.
This would avoid from changing the code too much.
