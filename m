From: John W. Linville <linville@tuxdriver.com>
Date: Tue, 16 Nov 2010 15:40:25 -0500
Subject: [PATCH] ssb: Clear RETRY_TIMEOUT in PCI Configuration
In-Reply-To: <1289425953.17777.5.camel@maggie>
References: <4cbddbab.aeEgjpVFDD9GDTuy%Larry.Finger@lwfinger.net>
	<1287522271.24543.4.camel@maggie>
	<AANLkTikcKHAKQ9x1C5pyQiY5aOf4jGFcC_-af67YDg9S@mail.gmail.com>
	<1289344415.11453.1.camel@maggie>
	<20101110173725.GA2714@tuxdriver.com>
	<1289425953.17777.5.camel@maggie>
Message-ID: <20101116204024.GD10774@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Nov 10, 2010 at 10:52:33PM +0100, Michael B?sch wrote:
> On Wed, 2010-11-10 at 12:37 -0500, John W. Linville wrote: 

> > Does the other patch handle this case (i.e. devices behind SSB->PCI
> > bridge)?  If so, can you explain how?
> 
> Yes. For embedded it goes:
> 
> native-ssb -> pci-core -> pci-bridge module -> wireless ssb
> 
> For PCI it goes:
> 
> native pci bus -> pci-bridge module -> wireless ssb
> 
> So you see that the pci bridge module is the bus glue for all SSB
> based PCI devices. So we do not need the workaround in the pci-core
> driver code. Just in the pci-bridge code (which is 
> drivers/ssb/pcihost_wrapper.c)
> 
> > It looks to me like the code
> > in ssb_pcihost_register is only called for PCI-attached b43 (or b44)
> > devices.
> 
> Yeah. But devices connected to the ssb-pci-core _are_ PCI attached
> devices.
> 
> > Or are you saying the RETRY_TIMEOUT change is inappropriate for a
> > device behind an SSB->PCI bridge?
> 
> No. But we already handle that, because the glue code
> (pcihost_wrapper.c) is used for both types.

Thanks for the explanation!

-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
