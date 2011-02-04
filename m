From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 04 Feb 2011 01:17:44 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <079FAB8F-1303-41DB-ACC9-D04E284EDDF7@daleenterprise.com>
	(sfid-20110204_003632_612620_2DB39BC7)
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	(sfid-20110203_065003_117141_E1A4725F)
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	(sfid-20110203_132714_452564_235F4728) <1296770788.9535.1.camel@maggie>
	<079FAB8F-1303-41DB-ACC9-D04E284EDDF7@daleenterprise.com>
	(sfid-20110204_003632_612620_2DB39BC7)
Message-ID: <1296778664.9535.36.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 2011-02-03 at 18:36 -0500, Dale Walsh wrote: 
> The SPROM writing code itself might not be so bad but the b43 code  
> has stuff all over the place and scavenging through all the files  
> trying to find the relevant material would require more time that I  
> have to get a working solution, not exactly what I'd call cohesive  
> when you start looking at code and you have to look all over the  
> place to find stuff, my dislike is in the structure or I should state  
> lack of.

Claiming a distaste for the spread of code into subsystems and the
lack of structure at the same time is an interesting thing to do...

As I mentioned before: You do not have to dig through all those
files. There are fast and easy to use standard Unix tools that do
this job for you.

> This is not to say that the package as a whole is not good but having  
> to rebuild a kernel to add driver support is in my opinion a poor  
> design concept, drivers should be standalone and not require  
> additional code inserted in the kernel to obtain functionality.

Yeah, and that is why there is absolutely no need to recompile
the kernel, if you want to add a driver. _Especially_ not for wireless.
The Linux wireless developers maintain the compat-wireless package,
which is a major effort for the only purpose of end-user convenience.

> If I could extract the code and generate a standalone app to perform  
> the flash it would make it much easier to resolve write issues.

ssb-sprom basically _is_ the standalone app to perform sprom
modification. For the actual "flashing" (it's not flash)
you'll need kernel support, naturally. There's no sane way around
that requirement. The kernel part is tiny, and you will always need it.

> >> I installed ubuntu 10.10 and it works so there is something in the
> >> 10.04 CD ubuntu sent me that causes the failure so for future
> >> reference, you can tell them to upgrade to 10.10 and the failure goes
> >> away.
> >
> > I suggest you report this to the Ubuntu bugzilla.
> 
> Report what?

Report that SSB SPROM writing is broken in Ubuntu 10.04, so
that Ubuntu developers can fix it. There's no way I can fix that,
because I am an upstream maintainer. And my upstream code is OK
as of latest revision.

> It's mentioned that the code is messed up

For a proper technical conversation it's always a good idea
to avoid unqualified and unproven claims.
That basically leads nowhere, except for aggressive replies.

-- 
Greetings Michael.
