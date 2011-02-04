From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 04 Feb 2011 01:29:05 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <20110203234730.28953.qmail@stuge.se>
	(sfid-20110204_004735_721902_FFFFFFFFD8BEB068)
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	<1296770788.9535.1.camel@maggie> <20110203223430.18158.qmail@stuge.se>
	<1296773390.9535.13.camel@maggie> <20110203234730.28953.qmail@stuge.se>
	(sfid-20110204_004735_721902_FFFFFFFFD8BEB068)
Message-ID: <1296779345.9535.46.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 2011-02-04 at 00:47 +0100, Peter Stuge wrote: 
> > You're simply unaware of the basic Unix tools that help you find
> > what you are searching for.
> 
> Not at all. If I was the one looking for the code that talks to
> hardware I'd not only know where to find it, but I'd also know every
> other component of hardware and software that the data passes through
> on the way.

A basic thing about software abstraction is that you do _not_ need
to know what a subsystem does internally. To understand the ssb_sprom
file, you do _not_ have to read one single line of sysfs code.
To understand the whole SSB SPROM writing, you have to read about 200
lines of code.

> > Luckily the tool to find something is called "find".
> 
> I think you may have missed my point. One part is certainly to know
> how to find a file in a Linux system, but more important is the
> question of what to search for (a file) and where to search (in the
> kernel codebase). It's not at all obvious to a newcomer where the
> kernel edge is, or even that the kernel is so distinct.

I think we're probably drifting offtopic. Why would a newcomer who
doesn't even know what an operating system kernel is want to
write an SSB SPROM? That guy will brick his device anyway, as
he _will_ write incorrect data to the SPROM.

The next thing you'll probably blame on me is that I did not document in
the b43 documentation how to use a qwerty keyboard.

-- 
Greetings Michael.
