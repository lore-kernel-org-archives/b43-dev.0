From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 10:44:40 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
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
Message-ID: <20130421104440.48a3e006@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 10:22:51 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> The device stops sending when it hits the rx index. Thats what rx index 
> is, the address after the last slot the device is allowed to use. In the 
> driver it is used as the last slot handled, so if the device would 
> continue it will overwrite slots that hasn't been read. So you need to 
> handle that in someway. One way is using my patch, another is to never let 
> it hit rx index (as Piotras is working on).

Yeah I get that. But why do we need to handle that by putting the stop index
right beyond the ring? That requires us to get another RX interrupt before the
ring fills up again. Why can't we set it so that the ring is fully writable again,
but not set it beyond the ring boundary? I guess that is decrementing it by one,
perhaps, honoring 0-index-wrapover.

> Normally the device never hit the rx index, and in such case it will just 
> use the next descriptor in the table. If it finds a descriptor with END 
> set, it will jump back to the beginning. Forming the ring

I know how that basic stuff works, because I wrote most of the code ;D

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/59279114/attachment.sig>
