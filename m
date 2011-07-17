From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 17 Jul 2011 10:43:59 +0200
Subject: [PATCH 1/4] b43: HT-PHY: fix masks in radio ctl
In-Reply-To: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
References: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
Message-ID: <20110717104359.72a27182@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 17 Jul 2011 10:30:31 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Old masks were causing ugly, delayed lock ups.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>  drivers/net/wireless/b43/phy_ht.c |   10 +++++-----
>  1 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
> index 2982103..0cc293a 100644
> --- a/drivers/net/wireless/b43/phy_ht.c
> +++ b/drivers/net/wireless/b43/phy_ht.c
> @@ -277,12 +277,12 @@ static void b43_phy_ht_op_software_rfkill(struct b43_wldev *dev,
>  		b43err(dev->wl, "MAC not suspended\n");
>  
>  	if (blocked) {
> -		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
> +		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
>  	} else {
> -		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
> -		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x1);
> -		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, ~0);
> -		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, ~0, 0x2);
> +		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
> +		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x1);
> +		b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
> +		b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x2);
>  
>  		if (dev->phy.radio_ver == 0x2059)
>  			b43_radio_2059_init(dev);

Why are we using mask/maskset here at all, if the mask is zero?
You could just use phy_write.

(And mask() with ~0 should always ring a bell anyway, because it does
nothing except for possible side effects of the register read/write).
