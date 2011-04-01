From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 01 Apr 2011 18:30:15 +0200
Subject: ChipCommon as independent driver?
In-Reply-To: <BANLkTikR3DjQ1LbU47zrm+zV3sqW37bzrA@mail.gmail.com>
	(sfid-20110401_182157_154317_212E1805)
References: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
	<1301673646.5219.18.camel@maggie>
	<BANLkTin2ZaBVbum9Y=iqWTwW4kzkdKAJnA@mail.gmail.com>
	<1301674530.5219.25.camel@maggie>
	<BANLkTikR3DjQ1LbU47zrm+zV3sqW37bzrA@mail.gmail.com>
	(sfid-20110401_182157_154317_212E1805)
Message-ID: <1301675415.5219.27.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On Fri, 2011-04-01 at 18:21 +0200, Rafa? Mi?ecki wrote: 
> W dniu 1 kwietnia 2011 18:15 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> > On Fri, 2011-04-01 at 18:06 +0200, Rafa? Mi?ecki wrote:
> >> W dniu 1 kwietnia 2011 18:00 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> >> > On Fri, 2011-04-01 at 16:49 +0200, Rafa? Mi?ecki wrote:
> >> >> Do you have idea how we could nicely solve that issue?
> >> >
> >> > Yeah. Just don't share code between ssb and bcmai.
> >> > That's the only clean solution to that mess.
> >>
> >> Do you want to have core drivers separated as well? Really? Should we
> >> have separated pci core? chiccommon core?
> >
> > Yes. Those "drivers" are a mess full of ssb specific workarounds
> > to hardware limitations.
> 
> I really don't understand what you meant in:
> 
> 2011/2/18 Michael B?sch <mb@bu3sch.de>:
> > Note that this does not mean that we need to duplicate the MIPS,
> > common and probably pci core drivers. A hybrid module can be done,
> > if that's desired to avoid code duplication.
> 
> then :|

_can_ be done.
That doesn't mean it must be done or whether it's a good idea to do so.

It certainly is possible to do so, but I don't think it makes
a lot of sense.

-- 
Greetings Michael.
