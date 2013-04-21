From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 16:59:51 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAFzhf4pETgKBFQ+6J1cp5Lr0VLipOw2MbRtev5nXc9VEdBASyA@mail.gmail.com>
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
 <alpine.DEB.2.02.1304211046300.19161@kelly.ryd.net>
 <20130421112118.627a1f7f@milhouse>
 <alpine.DEB.2.02.1304211410460.19161@kelly.ryd.net>
 <CAFzhf4pETgKBFQ+6J1cp5Lr0VLipOw2MbRtev5nXc9VEdBASyA@mail.gmail.com>
Message-ID: <20130421165951.59bc58c8@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 15:46:03 +0100
Piotras <piotras@gmail.com> wrote:

> On Sun, Apr 21, 2013 at 1:12 PM, Thommy Jakobsson <thommyj@gmail.com> wrote:
> >
> >
> > On Sun, 21 Apr 2013, Michael B?sch wrote:
> >
> >> On Sun, 21 Apr 2013 11:01:11 +0200 (CEST)
> >> Thommy Jakobsson <thommyj@gmail.com> wrote:
> >>
> >> > Why is it set to to beyond the ring when it is initilised?
> >>
> >> That's what broadcom does in their implementation. I guess that's the only reason.
> >>
> > Check, I'll give index-1 a go. It should be quite obvious if it works or
> > not.
> 
> Thommy,
> 
> I had the same thought, but notice that you also need to update
> ring->current_slot in b43_dma_rx_discard.

I don't think so.
We don't modify the descriptor pointer, but the stop index.

> I guess the following could be used to mark all descriptors for DMA
> use from RX underflow interrupt or whenever we decide that number of
> free descriptors is too low (not tested):
> 
>   slot = prev_slot(ring, ops->get_current_rxslot(ring));
>   wmb();
>   ops->set_current_rxslot(ring, slot);

get_current_rxslot() reads a different register than set_current_rxslot().

get_current_rxslot() returns the descriptor pointer that the device is pointing to.
set_current_rxslot() sets the _stop_ index.
Yes, at least the last one is misnamed.

> Not sure if FIFO overruns are really an issue and how to prevent them.
> Maybe RX underflow should be handled in top half and reprogram device
> to suspend receives (is this possible)?

What is "top half"?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/4c5e94bf/attachment.sig>
