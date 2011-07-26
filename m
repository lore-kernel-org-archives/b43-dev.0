From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 26 Jul 2011 17:49:47 +0200
Subject: Problem with understanding DMA on some machines (known
	solution!), specs needed?
In-Reply-To: <4E2EDE4A.8000805@lwfinger.net>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
	<CACna6rxk3oZLh+BzXWKq7BZ=8M55-OCRk86-Xw6Eo6PXXaVw0A@mail.gmail.com>
	<4E2EDE4A.8000805@lwfinger.net>
Message-ID: <20110726174947.7ced9aaa@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 26 Jul 2011 10:33:30 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 07/26/2011 03:24 AM, Rafa? Mi?ecki wrote:
> > W dniu 25 lipca 2011 23:54 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>  napisa?:
> >> Now, the question: when for real we should use such a solution?
> >>
> >> Larry, could you check your driver? Can you see anything about this?
> >> Is this maybe PCI (not PCIe!) specific?
> >
> > I've checked thread "Interesting 14e4:4321". It seems both: 14e4:4321
> > and 14e4:4322 are using PCI slot and both are not working in DMA mode.
> > I start believing it's PCI specific.
> >
> > If you take a look at current ssb code and defines:
> >> if (ssb_read32(dev, SSB_TMSHIGH)&  SSB_TMSHIGH_DMA64)
> >> 	return SSB_PCIE_DMA_H32;
> >> else
> >> 	return SSB_PCI_DMA;
> > You can see 0x80000000 (SSB_PCIE_DMA_H32) has actually "PCIE" in it's
> > name. This can be true that 0x80000000 is *only* for *64-bit DMA* on
> > *PCIe*.
> 
> That is almost correct. This time I found it. The pseudo code is:
> 
> dma_addr_lo = 0
> dma_addr_hi = 0
> if PCI || PCIe
> 	if PCIe && 64-bit DMA
> 		dma_addr_hi = 0x80000000
> 	else
> 		if chipID is 0x4322, 43221, 43231, or 43222
> 			dma_addr_lo = 0x80000000
> 		else
> 			dma_addr_lo = 0x40000000    <== your case

Oh dear. I was already wondering: Man, it can't be _that_ simple to just
look@a bit to determine something as trivial as the routing bits.
I'm glad Broadcom finally managed to fix this, though.

-- 
Greetings, Michael.
