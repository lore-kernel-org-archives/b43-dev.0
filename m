From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 11:01:11 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130421104440.48a3e006@milhouse>
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
Message-ID: <alpine.DEB.2.02.1304211046300.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sun, 21 Apr 2013, Michael B?sch wrote:

> On Sun, 21 Apr 2013 10:22:51 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
> 
> > The device stops sending when it hits the rx index. Thats what rx index 
> > is, the address after the last slot the device is allowed to use. In the 
> > driver it is used as the last slot handled, so if the device would 
> > continue it will overwrite slots that hasn't been read. So you need to 
> > handle that in someway. One way is using my patch, another is to never let 
> > it hit rx index (as Piotras is working on).
> 
> Yeah I get that. But why do we need to handle that by putting the stop index
> right beyond the ring? That requires us to get another RX interrupt before the
> ring fills up again. Why can't we set it so that the ring is fully writable again,
> but not set it beyond the ring boundary? I guess that is decrementing it by one,
> perhaps, honoring 0-index-wrapover.
>
All times that I had extra debugging on I always got a normal rx interrupt 
at the same time as the underflow interrupt. So the b43_dma_rx is called 
just after the b43_rx_discard, and the rx index is updated again to 
something better. Writing the rx index to index-1 was my initial plan, the 
only reason why I chose beyond the ring boundary was because thats how it 
is initialised. I never tried index-1, so I don't know if it works though. 
It did try to write the same value back again, but of course that didn't 
work.

Why is it set to to beyond the ring when it is initilised?

> > Normally the device never hit the rx index, and in such case it will just 
> > use the next descriptor in the table. If it finds a descriptor with END 
> > set, it will jump back to the beginning. Forming the ring
> 
> I know how that basic stuff works, because I wrote most of the code ;D
and yet you didn't fix this problem... =) Just kidding, to be honest I 
didn't understand what in my patch your question concerned. So I pretty 
much wrote down all I know about how it works (or how I think it works).

Thanks,
Thommy
