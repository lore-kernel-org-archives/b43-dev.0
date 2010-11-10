From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 10 Nov 2010 22:52:33 +0100
Subject: [PATCH] ssb: Clear RETRY_TIMEOUT in PCI Configuration
In-Reply-To: <20101110173725.GA2714@tuxdriver.com>
	(sfid-20101110_184648_750982_7D0212EC)
References: <4cbddbab.aeEgjpVFDD9GDTuy%Larry.Finger@lwfinger.net>
	<1287522271.24543.4.camel@maggie>
	<AANLkTikcKHAKQ9x1C5pyQiY5aOf4jGFcC_-af67YDg9S@mail.gmail.com>
	<1289344415.11453.1.camel@maggie> <20101110173725.GA2714@tuxdriver.com>
	(sfid-20101110_184648_750982_7D0212EC)
Message-ID: <1289425953.17777.5.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 2010-11-10 at 12:37 -0500, John W. Linville wrote: 
> On Wed, Nov 10, 2010 at 12:13:35AM +0100, Michael B?sch wrote:
> > On Wed, 2010-11-10 at 00:09 +0100, Rafa? Mi?ecki wrote: 
> > > 2010/10/19 Michael B?sch <mb@bu3sch.de>:
> > > > On Tue, 2010-10-19 at 12:55 -0500, Larry Finger wrote:
> > > >> MMIO log traces obtained using the Broadcom wl hybrid driver show that
> > > >> the RETRY_TIMEOUT register (0x41) in PCI configuration space is cleared
> > > >> if non-zero. Similar code found in other drivers such as ipw2100 show
> > > >> this operation is needed to keep PCI Tx retries from interfering with
> > > >> C3 CPU state. There are no known cases where omission of this code has
> > > >> caused a problem, but this patch is offered just in case such a situation
> > > >> occurs.
> > > >>
> > > >> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> > > >> ---
> > > >>
> > > >> John,
> > > >>
> > > >> No particular urgency for this patch.
> > > >>
> > > >> Larry
> > > >> ---
> > > >>
> > > >> Index: wireless-testing/drivers/ssb/driver_pcicore.c
> > > >> ===================================================================
> > > >> --- wireless-testing.orig/drivers/ssb/driver_pcicore.c
> > > >> +++ wireless-testing/drivers/ssb/driver_pcicore.c
> > > >> @@ -271,6 +271,7 @@ int ssb_pcicore_plat_dev_init(struct pci
> > > >>  static void ssb_pcicore_fixup_pcibridge(struct pci_dev *dev)
> > > >>  {
> > > >>       u8 lat;
> > > >> +     u32 val;
> > > >>
> > > >>       if (dev->bus->ops != &ssb_pcicore_pciops) {
> > > >>               /* This is not a device on the PCI-core bridge. */
> > > >> @@ -288,6 +289,12 @@ static void ssb_pcicore_fixup_pcibridge(
> > > >>               return;
> > > >>       }
> > > >>
> > > >> +     /* Disable the RETRY_TIMEOUT register (0x41) to keep
> > > >> +      * PCI Tx retries from interfering with C3 CPU state */
> > > >> +     pci_read_config_dword(pci_dev, 0x40, &val);
> > > >> +     if ((val & 0x0000ff00) != 0)
> > > >> +             pci_write_config_dword(pci_dev, 0x40, val & 0xffff00ff);
> > > >> +
> > > >>       /* Enable PCI bridge BAR1 prefetch and burst */
> > > >>       pci_write_config_dword(dev, SSB_BAR1_CONTROL, 3);
> > > >
> > > >
> > > > Hm, do you realize that this function will only be executed for PCI
> > > > devices that live on top of a native SSB bus? Is that intentional?
> > > >
> > > > It won't affect normal broadcom wireless PCI devices.
> > > > It will only have an affect on a broadcom wireless PCI device that lives
> > > > behind a SSB->PCI bridge on an embedded device.
> > > 
> > > Is this patch needed? Shouldn't this be replaced by second version
> > > affecting "normal devices"?
> > > 
> > > I can see both applied to wireless-testing.
> > 
> > They certainly should _not_ be applied both.
> > John, some fixing is needed. Please remove this patch.
> 
> Does the other patch handle this case (i.e. devices behind SSB->PCI
> bridge)?  If so, can you explain how?

Yes. For embedded it goes:

native-ssb -> pci-core -> pci-bridge module -> wireless ssb

For PCI it goes:

native pci bus -> pci-bridge module -> wireless ssb

So you see that the pci bridge module is the bus glue for all SSB
based PCI devices. So we do not need the workaround in the pci-core
driver code. Just in the pci-bridge code (which is 
drivers/ssb/pcihost_wrapper.c)

> It looks to me like the code
> in ssb_pcihost_register is only called for PCI-attached b43 (or b44)
> devices.

Yeah. But devices connected to the ssb-pci-core _are_ PCI attached
devices.

> Or are you saying the RETRY_TIMEOUT change is inappropriate for a
> device behind an SSB->PCI bridge?

No. But we already handle that, because the glue code
(pcihost_wrapper.c) is used for both types.

-- 
Greetings Michael.
