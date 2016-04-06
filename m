From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 6 Apr 2016 17:17:24 +0200
Subject: [PATCH] PCI: Add Broadcom 4331 reset quirk to prevent IRQ storm
In-Reply-To: <20160406133151.GA4976@localhost>
References: <811539524df8b5ed7e2817c1c3e3e08560c97964.1459275517.git.lukas@wunner.de>
 <20160405194015.GC15353@localhost> <20160405214945.1214e13b@wiggum>
 <20160406133151.GA4976@localhost>
Message-ID: <20160406171724.2b7b070b@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lukas Wunner <lukas@wunner.de>, linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Matthew Garrett <mjg59@srcf.ucam.org>

On Wed, 6 Apr 2016 08:31:51 -0500
Bjorn Helgaas <helgaas@kernel.org> wrote:

> Even for interrupts, it's only a 90% solution because we do still get
> a few interrupts before the quirk runs.  There may not be enough to
> trigger the "IRQ nobody cared" check,

If no driver requested the shared interrupt yet, it should be disabled
in the interrupt controller. So the interrupts do not reach the CPU.
The interrupt storm (on the CPU) starts as soon as some driver
that shares the interrupt with b43 requests and thus enables the
interrupt. And that always happens after the PCI fixup. Thus this is
safe.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160406/a02d184f/attachment.sig>
