From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 Mar 2015 07:19:13 +0100
Subject: [PATCH] bcma: Kconfig: Let it depend on PCI
In-Reply-To: <BLU436-SMTP3656F4A0610686DAE30BA1B9110@phx.gbl>
References: <BLU436-SMTP3656F4A0610686DAE30BA1B9110@phx.gbl>
Message-ID: <CACna6rxJ_uQHmpQS9NPs9JW=zNS4oc2-_cH6nXG0Z9CWu7iW7A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chen Gang <xili_gchen_5257@hotmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Larry Finger <Larry.Finger@lwfinger.net>

On 3 March 2015 at 22:16, Chen Gang <xili_gchen_5257@hotmail.com> wrote:
> bcma also needs PCI, just like IOMEM and DMA, so let it depend on PCI,
> or will cause building break for allmodconfig under c6x:
>
>     CC [M]  drivers/bcma/driver_pcie2.o
>   drivers/bcma/driver_pcie2.c: In function 'bcma_core_pcie2_up':
>   drivers/bcma/driver_pcie2.c:196:8: error: implicit declaration of function 'pcie_set_readrq' [-Werror=implicit-function-declaration]
>     err = pcie_set_readrq(dev, pcie2->reqsize);
>           ^
>
> Signed-off-by: Chen Gang <gang.chen.5i5j@gmail.com>
> ---
>  drivers/bcma/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/bcma/Kconfig b/drivers/bcma/Kconfig
> index 0ee48be..8be284e 100644
> --- a/drivers/bcma/Kconfig
> +++ b/drivers/bcma/Kconfig
> @@ -1,6 +1,6 @@
>  config BCMA_POSSIBLE
>         bool
> -       depends on HAS_IOMEM && HAS_DMA
> +       depends on HAS_IOMEM && HAS_DMA && PCI
>         default y
>
>  menu "Broadcom specific AMBA"
> --
> 1.9.3

Hm, I'm not sure how to ideally handle this. Cc-ing few ppl, maybe
they have something to add.

In fact there are SoCs (not using PCI host code obviously) with
everything embedded (without any PCI host mode cores). So note
following info about driver_pci.c and driver_pcie2.c:
1) For BCMA_HOST_PCI
They are required, because of needed host-related PCI(e) core initialization.
2) For BCMA_HOST_SOC
They are needed only if your SoC has PCI(e) host cores and you want to use them.

So I guess in theory we could have BCMA_DRIVER_PCI and *require* it
for BCMA_HOST_PCI only.

This could save some little amount of space for users of some SoCs
like (ancient) BCM5352E, BCM5354 or (newer) BCM5357B0, BCM5358,
BCM47186B0, BCM5357C0, BCM5356C0, BCM4716B0.

-- 
Rafa?
