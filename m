From: Piotras <piotras@gmail.com>
Date: Sun, 21 Apr 2013 15:46:03 +0100
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304211410460.19161@kelly.ryd.net>
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
Message-ID: <CAFzhf4pETgKBFQ+6J1cp5Lr0VLipOw2MbRtev5nXc9VEdBASyA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Apr 21, 2013 at 1:12 PM, Thommy Jakobsson <thommyj@gmail.com> wrote:
>
>
> On Sun, 21 Apr 2013, Michael B?sch wrote:
>
>> On Sun, 21 Apr 2013 11:01:11 +0200 (CEST)
>> Thommy Jakobsson <thommyj@gmail.com> wrote:
>>
>> > Why is it set to to beyond the ring when it is initilised?
>>
>> That's what broadcom does in their implementation. I guess that's the only reason.
>>
> Check, I'll give index-1 a go. It should be quite obvious if it works or
> not.

Thommy,

I had the same thought, but notice that you also need to update
ring->current_slot in b43_dma_rx_discard.

When ring->current_slot update is missing (as in your original
patch), you will introduce the same problem I hit by removing
ops->set_current_rxslot(ring, slot) from b43_dma_rx (disabling
RX underflow detection). Basically we break assumptions about
ownership of descriptors (which descriptors are exclusively used
by host and which can be written by DMA processor). So next time
b43_dma_rx is called it may process descriptors that are updated
by DMA processor at the same time (race condition).

I guess the following could be used to mark all descriptors for DMA
use from RX underflow interrupt or whenever we decide that number of
free descriptors is too low (not tested):

  slot = prev_slot(ring, ops->get_current_rxslot(ring));
  wmb();
  ops->set_current_rxslot(ring, slot);
  ring->current_slot = slot;

The above code simply puts back all the already filled descriptors
back for DMA processor to be overwritten with new data.

I'm still concerned about FIFO overruns. When descriptor underflow
condition occurs while CPU is busy with b43_dma_rx, we still wait for
b43_dma_rx to finish processing all received packets before any
descriptors become available for DMA to use. Depending on FIFO size
and CPU load we may still hit fatal receive FIFO underflow error.
This should cause driver to reset (possible explanation of why
"discards" and "slot_usage" files disappeared when Richlv tested your
patch in https://dev.openwrt.org/ticket/7552#comment:94).

I suspect that driver reset after FIFO underflow interrupt triggers
is not handled correctly, but not sure why. Possibly this is not
expected by hostapd, so it needs restart?

Not sure if FIFO overruns are really an issue and how to prevent them.
Maybe RX underflow should be handled in top half and reprogram device
to suspend receives (is this possible)? Or maybe we could clean and
set B43_DMA32_RXENABLE bit in B43_DMA32_RXCTL to reset DMA channel
without resetting the driver?


Ideas?

Piotr


>
> //thommy
