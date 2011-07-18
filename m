From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 18 Jul 2011 22:14:50 +0200
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
Message-ID: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

When using DMA on one of my BCM4321s and BCM43224 or BCM43225 I don't
get a single RX IRQ.

Doing scanning requests sends TX packets to the hardware, and the
ucode generates IRQs for confirming transmitted packets. RX does not
seem to work however. I expected to see "native" beacons, or response
to the scanning request.

Do you have idea what may be wrong, where should I look at? So far
I've discovered (from looking at MMIO dumps) that:
1) wl uses 38 as B43_DMA0_RX_FRAMEOFFSET (instead of our 30)
2) wl enables channel with 0x801, not just 0x1 (specs say 0x800 is
Parity Disable - Not on all units)

I've implemented both changes in b43, it didn't help.

-- 
Rafa?
