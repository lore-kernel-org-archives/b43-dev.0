From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Mon, 14 Feb 2011 23:52:05 +0100
Subject: Notes on ssb specs and implementation
In-Reply-To: <AANLkTi=ayavFKJw9s-n-AvMDrtMxXdDcjV+BnoxO-qkE@mail.gmail.com>
	(sfid-20110214_233217_829894_FFFFFFFFD1071FC3)
References: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	<1297282621.9734.5.camel@maggie>
	<AANLkTinjDMSCqxWbAfjZO_JkfBZeRoAZOG5Pxvf1v8Xr@mail.gmail.com>
	<1297720877.5683.3.camel@maggie>
	<AANLkTi=ayavFKJw9s-n-AvMDrtMxXdDcjV+BnoxO-qkE@mail.gmail.com>
	(sfid-20110214_233217_829894_FFFFFFFFD1071FC3)
Message-ID: <1297723925.5683.11.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>

On Mon, 2011-02-14 at 23:32 +0100, Rafa? Mi?ecki wrote: 
> Sure. It's not for submission, so you have to expect magic values.

That patch doesn't look too bad.

> Personally I don't like for example description at
> http://bcm-v4.sipsolutions.net/802.11/PHY . It's really messed in "Put
> PHY Into Reset".
> Section "Put PHY Into Reset" is really "How to reset PHY" and it
> duplicates code of takine PHY out of reset.

Yeah, well. Maybe I repeat myself for the hundredth time:
Do not duplicate the specifications exactly. Apply common sense before
implementing the code.
If we can do better on certain things, do it.

> We also have a lot of magic in ssb_device_enable. We reset SB and PHY
> at the same time. I guess it introduces some optimization but makes it
> harder to understand, especially if you try to understand implemented
> code and look as specs at the same time.

Well, it's core specific flags. I don't see anything
wrong here. I think the PHY reset might even require an actual core
reset to work correctly. So you could never untie both.
But that's exactly those magic things we're never going to find out
unless we have hardware documentation.

-- 
Greetings Michael.
