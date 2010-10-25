From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 25 Oct 2010 07:39:30 -0500
Subject: [PATCH] b43: rfkill: use status register based on core revision
	not (PHY's)
In-Reply-To: <1287779045-20257-1-git-send-email-zajec5@gmail.com>
References: <1287779045-20257-1-git-send-email-zajec5@gmail.com>
Message-ID: <4CC57A82.7030300@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 10/22/2010 03:24 PM, Rafa? Mi?ecki wrote:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> This makes my N-PHY radio at least running (no scanning results so far). The
> same register is used by wl on this device.
> ---
>  drivers/net/wireless/b43/rfkill.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/net/wireless/b43/rfkill.c b/drivers/net/wireless/b43/rfkill.c
> index 78016ae..d2734c9 100644
> --- a/drivers/net/wireless/b43/rfkill.c
> +++ b/drivers/net/wireless/b43/rfkill.c
> @@ -28,7 +28,7 @@
>  /* Returns TRUE, if the radio is enabled in hardware. */
>  bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
>  {
> -	if (dev->phy.rev >= 3 || dev->phy.type == B43_PHYTYPE_LP) {
> +	if (dev->dev->id.revision >= 3) {
>  		if (!(b43_read32(dev, B43_MMIO_RADIO_HWENABLED_HI)
>  		      & B43_MMIO_RADIO_HWENABLED_HI_MASK))
>  			return 1;

Over the weekend, I was able to test this patch using all my b43 hardware. There
were no problems.

Despite having no problems, I still NACK the patch for the reason that b43 only
applies to devices with id.revision >= 5, thus the revised "if" will always be
true. The patch should be rewritten as only b43legacy needs to test the 802.11
core revision.

Larry
