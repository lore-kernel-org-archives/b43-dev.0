From: Peter Stuge <peter@stuge.se>
Date: Fri, 4 Feb 2011 00:47:30 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <1296773390.9535.13.camel@maggie>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	<1296770788.9535.1.camel@maggie>
	<20110203223430.18158.qmail@stuge.se>
	<1296773390.9535.13.camel@maggie>
Message-ID: <20110203234730.28953.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Michael B?sch wrote:
> > > > Well something is causing the failure and if the ubuntu/linux code- 
> > > > base wasn't such a mess I'd go through and fix it myself.
> > > 
> > > I'm wondering to what mess you are referring.
> > 
> > For someone whose only exposure to Linux is picking up a Ubuntu CD
> > a Linux system as a whole is a horrible mess. Part of it is the fact
> > that so many different components (packages if you like) are
> > involved, and there's no way to document all of that so well in a
> > single page executive summary, rather it's more like a week
> > curriculum.
> 
> I'm not convinced that this is due to the Linux architecture
> or a lack of its documentation.

Now you're moving on to why, which I think doesn't matter.

You asked what mess, I pointed out what I believed was the original
poster's point.

I don't really care why. Personally I also don't really think Linux
is a mess, I find it very structured, but like any modern operating
system the structure can seem really complex when starting out,
simply because there are so many components.


> You're simply unaware of the basic Unix tools that help you find
> what you are searching for.

Not at all. If I was the one looking for the code that talks to
hardware I'd not only know where to find it, but I'd also know every
other component of hardware and software that the data passes through
on the way.


> Luckily the tool to find something is called "find".

I think you may have missed my point. One part is certainly to know
how to find a file in a Linux system, but more important is the
question of what to search for (a file) and where to search (in the
kernel codebase). It's not at all obvious to a newcomer where the
kernel edge is, or even that the kernel is so distinct.


> "find" run on the _whole_ Linux kernel yields exactly one .c source file

Getting to the point where one has a feel for the kernel's scope
already requires a bit of studying of the system.

I've had enough experience training my customers and on a couple
occasions also students to have seen many difficulties in grasping
exactly what the kernel is.


> > It's very easy to explain the neccessary parts to someone skilled,
> > it's also easy to discover independently for the skilled person, but
> > doing that discovery alone will take a long time.
> 
> Searching the kernel source tree for the term "sprom" isn't rocket
> science and doesn't consume much of your valuable time.

Hopefully the above explanation helps clarify that the problem is not
about finding "sprom" in the kernel source. At that point the problem
is, as you point out, quite easily solved. What can take a bit of
time is getting to the point of knowing where to search.


> If you still think that there's a lack of documentation, please
> contribute to the Linux wireless documentation wiki.

I think that would be a total micro-optimization for the case that I
have tried to describe. :\


> I'd be happy to see you share your knowledge with newbies.

It'll make you happy then that I'm happy to share what knowledge I
have. However, it's also important to choose one's battles, and I for
one prefer the lecture format in this case, if only because I can
speak faster than I can type. ;)


//Peter
