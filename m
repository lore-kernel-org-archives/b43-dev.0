From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 14:12:05 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130421112118.627a1f7f@milhouse>
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
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211046300.19161@kelly.ryd.net>
 <20130421112118.627a1f7f@milhouse>
Message-ID: <alpine.DEB.2.02.1304211410460.19161@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Sun, 21 Apr 2013, Michael B?sch wrote:

> On Sun, 21 Apr 2013 11:01:11 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
> 
> > Why is it set to to beyond the ring when it is initilised?
> 
> That's what broadcom does in their implementation. I guess that's the only reason.
> 
Check, I'll give index-1 a go. It should be quite obvious if it works or 
not.

//thommy
