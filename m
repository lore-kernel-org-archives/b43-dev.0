From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 22 Jul 2012 15:42:38 -0500
Subject: [IDEA RFC][PATCH] b43: G-PHY: drop unused PHY rev 1 code
In-Reply-To: <1342962054-26239-1-git-send-email-zajec5@gmail.com>
References: <1342962054-26239-1-git-send-email-zajec5@gmail.com>
Message-ID: <500C65BE.8030700@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/22/2012 08:00 AM, Rafa? Mi?ecki wrote:
> b43 does not support devices with G-PHY rev 1. They are handled by
> b43legacy.

I agree with this change.

Larry

> ---
> This change matches http://bcm-v4.sipsolutions.net/802.11/PHY/Init/G
> routine. Since b43 and b43legacy were splitted, I believe PHY support
> can be splitted too.
>
> I think similar change (just "reversed" can be applied to the b43legacy)
> ---
>   drivers/net/wireless/b43/main.c  |    2 +-
>   drivers/net/wireless/b43/phy_g.c |  103 +-------------------------------------
>   2 files changed, 2 insertions(+), 103 deletions(-)
>
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index b80352b..8e5f4e8 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -4306,7 +4306,7 @@ static int b43_phy_versioning(struct b43_wldev *dev)
>   			unsupported = 1;
>   		break;
>   	case B43_PHYTYPE_G:
> -		if (phy_rev > 9)
> +		if (phy_rev < 2 || phy_rev > 9)
>   			unsupported = 1;
>   		break;
>   #ifdef CONFIG_B43_PHY_N
> diff --git a/drivers/net/wireless/b43/phy_g.c b/drivers/net/wireless/b43/phy_g.c
> index 12f467b..a67f278 100644
> --- a/drivers/net/wireless/b43/phy_g.c
> +++ b/drivers/net/wireless/b43/phy_g.c
> @@ -1489,104 +1489,6 @@ static u16 b43_radio_init2050(struct b43_wldev *dev)
>   	return ret;
>   }
>
> -static void b43_phy_initb5(struct b43_wldev *dev)
> -{
> -	struct b43_phy *phy = &dev->phy;
> -	struct b43_phy_g *gphy = phy->g;
> -	u16 offset, value;
> -	u8 old_channel;
> -
> -	if (phy->analog == 1) {
> -		b43_radio_set(dev, 0x007A, 0x0050);
> -	}
> -	if ((dev->dev->board_vendor != SSB_BOARDVENDOR_BCM) &&
> -	    (dev->dev->board_type != SSB_BOARD_BU4306)) {
> -		value = 0x2120;
> -		for (offset = 0x00A8; offset < 0x00C7; offset++) {
> -			b43_phy_write(dev, offset, value);
> -			value += 0x202;
> -		}
> -	}
> -	b43_phy_maskset(dev, 0x0035, 0xF0FF, 0x0700);
> -	if (phy->radio_ver == 0x2050)
> -		b43_phy_write(dev, 0x0038, 0x0667);
> -
> -	if (phy->gmode || phy->rev >= 2) {
> -		if (phy->radio_ver == 0x2050) {
> -			b43_radio_set(dev, 0x007A, 0x0020);
> -			b43_radio_set(dev, 0x0051, 0x0004);
> -		}
> -		b43_write16(dev, B43_MMIO_PHY_RADIO, 0x0000);
> -
> -		b43_phy_set(dev, 0x0802, 0x0100);
> -		b43_phy_set(dev, 0x042B, 0x2000);
> -
> -		b43_phy_write(dev, 0x001C, 0x186A);
> -
> -		b43_phy_maskset(dev, 0x0013, 0x00FF, 0x1900);
> -		b43_phy_maskset(dev, 0x0035, 0xFFC0, 0x0064);
> -		b43_phy_maskset(dev, 0x005D, 0xFF80, 0x000A);
> -	}
> -
> -	if (dev->bad_frames_preempt) {
> -		b43_phy_set(dev, B43_PHY_RADIO_BITFIELD, (1 << 11));
> -	}
> -
> -	if (phy->analog == 1) {
> -		b43_phy_write(dev, 0x0026, 0xCE00);
> -		b43_phy_write(dev, 0x0021, 0x3763);
> -		b43_phy_write(dev, 0x0022, 0x1BC3);
> -		b43_phy_write(dev, 0x0023, 0x06F9);
> -		b43_phy_write(dev, 0x0024, 0x037E);
> -	} else
> -		b43_phy_write(dev, 0x0026, 0xCC00);
> -	b43_phy_write(dev, 0x0030, 0x00C6);
> -	b43_write16(dev, 0x03EC, 0x3F22);
> -
> -	if (phy->analog == 1)
> -		b43_phy_write(dev, 0x0020, 0x3E1C);
> -	else
> -		b43_phy_write(dev, 0x0020, 0x301C);
> -
> -	if (phy->analog == 0)
> -		b43_write16(dev, 0x03E4, 0x3000);
> -
> -	old_channel = phy->channel;
> -	/* Force to channel 7, even if not supported. */
> -	b43_gphy_channel_switch(dev, 7, 0);
> -
> -	if (phy->radio_ver != 0x2050) {
> -		b43_radio_write16(dev, 0x0075, 0x0080);
> -		b43_radio_write16(dev, 0x0079, 0x0081);
> -	}
> -
> -	b43_radio_write16(dev, 0x0050, 0x0020);
> -	b43_radio_write16(dev, 0x0050, 0x0023);
> -
> -	if (phy->radio_ver == 0x2050) {
> -		b43_radio_write16(dev, 0x0050, 0x0020);
> -		b43_radio_write16(dev, 0x005A, 0x0070);
> -	}
> -
> -	b43_radio_write16(dev, 0x005B, 0x007B);
> -	b43_radio_write16(dev, 0x005C, 0x00B0);
> -
> -	b43_radio_set(dev, 0x007A, 0x0007);
> -
> -	b43_gphy_channel_switch(dev, old_channel, 0);
> -
> -	b43_phy_write(dev, 0x0014, 0x0080);
> -	b43_phy_write(dev, 0x0032, 0x00CA);
> -	b43_phy_write(dev, 0x002A, 0x88A3);
> -
> -	b43_set_txpower_g(dev, &gphy->bbatt, &gphy->rfatt, gphy->tx_control);
> -
> -	if (phy->radio_ver == 0x2050)
> -		b43_radio_write16(dev, 0x005D, 0x000D);
> -
> -	b43_write16(dev, 0x03E4, (b43_read16(dev, 0x03E4) & 0xFFC0) | 0x0004);
> -}
> -
>   static void b43_phy_initb6(struct b43_wldev *dev)
>   {
>   	struct b43_phy *phy = &dev->phy;
> @@ -1993,10 +1895,7 @@ static void b43_phy_initg(struct b43_wldev *dev)
>   	struct b43_phy_g *gphy = phy->g;
>   	u16 tmp;
>
> -	if (phy->rev == 1)
> -		b43_phy_initb5(dev);
> -	else
> -		b43_phy_initb6(dev);
> +	b43_phy_initb6(dev);
>
>   	if (phy->rev >= 2 || phy->gmode)
>   		b43_phy_inita(dev);
>
