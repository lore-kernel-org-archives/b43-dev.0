From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 2 Mar 2013 05:09:00 +0100
Subject: [PATCH] b43: HT-PHY: make it BCMA-only
In-Reply-To: <1362186865-20539-1-git-send-email-zajec5@gmail.com>
References: <1362186865-20539-1-git-send-email-zajec5@gmail.com>
Message-ID: <20130302050900.6e768a3e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sat,  2 Mar 2013 02:14:25 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> HT-PHY was found only on BCM4331 which is a BCMA-based chipset. This is
> reallly unlikely we will ever see HT-PHY on SSB thus make the whole code
> BCMA specific. This will allow us to call various BCMA-specific
> functions directly (without extra checks).
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>  drivers/net/wireless/b43/Kconfig  |    2 +-
>  drivers/net/wireless/b43/phy_ht.c |    5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
> index 7a28d21..09d315d 100644
> --- a/drivers/net/wireless/b43/Kconfig
> +++ b/drivers/net/wireless/b43/Kconfig
> @@ -131,7 +131,7 @@ config B43_PHY_LP
>  
>  config B43_PHY_HT
>  	bool "Support for HT-PHY (high throughput) devices (EXPERIMENTAL)"
> -	depends on B43 && EXPERIMENTAL
> +	depends on B43 && B43_BCMA && EXPERIMENTAL

Makes sense.
What about removing EXPERIMENTAL? This flag is mostly useless these days.

>  	---help---
>  	  Support for the HT-PHY.
>  
> diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
> index 7416c5e..3719a88 100644
> --- a/drivers/net/wireless/b43/phy_ht.c
> +++ b/drivers/net/wireless/b43/phy_ht.c
> @@ -346,6 +346,11 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
>  	u16 tmp;
>  	u16 clip_state[3];
>  
> +	if (dev->dev->bus_type != B43_BUS_BCMA) {
> +		b43err(dev->wl, "HT-PHY is supported only on BCMA bus!\n");
> +		return -EOPNOTSUPP;
> +	}
> +
>  	b43_phy_ht_tables_init(dev);
>  
>  	b43_phy_mask(dev, 0x0be, ~0x2);



-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130302/fbfe56cf/attachment.sig>
