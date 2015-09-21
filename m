From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 21 Sep 2015 11:14:32 -0500
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
Message-ID: <56002CE8.3080605@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org

On 09/21/2015 04:04 AM, Rafa? Mi?ecki wrote:
> ssb bus can be found on various "host" devices like PCI/PCMCIA/SDIO.
> Every ssb bus contains cores AKA devices.
> The main idea is to have ssb driver scan/initialize bus and register
> ready-to-use cores. This way ssb drivers can operate on a single core
> mostly ignoring underlaying details.
>
> For some reason PCMCIA support was split between ssb and b43. We got
> PCMCIA host device probing in b43, then bus scanning in ssb and then
> wireless core probing back in b43. The truth is it's very unlikely we
> will ever see PCMCIA ssb device with no 802.11 core but I still don't
> see any advantage of the current architecture.
>
> With proposed change we get the same functionality with a simpler
> architecture, less Kconfig symbols, one killed EXPORT and hopefully
> cleaner b43. Since b43 supports both: ssb & bcma I prefer to keep ssb
> specific code in ssb driver.
>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>   drivers/net/wireless/b43/Kconfig  |  20 ------
>   drivers/net/wireless/b43/Makefile |   1 -
>   drivers/net/wireless/b43/main.c   |   9 +--
>   drivers/net/wireless/b43/pcmcia.c | 145 --------------------------------------
>   drivers/net/wireless/b43/pcmcia.h |  20 ------
>   drivers/ssb/main.c                |   8 ++-
>   drivers/ssb/pcmcia.c              | 110 +++++++++++++++++++++++++++++
>   drivers/ssb/ssb_private.h         |   9 +++
>   8 files changed, 127 insertions(+), 195 deletions(-)
>   delete mode 100644 drivers/net/wireless/b43/pcmcia.c
>   delete mode 100644 drivers/net/wireless/b43/pcmcia.h

I like this change very much. I did not go into the history of splitting the 
PCMCIA support between ssb and b43, other than to note that this change makes 
the initialization of b43 look exactly like the init code of b43legacy. Thus the 
splitting of PCMCIA functions between ssb and b43 happened after b43legacy was 
split from early b43.

This patch has been tested on PPC architecture with Linksys WPC54G PCMCIA cards. 
Both V1 (using b43legacy) and V3 (using b43) of these devices are available. As 
expected, the V1 device was not affected by this patch, and the V3 unit worked 
with no problems, other than an initial build error on the PPC. To fix this, an 
"#include <linux/module.h>" is needed in drivers/ssb/pcmcia.c, otherwise the 
build fails because the MODULE_DEVICE_TABLE macro is not defined. With that 
change, you may add

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

I have also in-lined one little comment below:

>
> diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
> index 759fb8d..fba8560 100644
> --- a/drivers/net/wireless/b43/Kconfig
> +++ b/drivers/net/wireless/b43/Kconfig
> @@ -71,26 +71,6 @@ config B43_PCICORE_AUTOSELECT
>   	select SSB_DRIVER_PCICORE
>   	default y

..snip..


> diff --git a/drivers/ssb/pcmcia.c b/drivers/ssb/pcmcia.c
> index f03422b..e279925 100644
> --- a/drivers/ssb/pcmcia.c
> +++ b/drivers/ssb/pcmcia.c
> @@ -839,3 +839,113 @@ error:
>   	ssb_err("Failed to initialize PCMCIA host device\n");
>   	return err;
>   }
> +
> +static const struct pcmcia_device_id ssb_host_pcmcia_tbl[] = {
> +	PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x448),
> +	PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x476),
> +	PCMCIA_DEVICE_NULL,

It probably does not matter here, but I prefer that hexadecimal constants in 
device tables contain only the lower-case versions of a-f. That makes searching 
for such constants with grep a lot easier.

Good work,

Larry
