From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 6 Jun 2011 13:07:35 +0200
Subject: [RFC][PATCH 09/10] bcm47xx: add support for bcma bus
In-Reply-To: <1307311658-15853-10-git-send-email-hauke@hauke-m.de>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-10-git-send-email-hauke@hauke-m.de>
Message-ID: <BANLkTi=ybf59NR1NA3TOuamsWzey9zx19A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

2011/6/6 Hauke Mehrtens <hauke@hauke-m.de>:
> This patch add support for the bcma bus. Broadcom uses only Mips 74K
> CPUs on the new SoC and on the old ons using ssb bus there are no Mips
> 74K CPUs.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
> ?arch/mips/Kconfig ? ? ? ? ? ? ? ? ? ? ? ? ? ?| ? ?4 +++
> ?arch/mips/bcm47xx/gpio.c ? ? ? ? ? ? ? ? ? ? | ? ?9 ++++++++
> ?arch/mips/bcm47xx/nvram.c ? ? ? ? ? ? ? ? ? ?| ? ?6 +++++
> ?arch/mips/bcm47xx/serial.c ? ? ? ? ? ? ? ? ? | ? 24 +++++++++++++++++++++++
> ?arch/mips/bcm47xx/setup.c ? ? ? ? ? ? ? ? ? ?| ? 27 ++++++++++++++++++++++++-
> ?arch/mips/bcm47xx/time.c ? ? ? ? ? ? ? ? ? ? | ? ?3 ++
> ?arch/mips/include/asm/mach-bcm47xx/bcm47xx.h | ? ?3 ++
> ?arch/mips/include/asm/mach-bcm47xx/gpio.h ? ?| ? 18 +++++++++++++++++
> ?drivers/watchdog/bcm47xx_wdt.c ? ? ? ? ? ? ? | ? ?6 +++++
> ?9 files changed, 98 insertions(+), 2 deletions(-)
>
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 653da62..bdb0341 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -100,6 +100,10 @@ config BCM47XX
> ? ? ? ?select SSB_EMBEDDED
> ? ? ? ?select SSB_B43_PCI_BRIDGE if PCI
> ? ? ? ?select SSB_PCICORE_HOSTMODE if PCI
> + ? ? ? select BCMA
> + ? ? ? select BCMA_HOST_EMBEDDED
> + ? ? ? select BCMA_DRIVER_MIPS
> + ? ? ? select BCMA_PCICORE_HOSTMODE

I'm not involved in development for embedded devices but I believe
that space is quite important for them.

You force compiling both: ssb and bcma for every device using bcm47xx.
I think ppl may want to compile only one bus driver.

-- 
Rafa?
