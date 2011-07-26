From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Jul 2011 09:24:26 +0200
Subject: Problem with understanding DMA on some machines (known
	solution!), specs needed?
In-Reply-To: <CACna6rydncQmXRCZWW9EQNQ7Agwj=Pdhn5fqLGVqWAk+yPBQ_Q@mail.gmail.com>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
	<4E2E0BDC.5060504@lwfinger.net>
	<CACna6rydncQmXRCZWW9EQNQ7Agwj=Pdhn5fqLGVqWAk+yPBQ_Q@mail.gmail.com>
Message-ID: <CACna6rxk1T_UCTeAsz5tAKOCE=BdNNCep6d+R5gEVwQiPqLspA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 26 lipca 2011 09:20 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> W dniu 26 lipca 2011 02:35 u?ytkownik Larry Finger
>> What wl is doing is exactly what you would expect for 32-bit DMA. Do a few
>> test prints in b43_dma_init() to see what dmamask is on input and what value
>> is returned.
>
> I don't think so. Below are wl ops with my comments:
>
> write32 0xc0200208<- 0x5f310000
> This is clearly some address ORed with 0x40000000. If you assume DMA
> is really a 32-bit one, this would mean writing address to 0x208 ==
> "Descriptor Stop Index".
>
> write32 0xc020020c<- 0x00000000
> In case of 32-bit DMA this would mean writing to "Transmit Status
> Word". It sounds more like read-only register.
>
> I think
> write32 0xc0200208<- 0x5f310000
> write32 0xc020020c<- 0x00000000
> is just writing to:
> Descriptor Ring Address (Low 32 Bits)
> Descriptor Ring Address (High 32 Bits)
> (and this is really 64-bit DMA with some additional special-support
> for this card / PCI cards).

OK, additional dumps from wl:

 read32 0xc0200200 -> 0x00000000
write32 0xc0200200 <- 0x00000801
write32 0xc0200208 <- 0x5f310000
write32 0xc020020c <- 0x00000000

 read32 0xc0200240 -> 0x00000000
write32 0xc0200240 <- 0x00000801
write32 0xc0200248 <- 0x5f318000
write32 0xc020024c <- 0x00000000

 read32 0xc0200280 -> 0x00000000
write32 0xc0200280 <- 0x00000801
write32 0xc0200288 <- 0x5f31c000
write32 0xc020028c <- 0x00000000

 read32 0xc02002c0 -> 0x00000000
write32 0xc02002c0 <- 0x00000801
write32 0xc02002c8 <- 0x5cb90000
write32 0xc02002cc <- 0x00000000

 read32 0xc0200220 -> 0x00000040
write32 0xc0200220 <- 0x0000084d
write32 0xc0200228 <- 0x5f314000
write32 0xc020022c <- 0x00000000
write32 0xc0200224 <- 0x00000400

wl enables TX channels on DMA engines: 0x200, 0x240, 0x280, 0x2c0.
Then it enables RX channel on channel 0x200 using 0x20 offset.

I'm 100% sure it's 64-bit DMA.

-- 
Rafa?
