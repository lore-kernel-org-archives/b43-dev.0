From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 11:02:40 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
Message-ID: <CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 00:13 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 12 sierpnia 2011 12:15 u?ytkownik David Woodhouse
> <dwmw2@infradead.org> napisa?:
>> On some 64-bit DMA engines (my BCM4331, at least) with a ring buffer
>> that is not aligned to 8KiB, we often see bit 12 spuriously being set in
>> the B43_DMA64_RXSTATUS register. This will happen the first time the
>> ring fills and loops back to zero:
>>
>> [35755.186080] Read RXSTATUS 3f0 (makes offs 3f0, divided by 10 gives slot 3f
>> [35755.288366] Read RXSTATUS 1000 (makes offs 1000, divided by 10 gives slot 100
>> [35755.291007] ------------[ cut here ]------------
>> [35755.291041] WARNING: at drivers/net/wireless/b43/dma.c:1700 b43_dma_rx+0x5e/0x2df [b43]()
>> ?...
>> [35766.745374] b43-phy41 debug: DMA RX: Dropping poisoned buffer.
>
> Interesting... below is the dump from ndiswrapper on BCM4331:
>
> R 4 1431.714843 2 0xb0600230 0x10000fb0 0x0 0
> R 4 1431.740035 2 0xb0600230 0x10000fc0 0x0 0
> R 4 1431.740050 2 0xb0600230 0x10000fc0 0x0 0
> R 4 1431.850216 2 0xb0600230 0x10000fd0 0x0 0
> R 4 1431.850229 2 0xb0600230 0x10000fd0 0x0 0
> R 4 1431.882151 2 0xb0600230 0x10000fe0 0x0 0
> R 4 1431.882164 2 0xb0600230 0x10000fe0 0x0 0
> R 4 1431.885822 2 0xb0600230 0x10000ff0 0x0 0
> R 4 1431.885835 2 0xb0600230 0x10000ff0 0x0 0
> R 4 1431.896775 2 0xb0600230 0x10000000 0x0 0
> R 4 1431.896790 2 0xb0600230 0x10000000 0x0 0
> R 4 1431.915842 2 0xb0600230 0x10000010 0x0 0
> R 4 1431.915857 2 0xb0600230 0x10000010 0x0 0
> R 4 1431.917399 2 0xb0600230 0x10000020 0x0 0
> R 4 1431.917413 2 0xb0600230 0x10000020 0x0 0
>
> Broadcom uses bigger ring and they don't suffer from 0x1000 being ever
> set. I've filled the ring few times, 0x1000 was never set on going
> back to slot 0.

I've creased RX ring size to 256 (0xFF) from 64 (0x3F):

[40452.825252] Read RXSTATUS 0x10000f00 (makes offs 0xf00, divided by
0x10 gives slot 0xf0
[40452.838688] Read RXSTATUS 0x10000f10 (makes offs 0xf10, divided by
0x10 gives slot 0xf1
[40452.841106] Read RXSTATUS 0x10000f20 (makes offs 0xf20, divided by
0x10 gives slot 0xf2
[40452.843893] Read RXSTATUS 0x10000f30 (makes offs 0xf30, divided by
0x10 gives slot 0xf3
[40452.846386] Read RXSTATUS 0x10000f40 (makes offs 0xf40, divided by
0x10 gives slot 0xf4
[40452.848881] Read RXSTATUS 0x10000f50 (makes offs 0xf50, divided by
0x10 gives slot 0xf5
[40452.853260] Read RXSTATUS 0x10000f60 (makes offs 0xf60, divided by
0x10 gives slot 0xf6
[40452.855144] Read RXSTATUS 0x10000f70 (makes offs 0xf70, divided by
0x10 gives slot 0xf7
[40452.857195] Read RXSTATUS 0x10000f80 (makes offs 0xf80, divided by
0x10 gives slot 0xf8
[40452.859106] Read RXSTATUS 0x10000f90 (makes offs 0xf90, divided by
0x10 gives slot 0xf9
[40452.861587] Read RXSTATUS 0x10000fa0 (makes offs 0xfa0, divided by
0x10 gives slot 0xfa
[40452.865788] Read RXSTATUS 0x10000fb0 (makes offs 0xfb0, divided by
0x10 gives slot 0xfb
[40452.877345] Read RXSTATUS 0x10000fc0 (makes offs 0xfc0, divided by
0x10 gives slot 0xfc
[40454.693234] Read RXSTATUS 0x10000fd0 (makes offs 0xfd0, divided by
0x10 gives slot 0xfd
[40454.694962] Read RXSTATUS 0x10000fe0 (makes offs 0xfe0, divided by
0x10 gives slot 0xfe
[40455.430057] Read RXSTATUS 0x10000ff0 (makes offs 0xff0, divided by
0x10 gives slot 0xff
[40455.449115] Read RXSTATUS 0x10000000 (makes offs 0x0, divided by
0x10 gives slot 0x0
[40455.471817] Read RXSTATUS 0x10000010 (makes offs 0x10, divided by
0x10 gives slot 0x1
[40455.502368] Read RXSTATUS 0x10000020 (makes offs 0x20, divided by
0x10 gives slot 0x2
[40455.884527] Read RXSTATUS 0x10000030 (makes offs 0x30, divided by
0x10 gives slot 0x3
[40455.904890] Read RXSTATUS 0x10000040 (makes offs 0x40, divided by
0x10 gives slot 0x4

No more 0x1000 bit. Will test with other values.

-- 
Rafa?
