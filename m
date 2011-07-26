From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 25 Jul 2011 19:35:40 -0500
Subject: Problem with understanding DMA on some machines (known solution!),
	specs needed?
In-Reply-To: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
Message-ID: <4E2E0BDC.5060504@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/25/2011 04:54 PM, Rafa? Mi?ecki wrote:
> Hey, I've finally came back to my 14e4:4329 with not working DMA. I
> hoped disabling parity will make my DMA work, but this didn't do the
> trick.
>
> The card is PCI one with following params:
> SSB 2.4
> BCM4321
> SPROM: 4
> PMU: ?
> Core rev: 11
> PHY: N / 1
> Radio: 0x2055 / 4
>
> I've dumped wl and b43 ops and compare them. Noticed something
> interesting in DMA setup.
>
> wl:
>   read32 0xc0200200 ->  0x00000000
> write32 0xc0200200<- 0x00000801
> write32 0xc0200208<- 0x5f310000
> write32 0xc020020c<- 0x00000000
>
> b43:
> write32 0xc0200200<- 0x00000801
> write32 0xc0200208<- 0x198b2000
> write32 0xc020020c<- 0x80000000
>
> Can you see the difference? wl does not put routing (translation) bits
> in 0x20c at all. 0x208 on the other hand is suspicious.
>
> It looks that wl is:
> 1) Using 0x40000000 routing instead of 0x80000000 routing
> 2) wl puts routing bits in addrlo instead of addrhi

Does the card report 32- or 64-bit addressing?
>
> According to the specs, routing goes always to the addrhi:
>
>> The address 2 field is as follows (address 1 contains all address bits):
>> Mask 	Function
>> 0x3FFFFFFF 	Address
>> 0xC0000000 	Routing
>
> So I've hacked b43 to use 0x40000000 as translation and to put routing
> in addrlo. Wohoo, this helped! For the first time I saw packets using
> DMA engine.

What wl is doing is exactly what you would expect for 32-bit DMA. Do a few test 
prints in b43_dma_init() to see what dmamask is on input and what value is returned.

> Now, the question: when for real we should use such a solution?

If we detect the number of DMA bits correctly, all else should be OK. It may be 
that we need a quirk for this card.

> Larry, could you check your driver? Can you see anything about this?
> Is this maybe PCI (not PCIe!) specific?

It could be. I don't recall anything as new as a Rev 11 802.11 core in PCI. I 
looked at it a bit, but I didn't see anything. There is no code that says do 
"this" if the card has a 4329 ID. There are some special 4329 routines, but none 
seem to have anything to do with DMA.

Larry
