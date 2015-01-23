From: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 23 Jan 2015 17:41:29 +0000 (UTC)
Subject: b43: stop leds during suspend
In-Reply-To: <1421678072-28997-1-git-send-email-sd@queasysnail.net>
Message-ID: <20150123174129.CB09914180B@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sabrina Dubroca <sd@queasysnail.net>
Cc: stefano.brivio@polimi.it, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org


> Call b43_leds_stop during suspend to avoid this WARN:
> 
> WARNING: CPU: 1 PID: 0 at net/mac80211/util.c:755 ieee80211_can_queue_work.isra.11+0x35/0x50 [mac80211]()
> queueing ieee80211 work while going to suspend
> 
>  [...]
> 
> Call Trace:
>  [<c165fb2a>] dump_stack+0x48/0x69
>  [<c1052f7b>] warn_slowpath_common+0x8b/0xc0
>  [<f9c30225>] ? ieee80211_can_queue_work.isra.11+0x35/0x50 [mac80211]
>  [<f9c30225>] ? ieee80211_can_queue_work.isra.11+0x35/0x50 [mac80211]
>  [<c1052fe3>] warn_slowpath_fmt+0x33/0x40
>  [<f9c30225>] ieee80211_can_queue_work.isra.11+0x35/0x50 [mac80211]
>  [<f9c30260>] ieee80211_queue_work+0x20/0x40 [mac80211]
>  [<f9f25d78>] b43_led_brightness_set+0x28/0x30 [b43]
>  [<c14f3835>] led_timer_function+0xd5/0xe0
>  [<c10cb534>] call_timer_fn+0xa4/0x4a0
> 
> Signed-off-by: Sabrina Dubroca <sd@queasysnail.net>

Thanks, applied to wireless-drivers-next.git.

Kalle Valo
