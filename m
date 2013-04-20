From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 20 Apr 2013 21:12:23 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
Message-ID: <20130420211223.640b7c5b@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 20 Apr 2013 16:14:09 +0200 (CEST)
Thommy <thommyj@gmail.com> wrote:

> +void b43_dma_rx_discard(struct b43_dmaring *ring)
> +{
> +	B43_WARN_ON(ring->tx);
> +
> +	/* Device has filled all buffers, drop all packets in buffers
> +	* and let TCP decrease speed.
> +	* Set index to one desc after the last one
> +	* so the device will see all slots as free again
> +	*/
> +	/*
> +	*TODO: How to increase rx_drop in mac80211?
> +	*/
> +	b43_dma_write(ring, B43_DMA32_RXINDEX, ring->nr_slots *
> +			sizeof(struct b43_dmadesc32));
> +}

You need to check whether this is a 32bit or 64bit DMA engine and
write to B43_DMA32_RXINDEX or B43_DMA64_RXINDEX.
You could simply use the ring->ops->set_current_rxslot() dmaop for that.

And I think you need to set ring->current_slot to the value of ring->ops->get_current_slot().
Not 100% sure, though, since it is years since I worked on that code.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130420/8697d8d4/attachment.sig>
