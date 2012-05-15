From: John W. Linville <linville@tuxdriver.com>
Date: Tue, 15 May 2012 17:15:26 -0400
Subject: [PATCH 0/4] bcma: add PCI functions from brcmsmac
In-Reply-To: <4FAAED03.4090008@hauke-m.de>
References: <1335658732-24351-1-git-send-email-hauke@hauke-m.de>
 <4FAAED03.4090008@hauke-m.de>
Message-ID: <20120515211526.GG24572@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, arend@broadcom.com

On Thu, May 10, 2012 at 12:17:39AM +0200, Hauke Mehrtens wrote:
> On 04/29/2012 02:18 AM, Hauke Mehrtens wrote:
> > This patch series contains the functions regarding the PCIe core from 
> > brcmsmac for the supported PCIe core revisions.
> > 
> > Some of these functions have to be called on resume after suspend, but 
> > I do not know which or if all have to be called. I do not have a PCIe 
> > based device supported by brcmsmac, so I can not test this. Could 
> > someone which such a device do some tests and create a patch with the 
> > functions, which have to be called on resume.
> > 
> > The goal of theses patches is to remove the PCIe code from brcmsmac to 
> > get one step ahead in making brcmsmac support non pcie based devices.
> > 
> > This is based on wireless-testing/master.
> > 
> > Hauke Mehrtens (4):
> >   bcma: implement setting core clock mode to dynamic
> >   bcma: add bcma_core_pci_extend_L1timer
> >   bcma: add bcma_core_pci_fixcfg()
> >   bcma: add bcma_core_pci_config_fixup()
> > 
> >  drivers/bcma/core.c                  |    2 +-
> >  drivers/bcma/driver_pci.c            |   53 ++++++++++++++++++++++++++++++++--
> >  include/linux/bcma/bcma_driver_pci.h |   11 +++++++
> >  3 files changed, 63 insertions(+), 3 deletions(-)
> > 
> 
> Hi Rafa?,
> 
> could you give me an ack or a nack about this patch series and the other
> (ssb/bcma/bcm47xx: extend boardinfo and sprom).
> 
> I have tested them with b43 and brcmsmac on bcma and ssb based SoCs
> (bcm4718 + bcm43224, bcm4705 + 2x bcm4322, bcm4704 + bcm4318)  and have
> not found any problems.
> 
> Hauke

Rafa?, ping?

-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
