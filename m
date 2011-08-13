From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 13 Aug 2011 21:18:54 +0100
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <CACna6ryM+QZ=x5sN8WjoZcZLFo6DiodWgq4Y8Dbm9Pm+Z64nsA@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<CACna6ryM+QZ=x5sN8WjoZcZLFo6DiodWgq4Y8Dbm9Pm+Z64nsA@mail.gmail.com>
Message-ID: <1313266735.25907.4.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 2011-08-13 at 21:06 +0200, Rafa? Mi?ecki wrote:
> W dniu 12 sierpnia 2011 12:27 u?ytkownik David Woodhouse
> <dwmw2@infradead.org> napisa?:
> > When the TX descriptor ring is not aligned to 8KiB on BCM4331, we have
> > to write the full address to the TXINDEX register or the DMA engine gets
> > confused after the first time we wrap round to slot zero.
> >
> > [ 7438.538945] Poked TX with address fe0 for slot 254
> > [ 7438.539077] Acking gen reason 20000000
> > [ 7438.539177] irq xmitstat 20fc1001 0000007f
> > [ 7438.607861] Poked TX with address 0 for slot 0
> > [ 7438.608567] Acking gen reason 20000000
> > [ 7438.608668] irq xmitstat 20fe1001 00000080
> > [ 7438.608709] irq xmitstat 20000011 00000080
> > [ 7438.608724] b43-phy2 debug: Out of order TX status report on DMA ring 1. Expected 256, but got 0
> > [ 7438.608739] irq xmitstat 20020011 00000080
> > [ 7438.608750] b43-phy2 debug: Out of order TX status report on DMA ring 1. Expected 256, but got 2
> > [ 7438.608765] irq xmitstat 20040011 00000080
> >
> > We write 0xff0 to the TXADDRLO register to see if the DMA engine is
> > capable of unaligned operation. If it *is*, then it'll have this problem
> > and we have to write the full address to TXINDEX. Comments in brcmsmac
> > indicate that the low 13 bits are required.
> >
> > If we're doing this, we *also* have to write to TXCTL to enable the DMA
> > engine *after* setting up the ring address.
> >
> > Signed-off-by: David Woodhouse <David.Woodhouse@intel.com>
> > --
> > I've made that change to the initialisation order of TXCTL vs.
> > TXADDR{HI,LO} unconditional; is there a reason not to?
> >
> > diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
> > index 82168f8..92dd6d9 100644
> > --- a/drivers/net/wireless/b43/dma.c
> > +++ b/drivers/net/wireless/b43/dma.c
> > @@ -225,8 +225,10 @@ static void op64_fill_descriptor(struct b43_dmaring *ring,
> >
> >  static void op64_poke_tx(struct b43_dmaring *ring, int slot)
> >  {
> > -       b43_dma_write(ring, B43_DMA64_TXINDEX,
> > -                     (u32) (slot * sizeof(struct b43_dmadesc64)));
> > +       u32 indexval = slot * sizeof(struct b43_dmadesc64);
> > +       if (ring->unaligned)
> > +               indexval |= (u32)ring->dmabase;
> > +       b43_dma_write(ring, B43_DMA64_TXINDEX, indexval);
> 
> Shouldn't this bit or be a numerical sum? I mean: +=
> Imagine you get dmabase like 0x1f310123 instead of some nice 0x1f310000

You won't. The ring is always going to be aligned to its own size, so a
simple mask is perfectly sufficient. Even if we go to an 8KiB ring
that'll still be true.

If we ever tried to use a ring that *wasn't* so aligned, I strongly
suspect we'd get other hardware problems like the ones that this patch
addresses.

> > @@ -704,9 +710,14 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
> >                            & B43_DMA64_TXADDREXT_MASK;
> >                        if (!parity)
> >                                value |= B43_DMA64_TXPARITYDISABLE;
> > -                       b43_dma_write(ring, B43_DMA64_TXCTL, value);
> > +
> > +                       b43_dma_write(ring, B43_DMA64_TXRINGLO, 0xff0);
> > +                       if (b43_dma_read(ring, B43_DMA64_TXRINGLO))
> > +                               ring->unaligned = 1;
> > +
> >                        b43_dma_write(ring, B43_DMA64_TXRINGLO, addrlo);
> >                        b43_dma_write(ring, B43_DMA64_TXRINGHI, addrhi);
> > +                       b43_dma_write(ring, B43_DMA64_TXCTL, value);
> 
> This needs testing on all the old hardware. Not sure if it's OK on
> older cards to change the order.

Definitely.

> John: please give this patch some more time for testing & discussion.

Does John normally pick up patches from the b43 list before they're sent
directly to him? If so, I'll be more careful in future...

-- 
dwmw2
