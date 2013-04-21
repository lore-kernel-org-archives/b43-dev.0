From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 16:51:42 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAFzhf4p=x9PTzxjTGVn0P_UDCz=1Za+1AV761Hbou=5mWy5Ycg@mail.gmail.com>
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
 <CAFzhf4p=x9PTzxjTGVn0P_UDCz=1Za+1AV761Hbou=5mWy5Ycg@mail.gmail.com>
Message-ID: <20130421165142.195c30eb@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 15:27:49 +0100
Piotras <piotras@gmail.com> wrote:

> Based on BCM440X Programmer's Reference Guide that may or may not
> apply to DMA processor used in WLAN chipsets, B43_DMA32_RXSTATUS may
> be updated by hardware to point to the same descriptor as
> B43_DMA32_RXINDEX.
> 
> For DMA processor this means that no more free descriptors are
> available. However b43_dma_rx assumes no data needs to be processed
> (see how ring->current_slot is updated and used in loop condition on
> next interrupt). This could explain stalls.

Yes this is why it stalls. But how to fix this without additional counting?
I'd rather prefer wiping the whole ring in that case.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/9341395e/attachment.sig>
