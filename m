From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sat, 20 Apr 2013 23:01:39 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sat, 20 Apr 2013, Piotras wrote:

> Hi all,
> 
> I tested original version of this patch and it happen to fix the issue
> on Linksys WRT54GL (based on Broadcom 5352 SoC). However I think that
> the original cause is still present.
> 
> After closer look it seems that DMA buffers may be used incorrectly in
> b43_dma_rx. I don't have documentation for Broadcom WLAN chipsets, but
> DMA engine used by for BCM440X apparently has similar design. Looking
> at "RECEIVE DESCRIPTOR TABLE POINTER REGISTER"
> (page 35 of http://www.broadcom.com/collateral/pg/440X-PG02-R.pdf),
> B43_DMA32_RXINDEX should be left pointing after last valid descriptor
> as initialized in dmacontroller_setup (the referred descriptor already
> has B43_DMA32_DCTL_DTABLEEND set).
> 
> B43_DMA32_RXINDEX is reprogrammed from b43_dma_rx, by calling
> ops->set_current_rxslot(ring, slot). The patch from Thommy simply
> reprogramms the register back to the value initialized used in
> dmacontroller_setup.
> 
> I suspect that with set_current_rxslot call removed, the patch from
> Thommy will not be necessary anymore. I'm currently testing such fix
> and will report back in a few days.
> 
> 
> Regards,
> 
> Piotr
> 
Hi,

yes I also saw that datasheet and funny enough I also reacted on the same 
thing. But if you keep the rxindex pointing after the last descriptor all 
the time, how can you know if you had an underflow? Of course you could 
argue that it doesn't matter, the device will just keep on sending data 
since the current descriptor index will never reach the descriptor index. 
But that also means that you could start reading a packet at the same time 
as the device is overwriting it with an other, right? I didn't read it to 
carefully but the datasheet doesn't prohibit a change of the rxpointer, 
does it?

//Thommy 
