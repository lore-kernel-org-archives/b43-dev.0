From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 17:11:23 +0200 (CEST)
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
Message-ID: <alpine.DEB.2.02.1304211657110.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



> I had the same thought, but notice that you also need to update
> ring->current_slot in b43_dma_rx_discard.
> 
> When ring->current_slot update is missing (as in your original
> patch), you will introduce the same problem I hit by removing
> ops->set_current_rxslot(ring, slot) from b43_dma_rx (disabling
> RX underflow detection). Basically we break assumptions about
> ownership of descriptors (which descriptors are exclusively used
> by host and which can be written by DMA processor). So next time
> b43_dma_rx is called it may process descriptors that are updated
> by DMA processor at the same time (race condition).
Why would I update ring->current_slot? That should point where we are in 
the ring from the drivers perspective. Since that i always updated 
together with the rx index (set_current_rxslot) it will always be the same 
as the current index in hw (get_current_rxslot) in the b43_rx_discard. 
That is also where it should be.

It is true that I'll introduce a possibility for ownership problem with 
the original patch, but that will only last until the next time b43_dma_rx 
is called. Which is just after the b43_dma_rx_discard has 
exited since you always will get a rx interrupt at the same time as the 
underflow interrupt. This is also the case at each startup since rx index 
is initilised to the same thing as I used.

I have tested the index-1 that me and michael talked about, from the 
initial test is working just fine. Im running with only 8 rxslots to try 
to find any corner cases, so I see a lot of traffic drops though. This 
would also fix the ownership problem.

BTW, it is confusing that set and get current_rxslot doesn't updated and 
read the same register. 

About the FIFO errors I haven't looked at those at all. I did get some 
other errors when I pumped data at link speed into my router, but that was 
for TX.

//Thommy
