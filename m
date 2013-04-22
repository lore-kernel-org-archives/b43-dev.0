From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 22 Apr 2013 12:00:47 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304221003000.13040@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
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
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211951130.13040@kelly.ryd.net>
 <20130421202601.179eaf44@milhouse>
 <CAOTQ16LCWpAOndQsHBxN1-X_8SLpcU8V=mM41gvcNRocA=GhsA@mail.gmail.com>
 <20130421204439.2fa95ecf@milhouse>
 <alpine.DEB.2.02.1304212205360.13040@kelly.ryd.net>
 <20130421235313.22d47edb@milhouse>
 <alpine.DEB.2.02.1304221003000.13040@kelly.ryd.net>
Message-ID: <20130422120047.257c3348@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 22 Apr 2013 10:11:41 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> On Sun, 21 Apr 2013, Michael B?sch wrote:
> 
> > >  struct b43_stats {
> > >  	u8 link_noise;
> > > +	u32 rxdesc_underruns;
> > 
> > Why do we add that? It's not incremented and used anywhere.
> > 
> Sorry, seems like I dont do that of a good joob revewing my own patches. 
> It slipped in from one of my debug builts. Should I send in this to John 
> or do you think we have to test it further? It has been running during the 
> entire night with high load on my device. So that seems to work, but that 
> is only on one device of course.

Please remove rxdesc_underruns and send the patch (properly signed-off)
to John Linville. Cc the linux-wireless mailinglist, b43-dev mailinglist
and probably everybody involved in the review discussion.

You can also add a
Reviewed-by: Michael Buesch <m@bues.ch>

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130422/48db6429/attachment.sig>
