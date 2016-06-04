From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 4 Jun 2016 10:01:40 +0200
Subject: [PATCH v2 1/2] b43: Remove unused phy_a code
In-Reply-To: <1465013512-30301-1-git-send-email-linux@roeck-us.net>
References: <1465013512-30301-1-git-send-email-linux@roeck-us.net>
Message-ID: <20160604100140.43ca7621@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux@roeck-us.net>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

On Fri,  3 Jun 2016 21:11:51 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> +static void __b43_phy_initg(struct b43_wldev *dev)
> +{
> +	struct b43_phy *phy = &dev->phy;
> +
> +	might_sleep();
> +
> +	if (phy->rev >= 6) {
> +		if (b43_phy_read(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
> +			b43_phy_set(dev, B43_PHY_ENCORE, 0x0010);
> +		else
> +			b43_phy_mask(dev, B43_PHY_ENCORE, ~0x1010);
> +	}
> +
> +	b43_wa_all(dev);
> +
> +	if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL)
> +		b43_phy_maskset(dev, B43_PHY_OFDM(0x6E), 0xE000, 0x3CF);
> +}
> +
>  static void b43_phy_initg(struct b43_wldev *dev)
>  {
>  	struct b43_phy *phy = &dev->phy;
> @@ -1999,7 +2019,7 @@ static void b43_phy_initg(struct b43_wldev *dev)
>  		b43_phy_initb6(dev);
>  
>  	if (phy->rev >= 2 || phy->gmode)
> -		b43_phy_inita(dev);
> +		__b43_phy_initg(dev);

This actually is correctly called inita(), because there are A-phy parts
in the G-phy.
So I wasn't 100% correct saying that _all_ a-phy code is unused.
I'm Ok with moving that into the g-phy file though. But don't rename it.


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160604/36ebbf10/attachment.sig>
