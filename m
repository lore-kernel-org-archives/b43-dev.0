From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 10 May 2011 18:42:05 -0500
Subject: [PATCH 2/2] b43: implement timeouts workaround
In-Reply-To: <1305072659-4011-2-git-send-email-zajec5@gmail.com>
References: <1305072659-4011-1-git-send-email-zajec5@gmail.com>
	<1305072659-4011-2-git-send-email-zajec5@gmail.com>
Message-ID: <4DC9CD4D.6060002@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 05/10/2011 07:10 PM, Rafa? Mi?ecki wrote:
> Documented in:<4BB81CAD.10602@lwfinger.net>

This reference is not correct.

Larry

>
> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
> ---
>   drivers/net/wireless/b43/main.c |   13 ++++++++++++-
>   1 files changed, 12 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index fd8bd98..88bfd29 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -4213,7 +4213,18 @@ static void b43_bluetooth_coext_disable(struct b43_wldev *dev)
>
>   static void b43_imcfglo_timeouts_workaround(struct b43_wldev *dev)
>   {
> -	/* TODO: implement 80211 core workaround here */
> +	struct ssb_bus *bus = dev->dev->bus;
> +	u32 tmp;
> +
> +	if ((bus->chip_id == 0x4311&&  bus->chip_rev == 2) ||
> +	    (bus->chip_id == 0x4312)) {
> +		tmp = ssb_read32(dev->dev, SSB_IMCFGLO);
> +		tmp&= ~SSB_IMCFGLO_REQTO;
> +		tmp&= ~SSB_IMCFGLO_SERTO;
> +		tmp |= 0x3;
> +		ssb_write32(dev->dev, SSB_IMCFGLO, tmp);
> +		ssb_commit_settings(bus);
> +	}
>   }
>
>   static void b43_set_synth_pu_delay(struct b43_wldev *dev, bool idle)
