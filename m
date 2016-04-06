From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 6 Apr 2016 23:36:08 +0200
Subject: [PATCH] PCI: Add Broadcom 4331 reset quirk to prevent IRQ storm
In-Reply-To: <20160406171724.2b7b070b@wiggum>
References: <811539524df8b5ed7e2817c1c3e3e08560c97964.1459275517.git.lukas@wunner.de>
 <20160405194015.GC15353@localhost> <20160405214945.1214e13b@wiggum>
 <20160406133151.GA4976@localhost> <20160406171724.2b7b070b@wiggum>
Message-ID: <20160406213608.GB12421@wunner.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?iso-8859-1?Q?B=FCsch?= <m@bues.ch>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Matthew Garrett <mjg59@srcf.ucam.org>

Hi,

On Wed, Apr 06, 2016 at 05:17:24PM +0200, Michael B?sch wrote:
> On Wed, 6 Apr 2016 08:31:51 -0500 Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> > Even for interrupts, it's only a 90% solution because we do still get
> > a few interrupts before the quirk runs.  There may not be enough to
> > trigger the "IRQ nobody cared" check,
> 
> If no driver requested the shared interrupt yet, it should be disabled
> in the interrupt controller. So the interrupts do not reach the CPU.
> The interrupt storm (on the CPU) starts as soon as some driver
> that shares the interrupt with b43 requests and thus enables the
> interrupt. And that always happens after the PCI fixup. Thus this is
> safe.

Yes, that is correct. I only see 67 interrupts for IRQ 17 with the
PCI quirk compiled in, all of which seem to come from the initialization
of pciehp, mmc and the hda sound card (which share the IRQ with b43 on my
machine).

Thanks,

Lukas
