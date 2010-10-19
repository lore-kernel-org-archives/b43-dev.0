From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 19 Oct 2010 23:04:31 +0200
Subject: [PATCH] ssb: Clear RETRY_TIMEOUT in PCI Configuration
In-Reply-To: <4cbddbab.aeEgjpVFDD9GDTuy%Larry.Finger@lwfinger.net>
	(sfid-20101019_195602_250035_FFFFFFFFB4BFE748)
References: <4cbddbab.aeEgjpVFDD9GDTuy%Larry.Finger@lwfinger.net>
	(sfid-20101019_195602_250035_FFFFFFFFB4BFE748)
Message-ID: <1287522271.24543.4.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2010-10-19 at 12:55 -0500, Larry Finger wrote: 
> MMIO log traces obtained using the Broadcom wl hybrid driver show that
> the RETRY_TIMEOUT register (0x41) in PCI configuration space is cleared
> if non-zero. Similar code found in other drivers such as ipw2100 show
> this operation is needed to keep PCI Tx retries from interfering with
> C3 CPU state. There are no known cases where omission of this code has
> caused a problem, but this patch is offered just in case such a situation
> occurs.
> 
> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> ---
> 
> John,
> 
> No particular urgency for this patch.
> 
> Larry
> ---
> 
> Index: wireless-testing/drivers/ssb/driver_pcicore.c
> ===================================================================
> --- wireless-testing.orig/drivers/ssb/driver_pcicore.c
> +++ wireless-testing/drivers/ssb/driver_pcicore.c
> @@ -271,6 +271,7 @@ int ssb_pcicore_plat_dev_init(struct pci
>  static void ssb_pcicore_fixup_pcibridge(struct pci_dev *dev)
>  {
>  	u8 lat;
> +	u32 val;
>  
>  	if (dev->bus->ops != &ssb_pcicore_pciops) {
>  		/* This is not a device on the PCI-core bridge. */
> @@ -288,6 +289,12 @@ static void ssb_pcicore_fixup_pcibridge(
>  		return;
>  	}
>  
> +	/* Disable the RETRY_TIMEOUT register (0x41) to keep
> +	 * PCI Tx retries from interfering with C3 CPU state */
> +	pci_read_config_dword(pci_dev, 0x40, &val);
> +	if ((val & 0x0000ff00) != 0)
> +		pci_write_config_dword(pci_dev, 0x40, val & 0xffff00ff);
> +
>  	/* Enable PCI bridge BAR1 prefetch and burst */
>  	pci_write_config_dword(dev, SSB_BAR1_CONTROL, 3);


Hm, do you realize that this function will only be executed for PCI
devices that live on top of a native SSB bus? Is that intentional?

It won't affect normal broadcom wireless PCI devices.
It will only have an affect on a broadcom wireless PCI device that lives
behind a SSB->PCI bridge on an embedded device.

-- 
Greetings Michael.
