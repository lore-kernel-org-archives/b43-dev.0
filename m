From: Peter Stuge <peter@stuge.se>
Date: Fri, 4 Feb 2011 02:16:20 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <1296779345.9535.46.camel@maggie>
References: <463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	<1296770788.9535.1.camel@maggie>
	<20110203223430.18158.qmail@stuge.se>
	<1296773390.9535.13.camel@maggie>
	<20110203234730.28953.qmail@stuge.se>
	<1296779345.9535.46.camel@maggie>
Message-ID: <20110204011620.9303.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Michael B?sch wrote:
> To understand the ssb_sprom file, you do _not_ have to read one
> single line of sysfs code.

Of course. But it can be important to know what sysfs is and what
patterns it uses in order to see a bigger picture.


> To understand the whole SSB SPROM writing, you have to read about
> 200 lines of code.

Yep.


> > It's not at all obvious to a newcomer where the kernel edge is,
> > or even that the kernel is so distinct.
> 
> Why would a newcomer who doesn't even know what an operating system
> kernel is

That's not what I wrote though. I agree with you that it's important
to try to be as accurate as possible.

By "the kernel" I mean Linux. Someone working expertly with a
completely different system may think in the (simplistic) term
Ubuntu. It's a long way from that high-level view into the file with
code that writes the SPROM.


> want to write an SSB SPROM?

As was explained, in this case a Ubuntu system was used as a tool in
a production process.


> That guy will brick his device anyway, as he _will_ write incorrect
> data to the SPROM.

I think it's possible to find a person who knows nearly every bit in
the SPROM, but who knows nothing about Linux. I don't think there's
correlation between the two.


> The next thing you'll probably blame on me is that I did not
> document in the b43 documentation how to use a qwerty keyboard.

I have not and do not blame anything on you.

I think you're being much too sensitive about what I wrote. It was
clear (to me) that you snapped into defensive mode, and that's
unfortunate since I do not believe anyone was attacking you.
(I.e. saying something like Martin is stupid, Martin writes bad code,
or it's Martin's fault that this code does not work on this Ubuntu
version. I certainly don't suggest any of that.)

I don't think that it's your fault that Linux systems are sometimes
complex beasts.. :)


//Peter
