From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 15 Feb 2011 00:59:29 +0100
Subject: [PATCH] ssb: Make ssb_wait_bit multi-bit safe
In-Reply-To: <AANLkTimjkFJrWpubECRRNybmvYdcAh3UUbMOa0iv166g@mail.gmail.com>
	(sfid-20110215_004511_709733_4814F921)
References: <1297725710.5683.17.camel@maggie>
	<AANLkTimjkFJrWpubECRRNybmvYdcAh3UUbMOa0iv166g@mail.gmail.com>
	(sfid-20110215_004511_709733_4814F921)
Message-ID: <1297727969.5683.21.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: John Linville <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On Tue, 2011-02-15 at 00:44 +0100, Rafa? Mi?ecki wrote: 
> 2011/2/15 Michael B?sch <mb@bu3sch.de>:
> > ssb_wait_bit was designed for only one-bit bitmasks.
> > People start using it for multi-bit bitmasks. Make the "set" case
> > is safe for this. The "unset" case is already safe.
> 
> Thanks :)

This should not change the behavior of your patch, though,
as you only add an "unset" case, which was already correct.

So this doesn't fix an actual bug but rather hardens the code
for future use.

-- 
Greetings Michael.
