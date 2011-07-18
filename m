From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Jul 2011 00:39:10 +0200
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <20110718204146.706dc5b2@Nokia-N900>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<20110718204146.706dc5b2@Nokia-N900>
Message-ID: <CACna6rxYEuOMT1EZP6D46c+YAHBhhTXdDmaum+HMwtPT0ZYCfQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 18 lipca 2011 22:41 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Mon, 18 Jul 2011 22:14:50 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> When using DMA on one of my BCM4321s and BCM43224 or BCM43225 I don't
>> get a single RX IRQ.
>>
>> Doing scanning requests sends TX packets to the hardware, and the
>> ucode generates IRQs for confirming transmitted packets. RX does not
>> seem to work however. I expected to see "native" beacons, or response
>> to the scanning request.
>>
>> Do you have idea what may be wrong, where should I look at?
>
> Is wl still using the same dma engine for
> RX as older versions did? (what was it? the first?)

Yes. That's what wl does:

1) Disabling DMA engines (RX part)
write32 0xfaafc220 <- 0x00000000
 read32 0xfaafc230 -> 0x00000000

2) Enabling DMA engines (RX part)
 read32 0xfaafc220 -> 0x00000040
write32 0xfaafc220 <- 0x0000084d CTL: [38 << 1 (OFFSET) | 0x1 (EN) |
0x800 (PARITY)]
write32 0xfaafc228 <- 0x18948000 LO: [lo addr & ~routing_bits]
write32 0xfaafc22c <- 0x80000000 HI: [routing & ~ROUT_MASK | routing]

(improved) b43 does:

write32 0xfaafc220 <- 0x0000084d CTL
write32 0xfaafc228 <- 0x17b70000 LO
write32 0xfaafc22c <- 0x80000000 HI
write32 0xfaafc224 <- 0x00000400 STOP IDX

-- 
Rafa?
