From: Chris Martin <chris@martin.cc>
Date: Tue, 8 Jun 2010 14:41:28 +1000
Subject: BCM5354
In-Reply-To: <AANLkTindhacN3yjnZAkyDkn5ADFqSQ2dppypa-aV5Ecy@mail.gmail.com>
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net> 
	<4C0D40C2.7050409@sephix.com> <4C0D4BB3.7070607@lwfinger.net> 
	<4C0D4E98.3040903@sephix.com>
	<AANLkTimhZWtVucKu4_Mhrd8WdHk2ngR37pEans71gZBa@mail.gmail.com> 
	<AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com> 
	<AANLkTik9Zf2ip8HIiyDn94T-hYAvYBdd4Js8g-22oRR7@mail.gmail.com> 
	<AANLkTil1EUY34XS6jZ6pwmRXetGhJQVgr6UNz3EvoMoR@mail.gmail.com> 
	<AANLkTindhacN3yjnZAkyDkn5ADFqSQ2dppypa-aV5Ecy@mail.gmail.com>
Message-ID: <AANLkTim956ioEEpvkBGPwHEePfQsyUxYee1Rx-5HTrJ_@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/8 G?bor Stefanik <netrolller.3d@gmail.com>

>
> Try editing drivers/net/wireless/b43/dma.c, function dma_rx. Find the
> call to skb_put() (line 1576 in 2.6.34), and add the following code
> right before it (I'm not near a Linux machine right now to generate a
> patch):
> if (unlikely(skb->tail+len+ring->frameoffset > skb->end)) {
>        b43err(ring->dev->wl, "DMA RX: SKB overflow (len=%u, frameoffset=%u,
> skb free=%u\n", len, ring->frameoffset, skb->end-skb->tail);
>        goto drop;
> }
>
> This will make the panic go away, instead dropping the packet (though
> won't fix the error), and print a more meaningful error message to
> dmesg. Please post the dmesg output with this change.
>
> --
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>

OK ..  thanks ..  I now received the following after booting

b43-phy0 ERROR: DMA RX: SKB overflow (len=2344, frameoffset=30, skb
free=2368
b43-phy0 ERROR: DMA RX buffer too small (len: 7534, buffer: 2352,
nr-dropped: 4)

cheers
----------------------------------------------------------
Chris Martin
m: 0419812371
----------------------------------------------------------
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100608/d88274ca/attachment.html>
