From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 08:38:22 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
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
Message-ID: <20130421083822.5d6599e3@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 20 Apr 2013 23:23:54 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> Isn't that exactly what we do in b43_dma_rx? The initial rx descriptor 
> index is just to make the device to start. Theoretically you could get 
> into a fault situation if the device succeds in using up all descriptors 
> between b43_dma_rx_discard (added by my patch) and the call to b43_dma_rx. 
> Because then you could start reading the same packet as the device is 
> writing to.

Yes this is true.
And thus I'm currently unsure why we need this patch at all.
_Why_ does the DMA stall as soon as the ring is filled up?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/201e5823/attachment.sig>
