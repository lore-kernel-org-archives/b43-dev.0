From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 18 Jul 2011 20:41:46 +0000
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
Message-ID: <20110718204146.706dc5b2@Nokia-N900>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 18 Jul 2011 22:14:50 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> When using DMA on one of my BCM4321s and BCM43224 or BCM43225 I don't
> get a single RX IRQ.
> 
> Doing scanning requests sends TX packets to the hardware, and the
> ucode generates IRQs for confirming transmitted packets. RX does not
> seem to work however. I expected to see "native" beacons, or response
> to the scanning request.
> 
> Do you have idea what may be wrong, where should I look at? 

Is wl still using the same dma engine for 
RX as older versions did? (what was it? the first?)

> I've discovered (from looking at MMIO dumps) that:
> 1) wl uses 38 as B43_DMA0_RX_FRAMEOFFSET (instead of our 30)

That could probably mean that the rx header format changed. or it's just an alignment fix of some sort. Not sure...
