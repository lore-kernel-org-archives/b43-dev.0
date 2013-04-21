From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 10:22:51 +0200 (CEST)
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
Message-ID: <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sun, 21 Apr 2013, Michael B?sch wrote:

> On Sat, 20 Apr 2013 23:23:54 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
> 
> > Isn't that exactly what we do in b43_dma_rx? The initial rx descriptor 
> > index is just to make the device to start. Theoretically you could get 
> > into a fault situation if the device succeds in using up all descriptors 
> > between b43_dma_rx_discard (added by my patch) and the call to b43_dma_rx. 
> > Because then you could start reading the same packet as the device is 
> > writing to.
> 
> Yes this is true.
> And thus I'm currently unsure why we need this patch at all.
> _Why_ does the DMA stall as soon as the ring is filled up?


The device stops sending when it hits the rx index. Thats what rx index 
is, the address after the last slot the device is allowed to use. In the 
driver it is used as the last slot handled, so if the device would 
continue it will overwrite slots that hasn't been read. So you need to 
handle that in someway. One way is using my patch, another is to never let 
it hit rx index (as Piotras is working on).

This is how I see the problem:
1. the driver get an interrupt that there is data in the ring, the 
interrupt thread is scheduled
2. the interrupt thread (in b43_dma_rx) checks how many slots that the 
device has filled
3. it then loops through them and sends the packets in the ring to the 
kernel (dma_rx). It also allocates new skb_buf:s
4. after all slots has been handled the rx index is updated
5. In the meantime the device continues to pump data in to the ring
6. If the cpu is slow, and we don't have that many slots, there is a 
chance that the device have time to loop through all and hitting rx index. 
If we don't update the rx index in such a situation the device will never 
continue. Since it has hit the end of available descriptors, it doesn't 
have much of a choice, where would it write next?

Normally the device never hit the rx index, and in such case it will just 
use the next descriptor in the table. If it finds a descriptor with END 
set, it will jump back to the beginning. Forming the ring

//Thomy 
