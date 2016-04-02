From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 2 Apr 2016 09:30:29 +0200
Subject: [PATCH] PCI: Add Broadcom 4331 reset quirk to prevent IRQ storm
In-Reply-To: <20160401224646.GA11281@wunner.de>
References: <E1akxli-00030z-BC@bombadil.infradead.org>
 <20160331231346.GA7469@localhost>
 <20160401224646.GA11281@wunner.de>
Message-ID: <20160402093029.3dc29699@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lukas Wunner <lukas@wunner.de>
Cc: Chris Bainbridge <chris.bainbridge@gmail.com>, linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Sat, 2 Apr 2016 00:46:46 +0200
Lukas Wunner <lukas@wunner.de> wrote:

> Hi Chris,
> 
> On Fri, Apr 01, 2016 at 12:13:46AM +0100, Chris Bainbridge wrote:
> > On Tue, Mar 29, 2016 at 07:41:30PM +0200, Lukas Wunner wrote:  
> > > Broadcom 4331 wireless cards built into Apple Macs unleash an IRQ storm
> > > on boot until they are reset, causing spurious interrupts if the IRQ is
> > > shared. Apparently the EFI bootloader enables the device and does not
> > > disable it before passing control to the OS. The bootloader contains a
> > > driver for the wireless card which allows it to phone home to Cupertino.
> > > This is used for Internet Recovery (download and install OS X images)
> > > and probably also for Back to My Mac (remote access, RFC 6281) and to
> > > discover stolen hardware.
> > > 
> > > The issue is most pronounced on 2011 and 2012 MacBook Pros where the IRQ
> > > is shared with 3 other devices (Light Ridge Thunderbolt controller, SDXC
> > > reader, HDA card on discrete GPU). As soon as an interrupt handler is
> > > installed for one of these devices, the ensuing storm of spurious IRQs
> > > causes the kernel to disable the IRQ and switch to polling. This lasts
> > > until the b43 driver loads and resets the device.
> > > 
> > > Loading the b43 driver first is not always an option, in particular with
> > > the Light Ridge Thunderbolt controller: The PCI hotplug IRQ handler gets
> > > installed early on because it is built in, unlike b43 which is usually
> > > a module.
> > > 
> > > Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=79301
> > > Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=895951
> > > Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1009819
> > > Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1149632  
> > 
> > Should also fix https://bugzilla.kernel.org/show_bug.cgi?id=111781 ?
> > Given that this is a serious bug that can corrupt filesystems it would
> > be good to see the fix in stable too.  
> 
> I cannot reproduce this particular issue on my MBP9,1 even though it
> is architecturally very similar to your MBP10,2. I tested it with
> "iommu=force intel_iommu=on", blacklisted b43 and stressed the machine
> a bit with kernel compiles. No issues.

I think you will have to stress the wireless, not the kernel.
Enable iommu and let the wireless receive packets that go through the
hw filters. If you have a calm network and nobody sends data to you,
the card won't write anything to DMA. (This all depends on how the
firmware configured the filters).

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160402/751f8a10/attachment.sig>
