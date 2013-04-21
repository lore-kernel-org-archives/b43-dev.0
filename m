From: Piotras <piotras@gmail.com>
Date: Sun, 21 Apr 2013 15:27:49 +0100
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130421083822.5d6599e3@milhouse>
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
Message-ID: <CAFzhf4p=x9PTzxjTGVn0P_UDCz=1Za+1AV761Hbou=5mWy5Ycg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Michael,

Based on BCM440X Programmer's Reference Guide that may or may not
apply to DMA processor used in WLAN chipsets, B43_DMA32_RXSTATUS may
be updated by hardware to point to the same descriptor as
B43_DMA32_RXINDEX.

For DMA processor this means that no more free descriptors are
available. However b43_dma_rx assumes no data needs to be processed
(see how ring->current_slot is updated and used in loop condition on
next interrupt). This could explain stalls.

I don't expect that changing loop condition is sufficient, as without
dropping some packets we will not prevent FIFO overruns.


Regards,

Piotr

On Sun, Apr 21, 2013 at 7:38 AM, Michael B?sch <m@bues.ch> wrote:
> On Sat, 20 Apr 2013 23:23:54 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
>
>> Isn't that exactly what we do in b43_dma_rx? The initial rx descriptor
>> index is just to make the device to start. Theoretically you could get
>> into a fault situation if the device succeds in using up all descriptors
>> between b43_dma_rx_discard (added by my patch) and the call to b43_dma_rx.
>> Because then you could start reading the same packet as the device is
>> writing to.
>
> Yes this is true.
> And thus I'm currently unsure why we need this patch at all.
> _Why_ does the DMA stall as soon as the ring is filled up?
>
> --
> Michael
