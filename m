From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Jul 2011 01:32:30 +0200
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <4E2497B6.9030105@lwfinger.net>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<4E2497B6.9030105@lwfinger.net>
Message-ID: <CACna6rw-0OpJ9fZdDjPsaJGibvZDXMYpDCVeKV00P_5y+YpS1A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 18 lipca 2011 22:29 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 07/18/2011 03:14 PM, Rafa? Mi?ecki wrote:
>>
>> When using DMA on one of my BCM4321s and BCM43224 or BCM43225 I don't
>> get a single RX IRQ.
>>
>> Doing scanning requests sends TX packets to the hardware, and the
>> ucode generates IRQs for confirming transmitted packets. RX does not
>> seem to work however. I expected to see "native" beacons, or response
>> to the scanning request.
>>
>> Do you have idea what may be wrong, where should I look at? So far
>> I've discovered (from looking at MMIO dumps) that:
>> 1) wl uses 38 as B43_DMA0_RX_FRAMEOFFSET (instead of our 30)
>> 2) wl enables channel with 0x801, not just 0x1 (specs say 0x800 is
>> Parity Disable - Not on all units)
>>
>> I've implemented both changes in b43, it didn't help.
>
> Does your MMIO dump from wl show the setup of the RX ring and the RX
> descriptors? There might be something special there.
>
> What are the differences between the BCM4321 that works, and the one that
> doesn't? That might provide a clue for me to check in the reference driver.

Larry, for now, can you check:

1) When wl does set parity (0x800) bit
2) Does newer wl always use 38 offset for RX header?

-- 
Rafa?
