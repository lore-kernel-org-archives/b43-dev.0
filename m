From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 13 Jul 2011 22:56:16 +0200
Subject: [PATCH 06/11] bcma: add serial console support
In-Reply-To: <1310209563-6405-7-git-send-email-hauke@hauke-m.de>
References: <1310209563-6405-1-git-send-email-hauke@hauke-m.de>
	<1310209563-6405-7-git-send-email-hauke@hauke-m.de>
Message-ID: <CAOiHx==5TdoOw0rt-GhnRG_gKCaWpcBE=yhRAe5ufu01tp_SnQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: ralf@linux-mips.org, linux-wireless@vger.kernel.org, zajec5@gmail.com, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com, arnd@arndb.de, julian.calaby@gmail.com, sshtylyov@mvista.com

On 9 July 2011 13:05, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> This adds support for serial console to bcma, when operating on an SoC.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
> ?drivers/bcma/bcma_private.h ? ? ? ? ? | ? ?6 +++
> ?drivers/bcma/driver_chipcommon.c ? ? ?| ? 64 +++++++++++++++++++++++++++++++++
> ?drivers/bcma/driver_mips.c ? ? ? ? ? ?| ? ?9 +++++
> ?include/linux/bcma/bcma_driver_mips.h | ? 11 ++++++
> ?4 files changed, 90 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/bcma/bcma_private.h b/drivers/bcma/bcma_private.h
> index 830386c..92ec671 100644
> --- a/drivers/bcma/bcma_private.h
> +++ b/drivers/bcma/bcma_private.h
> @@ -26,6 +26,12 @@ int __init bcma_bus_scan_early(struct bcma_bus *bus,
> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? struct bcma_device *core);
> ?void bcma_init_bus(struct bcma_bus *bus);
>
> +/* driver_chipcommon.c */
> +#ifdef CONFIG_BCMA_DRIVER_MIPS
> +extern int bcma_chipco_serial_init(struct bcma_drv_cc *cc,
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?struct bcma_drv_mips_serial_port *ports);
> +#endif /* CONFIG_BCMA_DRIVER_MIPS */
> +
> ?#ifdef CONFIG_BCMA_HOST_PCI
> ?/* host_pci.c */
> ?extern int __init bcma_host_pci_init(void);
> diff --git a/drivers/bcma/driver_chipcommon.c b/drivers/bcma/driver_chipcommon.c
> index 70321c6..88533ca 100644
> --- a/drivers/bcma/driver_chipcommon.c
> +++ b/drivers/bcma/driver_chipcommon.c
> @@ -92,3 +92,67 @@ u32 bcma_chipco_gpio_polarity(struct bcma_drv_cc *cc, u32 mask, u32 value)
> ?{
> ? ? ? ?return bcma_cc_write32_masked(cc, BCMA_CC_GPIOPOL, mask, value);
> ?}
> +
> +#ifdef CONFIG_BCMA_DRIVER_MIPS
> +int bcma_chipco_serial_init(struct bcma_drv_cc *cc,
> + ? ? ? ? ? ? ? ? ? ? ? ? ? struct bcma_drv_mips_serial_port *ports)
> +{
> + ? ? ? int nr_ports = 0;
> + ? ? ? u32 plltype;
> + ? ? ? unsigned int irq;
> + ? ? ? u32 baud_base, div;
> + ? ? ? u32 i, n;
> + ? ? ? unsigned int ccrev = cc->core->id.rev;
> +
> + ? ? ? plltype = (cc->capabilities & BCMA_CC_CAP_PLLT);
> + ? ? ? irq = bcma_core_mips_irq(cc->core);
> +
> + ? ? ? if ((ccrev >= 11) && (ccrev != 15) && (ccrev != 20)) {
> + ? ? ? ? ? ? ? /* Fixed ALP clock */
> + ? ? ? ? ? ? ? baud_base = 20000000;
> + ? ? ? ? ? ? ? if (cc->capabilities & BCMA_CC_CAP_PMU) {
> + ? ? ? ? ? ? ? ? ? ? ? /* FIXME: baud_base is different for devices with a PMU */
> + ? ? ? ? ? ? ? ? ? ? ? WARN_ON(1);
> + ? ? ? ? ? ? ? }
> + ? ? ? ? ? ? ? div = 1;
> + ? ? ? ? ? ? ? if (ccrev >= 21) {
> + ? ? ? ? ? ? ? ? ? ? ? /* Turn off UART clock before switching clocksource. */
> + ? ? ? ? ? ? ? ? ? ? ? bcma_cc_write32(cc, BCMA_CC_CORECTL,
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?bcma_cc_read32(cc, BCMA_CC_CORECTL)
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?& ~BCMA_CC_CORECTL_UARTCLKEN);
> + ? ? ? ? ? ? ? }
> + ? ? ? ? ? ? ? /* Set the override bit so we don't divide it */
> + ? ? ? ? ? ? ? bcma_cc_write32(cc, BCMA_CC_CORECTL,
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?bcma_cc_read32(cc, BCMA_CC_CORECTL)
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?| BCMA_CC_CORECTL_UARTCLK0);
> + ? ? ? ? ? ? ? if (ccrev >= 21) {
> + ? ? ? ? ? ? ? ? ? ? ? /* Re-enable the UART clock. */
> + ? ? ? ? ? ? ? ? ? ? ? bcma_cc_write32(cc, BCMA_CC_CORECTL,
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?bcma_cc_read32(cc, BCMA_CC_CORECTL)
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?| BCMA_CC_CORECTL_UARTCLKEN);
> + ? ? ? ? ? ? ? }
> + ? ? ? } else
> + ? ? ? ? ? ? ? pr_err("serial not supported on this device ccrev: 0x%x\n",
> + ? ? ? ? ? ? ? ? ? ? ?ccrev);

Documentation/CodingStyle and again ;-)

> +
> + ? ? ? /* Determine the registers of the UARTs */
> + ? ? ? n = (cc->capabilities & BCMA_CC_CAP_NRUART);
> + ? ? ? for (i = 0; i < n; i++) {
> + ? ? ? ? ? ? ? void __iomem *cc_mmio;
> + ? ? ? ? ? ? ? void __iomem *uart_regs;
> +
> + ? ? ? ? ? ? ? cc_mmio = cc->core->bus->mmio +
> + ? ? ? ? ? ? ? ? ? ? ? ? (cc->core->core_index * BCMA_CORE_SIZE);

cc_mmio is constant for all uarts, so you should move it out of the
loop and calculate it once.

> + ? ? ? ? ? ? ? uart_regs = cc_mmio + BCMA_CC_UART0_DATA;
> + ? ? ? ? ? ? ? uart_regs += (i * 256);

Same for the uart_regs base. If you don't modify it at all you could
drop the cc_mmio variable (since you only need it to calculate
uart_regs) and

> +
> + ? ? ? ? ? ? ? nr_ports++;
> + ? ? ? ? ? ? ? ports[i].regs = uart_regs;

use here
 ? ? ? ? ? ? ? ports[i].regs = uart_regs + (i * 256);

This would make the code a bit cleaner IMHO.

> + ? ? ? ? ? ? ? ports[i].irq = irq;
> + ? ? ? ? ? ? ? ports[i].baud_base = baud_base;
> + ? ? ? ? ? ? ? ports[i].reg_shift = 0;
> + ? ? ? }
> +
> + ? ? ? return nr_ports;

Isn't n always the same as nr_ports? At least I don't see any case
where it could differ, so you should be safe when directly using
nr_ports instead of n.
