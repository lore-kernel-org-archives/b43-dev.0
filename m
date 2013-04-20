From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 20 Apr 2013 22:38:48 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
Message-ID: <20130420223848.7ce0ddec@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 20 Apr 2013 22:16:26 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> 
> 
> On Sat, 20 Apr 2013, Michael B?sch wrote:
> 
> > On Sat, 20 Apr 2013 21:47:10 +0200 (CEST)
> > Thommy Jakobsson <thommyj@gmail.com> wrote:
> > 
> > > > And I think you need to set ring->current_slot to the value of ring->ops->get_current_slot().
> > > > Not 100% sure, though, since it is years since I worked on that code.
> > > > 
> > > Is that really needed? They should already be the same since the device 
> > > has thrown the underflow interrupt
> > 
> > Hm not sure. But should be easy to verify.
> I did check it in the beginning when I was testing the patch, just printed 
> the indexes in the kernel log. But of course if there is a race condition
> it could be hard to catch.

Ok. I don't think there should be a race.
Thanks for checking.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130420/cefb6f3a/attachment-0001.sig>
