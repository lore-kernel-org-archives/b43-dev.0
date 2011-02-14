From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Mon, 14 Feb 2011 23:01:17 +0100
Subject: Notes on ssb specs and implementation
In-Reply-To: <AANLkTinjDMSCqxWbAfjZO_JkfBZeRoAZOG5Pxvf1v8Xr@mail.gmail.com>
	(sfid-20110214_205318_109392_FFFFFFFFAA87CB50)
References: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	<1297282621.9734.5.camel@maggie>
	<AANLkTinjDMSCqxWbAfjZO_JkfBZeRoAZOG5Pxvf1v8Xr@mail.gmail.com>
	(sfid-20110214_205318_109392_FFFFFFFFAA87CB50)
Message-ID: <1297720877.5683.3.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>

On Mon, 2011-02-14 at 20:51 +0100, Rafa? Mi?ecki wrote: 
> W dniu 9 lutego 2011 21:17 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> > On Wed, 2011-02-09 at 21:00 +0100, Rafa? Mi?ecki wrote:
> >> Michael: was there any reasons why we didn't implement some parts of
> >> core-disabling code?
> >
> > The function are complete as of latest reverse engineering efforts.
> > Broadcom added stuff, if they do more stuff in latest code.
> 
> Nothing has changed in specs since 2006:
> http://bcm-v4.sipsolutions.net/Backplane?action=info
> For some reason routines that were present even in 2006 was not implemented.

Well, so the function was implemented prior to 2006. Which doesn't
surprise me. It was one of the first ones.

> I've just written missing parts,

May I see them?

> tested and it still does not work :|
> The only advantage discovered so far is that ssb detects sth is wrong
> with IM state:
> [ 2661.449647] ssb: Timeout waiting for bitmask 01800000 on register
> 0F90 to clear.
> 
> I can see wl experiencing the same problems after loading b43. It
> reads 0xf90 dozen of times in a row.

And that's the thing why I always avoid touching that function.
There's so much magic going on, so that completely weird things happen
all the time. :D

-- 
Greetings Michael.
