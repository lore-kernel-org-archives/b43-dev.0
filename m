From: Piotras <piotras@gmail.com>
Date: Sat, 20 Apr 2013 21:56:24 +0100
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
Message-ID: <CAFzhf4phH4DjNj8WGdFQdykTgQXSXQzKVQk+2FgZJAuN-mw5Hw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

(resending with some corrections after original email bounced)

Hi all,

I tested original version of this patch and it happen to fix the issue
on Linksys WRT54GL (based on Broadcom 5352 SoC). However I think that
the bug is still present.

After closer look it seems that DMA buffers may be used incorrectly in
b43_dma_rx. I don't have documentation for Broadcom WLAN chipsets, but
DMA engine used by for BCM440X apparently has similar design. Looking
at "RECEIVE DESCRIPTOR TABLE POINTER REGISTER"
(page 35 of http://www.broadcom.com/collateral/pg/440X-PG02-R.pdf),
B43_DMA32_RXINDEX should be left pointing after last valid descriptor
as initialized in dmacontroller_setup. Notice that the last valid
descriptor already has B43_DMA32_DCTL_DTABLEEND set, so DMA should
operate in a round-robin fashion.

B43_DMA32_RXINDEX is reprogrammed from b43_dma_rx, by calling
ops->set_current_rxslot(ring, slot). The patch from Thommy simply
reprogrammes the register back with the same value as initialized in
dmacontroller_setup.

I suspect that with set_current_rxslot call removed, the patch from
Thommy will not be necessary anymore. I'm currently testing such fix
and will report back in a few days.


Regards,

Piotr

On Sat, Apr 20, 2013 at 9:16 PM, Thommy Jakobsson <thommyj@gmail.com> wrote:
>
>
> On Sat, 20 Apr 2013, Michael B?sch wrote:
>
>> On Sat, 20 Apr 2013 21:47:10 +0200 (CEST)
>> Thommy Jakobsson <thommyj@gmail.com> wrote:
>>
>> > > And I think you need to set ring->current_slot to the value of ring->ops->get_current_slot().
>> > > Not 100% sure, though, since it is years since I worked on that code.
>> > >
>> > Is that really needed? They should already be the same since the device
>> > has thrown the underflow interrupt
>>
>> Hm not sure. But should be easy to verify.
> I did check it in the beginning when I was testing the patch, just printed
> the indexes in the kernel log. But of course if there is a race condition
> it could be hard to catch. Have used the patch for several weeks
> and several 100Gb now, so it does seem to work.
>
> The reason for getting this interrupt is that the current descriptor
> pointer (RXDPTR) has the same value as the descriptor index (RXINDEX). The
> descriptor index is set at the end of b43_dma_rx with
> ops->set_current_rxslot. At the next line, and with the same value, the
> ring->current slot is set. So in my opinion I don't need to set it. But I
> could have missed something.
>
> BR,
> Thommy
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
