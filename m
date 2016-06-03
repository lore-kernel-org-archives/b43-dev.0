From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 3 Jun 2016 23:09:11 +0200
Subject: [PATCH] b43: only hardcode LED behavior if SPROM doesn't encode
 any
In-Reply-To: <1464987843-6928-1-git-send-email-dev@lynxeye.de>
References: <1464987843-6928-1-git-send-email-dev@lynxeye.de>
Message-ID: <20160603230911.4a9e80b6@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lucas Stach <dev@lynxeye.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Fri,  3 Jun 2016 23:04:03 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Only hardcode the LED behavior if the SROM doesn't provide any for all
> LEDs of the card. This avoids instantiating LED triggers for unconnected
> LEDs, while (hopefully) keeping things working for old cards with a
> blank SROM.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Acked-by: Michael Buesch <m@bues.ch>


> ---
>  drivers/net/wireless/broadcom/b43/leds.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/leds.c b/drivers/net/wireless/broadcom/b43/leds.c
> index d79ab2a..cb987c2 100644
> --- a/drivers/net/wireless/broadcom/b43/leds.c
> +++ b/drivers/net/wireless/broadcom/b43/leds.c
> @@ -222,7 +222,7 @@ static void b43_led_get_sprominfo(struct b43_wldev *dev,
>  	sprom[2] = dev->dev->bus_sprom->gpio2;
>  	sprom[3] = dev->dev->bus_sprom->gpio3;
>  
> -	if (sprom[led_index] == 0xFF) {
> +	if ((sprom[0] & sprom[1] & sprom[2] & sprom[3]) == 0xff) {
>  		/* There is no LED information in the SPROM
>  		 * for this LED. Hardcode it here. */
>  		*activelow = false;
> @@ -250,7 +250,11 @@ static void b43_led_get_sprominfo(struct b43_wldev *dev,
>  			return;
>  		}
>  	} else {
> -		*behaviour = sprom[led_index] & B43_LED_BEHAVIOUR;
> +		/* keep LED disabled if no mapping is defined */
> +		if (sprom[led_index] == 0xff)
> +			*behaviour = B43_LED_OFF;
> +		else
> +			*behaviour = sprom[led_index] & B43_LED_BEHAVIOUR;
>  		*activelow = !!(sprom[led_index] & B43_LED_ACTIVELOW);
>  	}
>  }




-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160603/d9d8821e/attachment.sig>
