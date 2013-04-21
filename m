From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 20:44:39 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAOTQ16LCWpAOndQsHBxN1-X_8SLpcU8V=mM41gvcNRocA=GhsA@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
 <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202305470.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
 <20130421083822.5d6599e3@milhouse>
 <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211951130.13040@kelly.ryd.net>
 <20130421202601.179eaf44@milhouse>
 <CAOTQ16LCWpAOndQsHBxN1-X_8SLpcU8V=mM41gvcNRocA=GhsA@mail.gmail.com>
Message-ID: <20130421204439.2fa95ecf@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 20:39:49 +0200
Thommy Jakobsson <thommyj@gmail.com> wrote:

> On Apr 21, 2013 8:26 PM, "Michael B?sch" <m@bues.ch> wrote:
> >
> > On Sun, 21 Apr 2013 20:07:39 +0200 (CEST)
> > Thommy Jakobsson <thommyj@gmail.com> wrote:
> >
> > > +void b43_dma_rx_discard(struct b43_dmaring *ring)
> > > +{
> > > +     int current_slot, previous_slot;
> > > +
> > > +     B43_WARN_ON(ring->tx);
> > > +
> > > +     /* Device has filled all buffers, drop all packets in buffers
> > > +     * and let TCP decrease speed.
> > > +     * Set index to one desc after the last one
> > > +     * so the device will see all slots as free again
> > > +     */
> > > +     /*
> > > +     *TODO: How to increase rx_drop in mac80211?
> > > +     */
> > > +     current_slot = ring->ops->get_current_rxslot(ring);
> > > +     previous_slot = prev_slot(ring, current_slot);
> > > +     ring->ops->set_current_rxslot(ring, previous_slot);
> >
> > Hmmm. While this does work (because the register and ring->current_slot
> contain the same
> > value at this point), I'd prefer if you write ring->current_slot - 1
> > to the stop-index-register.
> The reason for the interrupt is because the current index in the device is
> the same as the last index. That's why I read the value from the device.
> But I fix it, don't have a strong opinion about it.

Hm, ok. Well, sounds plausible. So you may keep it as-is.

But you should probably rename the function to b43_dma_handle_rx_overflow(),
because the discard does not work properly, if the function is called without
an overflow in progress.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/a18e0cde/attachment-0001.sig>
