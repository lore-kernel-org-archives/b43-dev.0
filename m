From: David Woodhouse <dwmw2@infradead.org>
Date: Tue, 19 Jul 2011 15:33:14 -0700
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
Message-ID: <1311114796.3062.9.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 2011-07-18 at 22:14 +0200, Rafa? Mi?ecki wrote:
> When using DMA on one of my BCM4321s and BCM43224 or BCM43225 I don't
> get a single RX IRQ.
> 
> Doing scanning requests sends TX packets to the hardware, and the
> ucode generates IRQs for confirming transmitted packets. RX does not
> seem to work however. I expected to see "native" beacons, or response
> to the scanning request.
> 
> Do you have idea what may be wrong, where should I look at? So far
> I've discovered (from looking at MMIO dumps) that:
> 1) wl uses 38 as B43_DMA0_RX_FRAMEOFFSET (instead of our 30)
> 2) wl enables channel with 0x801, not just 0x1 (specs say 0x800 is
> Parity Disable - Not on all units)
> 
> I've implemented both changes in b43, it didn't help.

The other thing I observed that under ndiswrapper, the Windows driver
(for BCM4331) was writing the full physical address to the TX_INDEX
register, not an index at all.

Setup...
W 4 159.866820 1 0xb06002c8 0x1f86c000 0x0 0
W 4 159.866822 1 0xb06002cc 0x80000000 0x0 0
R 4 159.866827 1 0xb06002c0 0x0 0x0 0
W 4 159.866829 1 0xb06002c0 0x801 0x0 0

... and use:
W 4 197.207151 1 0xb06002c4 0x1f86c010 0x0 0

... and again later:
W 4 197.228596 1 0xb06002c4 0x1f86c020 0x0 0

Is that behaviour understood?

Btw, Rafa?, if you want to publish a git tree on git.infradead.org I can
give you an account there). Do you prefer username 'rafal' or 'zajec'...
or something different?

-- 
dwmw2
