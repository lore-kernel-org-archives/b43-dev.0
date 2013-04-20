From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sat, 20 Apr 2013 22:16:26 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130420215056.3d0b0dbb@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
Message-ID: <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sat, 20 Apr 2013, Michael B?sch wrote:

> On Sat, 20 Apr 2013 21:47:10 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
> 
> > > And I think you need to set ring->current_slot to the value of ring->ops->get_current_slot().
> > > Not 100% sure, though, since it is years since I worked on that code.
> > > 
> > Is that really needed? They should already be the same since the device 
> > has thrown the underflow interrupt
> 
> Hm not sure. But should be easy to verify.
I did check it in the beginning when I was testing the patch, just printed 
the indexes in the kernel log. But of course if there is a race condition
it could be hard to catch. Have used the patch for several weeks 
and several 100Gb now, so it does seem to work. 

The reason for getting this interrupt is that the current descriptor 
pointer (RXDPTR) has the same value as the descriptor index (RXINDEX). The 
descriptor index is set at the end of b43_dma_rx with 
ops->set_current_rxslot. At the next line, and with the same value, the 
ring->current slot is set. So in my opinion I don't need to set it. But I 
could have missed something.

BR,
Thommy
