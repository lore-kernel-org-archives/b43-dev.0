From: Matt Fleming <matt@codeblueprint.co.uk>
Date: Thu, 2 Jun 2016 10:48:42 +0100
Subject: [PATCH] x86: Add early quirk to reset Apple AirPort card
In-Reply-To: <82c2548dffc6cfbc484b9111b1073f407c946061.1464477483.git.lukas@wunner.de>
References: <82c2548dffc6cfbc484b9111b1073f407c946061.1464477483.git.lukas@wunner.de>
Message-ID: <20160602094842.GF2658@codeblueprint.co.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lukas Wunner <lukas@wunner.de>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, Chris Milsted <cmilsted@redhat.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Andi Kleen <ak@linux.intel.com>, Michael Buesch <m@bues.ch>, Bjorn Helgaas <bhelgaas@google.com>, Konstantin Simanov <k.simanov@stlk.ru>, Bryan Paradis <bryan.paradis@gmail.com>, Andrew Worsley <amworsley@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, zajec5@gmail.com

On Sun, 29 May, at 01:35:28AM, Lukas Wunner wrote:
> The EFI firmware on Macs contains a full-fledged network stack for
> downloading OS X images from osrecovery.apple.com. Unfortunately
> on Macs introduced 2011 and 2012, EFI brings up the Broadcom 4331
> wireless card on every boot and leaves it enabled even after
> ExitBootServices has been called. The card continues to assert its IRQ
> line, causing spurious interrupts if the IRQ is shared. It also corrupts
> memory by DMAing received packets, allowing for remote code execution
> over the air. This only stops when a driver is loaded for the wireless
> card, which may be never if the driver is not installed or blacklisted.

[... Snip a very thorough changelog ...]

This patch looks fine to me from an EFI perspective.

Acked-by: Matt Fleming <matt@codeblueprint.co.uk>
