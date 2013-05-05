From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 5 May 2013 17:43:25 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
Message-ID: <CACna6rwk0akD0x+sWTmjDDoaQqF0Y=NQ58rzqgZH92GCug6CeQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thommy Jakobsson <thommyj@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com, Larry.Finger@lwfinger.net

2013/5/5 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2013/4/23 Thommy Jakobsson <thommyj@gmail.com>:
>> Add handling of rx descriptor underflow. This fixes a fault that could
>> happen on slow machines, where data is received faster than the CPU can
>> handle. In such a case the device will use up all rx descriptors and
>> refuse to send any more data before confirming that it is ok. This
>> patch enables necessary interrupt to discover such a situation and will
>> handle them by dropping everything in the ring buffer.
>
> Thommy: does it mean firmware actually ignores what we write to the
> B43_DMA64_RXINDEX (recently renamed to the B43_DMA64_RXSTOPINDEX)? Is
> our set_current_rxslot and op64_set_current_rxslot (same for 32bit
> version) useless in this situation?

I've also grab some old logs from BCM4311 from wl driver.

DMA setup:
write32 0xfaafc210 <- 0x0000083d	B43_DMA32_RXCTL
write32 0xfaafc214 <- 0x5581e000	B43_DMA32_RXRING
write32 0xfaafc218 <- 0x00000100	B43_DMA32_RXINDEX

While running:

 read32 0xfaafc21c -> 0x02001018	B43_DMA32_RXSTATUS
 read32 0xfaafc21c -> 0x02001018	B43_DMA32_RXSTATUS
 read32 0xfaafc180 -> 0x0006230f	
 read32 0xfaafc184 -> 0x00000000	
write32 0xfaafc218 <- 0x00000118	B43_DMA32_RXINDEX

(...)

 read32 0xfaafc21c -> 0x02801020	B43_DMA32_RXSTATUS
 read32 0xfaafc21c -> 0x02801020	B43_DMA32_RXSTATUS
 read32 0xfaafc180 -> 0x00064c28	
 read32 0xfaafc184 -> 0x00000000	
write32 0xfaafc218 <- 0x00000120	B43_DMA32_RXINDEX

Interesting part is that they write amount of slots + slot index to
the B43_DMA32_RXINDEX (like 0x120 instead of 0x20). May be worth
investigating.

-- 
Rafa?
