From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 01 Apr 2011 18:15:30 +0200
Subject: ChipCommon as independent driver?
In-Reply-To: <BANLkTin2ZaBVbum9Y=iqWTwW4kzkdKAJnA@mail.gmail.com>
	(sfid-20110401_120617_934926_1F9732B2)
References: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
	<1301673646.5219.18.camel@maggie>
	<BANLkTin2ZaBVbum9Y=iqWTwW4kzkdKAJnA@mail.gmail.com>
	(sfid-20110401_120617_934926_1F9732B2)
Message-ID: <1301674530.5219.25.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On Fri, 2011-04-01 at 18:06 +0200, Rafa? Mi?ecki wrote: 
> W dniu 1 kwietnia 2011 18:00 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> > On Fri, 2011-04-01 at 16:49 +0200, Rafa? Mi?ecki wrote:
> >> Do you have idea how we could nicely solve that issue?
> >
> > Yeah. Just don't share code between ssb and bcmai.
> > That's the only clean solution to that mess.
> 
> Do you want to have core drivers separated as well? Really? Should we
> have separated pci core? chiccommon core?

Yes. Those "drivers" are a mess full of ssb specific workarounds
to hardware limitations.

> gige core?

Are there bcmai devices with gige core?
This driver is a _real_ mess. It basically is one huge
workaround, because the hardware is incredibly stupid.

> 80211 (b43) core?

No. The b43 (and b44) driver is pretty much self contained. It will be
easy
to make it run on both platforms. There are only a few places
that need changes.

-- 
Greetings Michael.
