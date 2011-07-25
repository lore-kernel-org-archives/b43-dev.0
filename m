From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 25 Jul 2011 23:54:00 +0200
Subject: Problem with understanding DMA on some machines (known solution!),
	specs needed?
Message-ID: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey, I've finally came back to my 14e4:4329 with not working DMA. I
hoped disabling parity will make my DMA work, but this didn't do the
trick.

The card is PCI one with following params:
SSB 2.4
BCM4321
SPROM: 4
PMU: ?
Core rev: 11
PHY: N / 1
Radio: 0x2055 / 4

I've dumped wl and b43 ops and compare them. Noticed something
interesting in DMA setup.

wl:
 read32 0xc0200200 -> 0x00000000
write32 0xc0200200 <- 0x00000801
write32 0xc0200208 <- 0x5f310000
write32 0xc020020c <- 0x00000000

b43:
write32 0xc0200200 <- 0x00000801
write32 0xc0200208 <- 0x198b2000
write32 0xc020020c <- 0x80000000

Can you see the difference? wl does not put routing (translation) bits
in 0x20c@all. 0x208 on the other hand is suspicious.

It looks that wl is:
1) Using 0x40000000 routing instead of 0x80000000 routing
2) wl puts routing bits in addrlo instead of addrhi

According to the specs, routing goes always to the addrhi:

> The address 2 field is as follows (address 1 contains all address bits):
> Mask 	Function
> 0x3FFFFFFF 	Address
> 0xC0000000 	Routing

So I've hacked b43 to use 0x40000000 as translation and to put routing
in addrlo. Wohoo, this helped! For the first time I saw packets using
DMA engine.


Now, the question: when for real we should use such a solution?

Larry, could you check your driver? Can you see anything about this?
Is this maybe PCI (not PCIe!) specific?

-- 
Rafa?
