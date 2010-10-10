From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Sun, 10 Oct 2010 14:34:56 +0200
Subject: Release of Maranello firmware source code for Broadcom cards
In-Reply-To: <1DBB75B1-733F-4DFC-A541-2C2C986586A6@ing.unibs.it>
	(sfid-20101010_123116_260431_6CAA2A46)
References: <2518B44B-D014-4ABA-AE31-BD75691488AB@ing.unibs.it>
	<1DBB75B1-733F-4DFC-A541-2C2C986586A6@ing.unibs.it>
	(sfid-20101010_123116_260431_6CAA2A46)
Message-ID: <1286714096.16309.10.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: francesco.gringoli@ing.unibs.it
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev@lists.infradead.org, Bo Han <bohan@cs.umd.edu>

On Sun, 2010-10-10 at 12:19 +0200, francesco.gringoli at ing.unibs.it
wrote: 
> Maranello is an enhancement of the 802.11 DCF standard: it implements
> a Partial Packet Recovery technique to retransmit only the corrupt
> parts of failed packets. This reduces the airtime and contributes to
> enhance the throughput. It was written starting from OpenFWWF5.2 by
> adding a number of new features.

Hey, that looks really cool. :)
So does this firmware work in AP and STA mode? I guess so, because it
seems you need support for the nonstandard enhancement on both STA
and AP.

-- 
Greetings Michael.
