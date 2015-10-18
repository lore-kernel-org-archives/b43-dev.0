From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 18 Oct 2015 11:21:02 +0200
Subject: [PATCH 2/3] net: wireless: b43: Fixed Pointer issue
In-Reply-To: <1445122898-5810-2-git-send-email-paulmcquad@gmail.com>
References: <1445122898-5810-1-git-send-email-paulmcquad@gmail.com>
 <1445122898-5810-2-git-send-email-paulmcquad@gmail.com>
Message-ID: <20151018112102.0a63869c@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul McQuade <paulmcquad@gmail.com>
Cc: kvalo@codeaurora.org, zajec5@gmail.com, johannes.berg@intel.com, davem@davemloft.net, joe@perches.com, mike.looijmans@topic.nl, cengelma@gmx.at, khoroshilov@ispras.ru, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On Sun, 18 Oct 2015 00:01:37 +0100
Paul McQuade <paulmcquad@gmail.com> wrote:

> Moved around pointer to avoid ERROR
> 
> Signed-off-by: Paul McQuade <paulmcquad@gmail.com>
> ---
>  drivers/net/wireless/b43/dma.h  | 14 +++++++-------
>  drivers/net/wireless/b43/main.c |  6 +++---
>  drivers/net/wireless/b43/main.h |  2 +-
>  drivers/net/wireless/b43/xmit.h |  2 +-
>  4 files changed, 12 insertions(+), 12 deletions(-)
>  
>  enum b43_dmatype {
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index 2849070..040caa4 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -364,7 +364,7 @@ static struct ieee80211_supported_band b43_band_2ghz_limited = {
>  
>  static void b43_wireless_core_exit(struct b43_wldev *dev);
>  static int b43_wireless_core_init(struct b43_wldev *dev);
> -static struct b43_wldev * b43_wireless_core_stop(struct b43_wldev *dev);
> +static struct b43_wldev *b43_wireless_core_stop(struct b43_wldev *dev);
>  static int b43_wireless_core_start(struct b43_wldev *dev);
>  static void b43_op_bss_info_changed(struct ieee80211_hw *hw,
>  				    struct ieee80211_vif *vif,


Can we have a sane commit message, please?
This is not an 'error' or an 'issue'. It's purely cosmetical and coding
style related.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20151018/18270295/attachment.sig>
