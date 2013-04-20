From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 20 Apr 2013 21:50:56 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
Message-ID: <20130420215056.3d0b0dbb@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 20 Apr 2013 21:47:10 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> > And I think you need to set ring->current_slot to the value of ring->ops->get_current_slot().
> > Not 100% sure, though, since it is years since I worked on that code.
> > 
> Is that really needed? They should already be the same since the device 
> has thrown the underflow interrupt

Hm not sure. But should be easy to verify.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130420/333eb764/attachment.sig>
