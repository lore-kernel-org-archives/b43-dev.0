From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 05 Apr 2018 15:39:50 +0300
Subject: [PATCH 06/12] wireless: Convert simple uses of a static const
 Ethernet broadcast address
In-Reply-To: <79196f134a513d50968e8e208a0e56b3c0236ee3.1522479607.git.joe@perches.com>
 (Joe Perches's message of "Sat, 31 Mar 2018 00:05:21 -0700")
References: <cover.1522479607.git.joe@perches.com>
 <79196f134a513d50968e8e208a0e56b3c0236ee3.1522479607.git.joe@perches.com>
Message-ID: <87po3desix.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joe Perches <joe@perches.com>
Cc: Christian Lamparter <chunkeey@googlemail.com>, Amitkumar Karwar <amitkarwar@gmail.com>, Nishant Sarmukadam <nishants@marvell.com>, Ganapathi Bhat <gbhat@marvell.com>, Xinming Hu <huxm@marvell.com>, Ping-Ke Shih <pkshih@realtek.com>, Jussi Kivilinna <jussi.kivilinna@iki.fi>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org

Joe Perches <joe@perches.com> writes:

> Use the new ether_broadcast_addr global instead to save some object code.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  drivers/net/wireless/admtek/adm8211.c           | 3 +--
>  drivers/net/wireless/ath/carl9170/mac.c         | 4 +---
>  drivers/net/wireless/broadcom/b43/main.c        | 3 +--
>  drivers/net/wireless/marvell/mwifiex/cfg80211.c | 3 +--
>  drivers/net/wireless/realtek/rtlwifi/core.c     | 5 ++---
>  drivers/net/wireless/rndis_wlan.c               | 6 +-----
>  drivers/net/wireless/ti/wl1251/main.c           | 5 +----
>  drivers/net/wireless/ti/wlcore/main.c           | 5 +----
>  8 files changed, 9 insertions(+), 25 deletions(-)

It would be really helpful if you could CLEARLY document in the patches
(or in the cover letter but then you need to cc all parties) to what
tree the patches are meant for. Otherwise I, and other maintainers as
well, need to waste time trying to guess what's your plan.

I will now drop the four wireless patches from my queue. So if you want
to me to take them please resubmit.

-- 
Kalle Valo
