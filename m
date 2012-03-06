From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 6 Mar 2012 22:59:42 +0100
Subject: [RFT][PATCH] b43: fix logic in GPIO configuration
In-Reply-To: <1331071898-3651-1-git-send-email-zajec5@gmail.com>
References: <1331071898-3651-1-git-send-email-zajec5@gmail.com>
Message-ID: <20120306225942.6a115221@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org, larry.finger@lwfinger.net, florian@openwrt.org

On Tue,  6 Mar 2012 23:11:38 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> By using reverted mask we were taking over pins we were not supporsed to
> touch. After fixing this workaround for BCM5354 should not be needed
> anymore.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>  drivers/net/wireless/b43/main.c |    6 ++----
>  1 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index 1d633f3..8a89885 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -2706,8 +2706,6 @@ static int b43_gpio_init(struct b43_wldev *dev)
>  		mask |= 0x0060;
>  		set |= 0x0060;
>  	}
> -	if (dev->dev->chip_id == 0x5354)
> -		set &= 0xff02;
>  	if (0 /* FIXME: conditional unknown */ ) {
>  		b43_write16(dev, B43_MMIO_GPIO_MASK,
>  			    b43_read16(dev, B43_MMIO_GPIO_MASK)
> @@ -2730,7 +2728,7 @@ static int b43_gpio_init(struct b43_wldev *dev)
>  	case B43_BUS_BCMA:
>  		bcma_cc_write32(&dev->dev->bdev->bus->drv_cc, BCMA_CC_GPIOCTL,
>  				(bcma_cc_read32(&dev->dev->bdev->bus->drv_cc,
> -					BCMA_CC_GPIOCTL) & mask) | set);
> +					BCMA_CC_GPIOCTL) & ~mask) | set);
>  		break;
>  #endif
>  #ifdef CONFIG_B43_SSB
> @@ -2739,7 +2737,7 @@ static int b43_gpio_init(struct b43_wldev *dev)
>  		if (gpiodev)
>  			ssb_write32(gpiodev, B43_GPIO_CONTROL,
>  				    (ssb_read32(gpiodev, B43_GPIO_CONTROL)
> -				    & mask) | set);
> +				    & ~mask) | set);
>  		break;
>  #endif
>  	}

This patch makes sense. Can you also check b43legacy? I guess it has the same problem.

And while we're at it, you could also remove these two lines:

2737         if (dev->dev->core_rev >= 2)
2738                 mask |= 0x0010; /* FIXME: This is redundant. */

because core_rev is always >= 2 in b43 and as the FIXME says the bit is already set.


Also, take a look at b43_gpio_cleanup() (in b43 and b43legacy).
It always forces all bits to zero. This clearly is wrong, too. It is supposed to
revert the changes done in the b43 GPIO setup. It seems too complicated to
fixup the code to actually do this, though. I think we should simply get rid of
b43_gpio_cleanup() completely and simply leave the GPIOs as-is. No kittens
will be hurt by doing so; so it's ok.

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120306/68cb7f1b/attachment.sig>
