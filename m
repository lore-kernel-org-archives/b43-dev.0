From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 09 Feb 2011 21:17:01 +0100
Subject: Notes on ssb specs and implementation
In-Reply-To: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	(sfid-20110209_210017_862769_37B0C3E4)
References: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	(sfid-20110209_210017_862769_37B0C3E4)
Message-ID: <1297282621.9734.5.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>

On Wed, 2011-02-09 at 21:00 +0100, Rafa? Mi?ecki wrote: 
> Michael: was there any reasons why we didn't implement some parts of
> core-disabling code?

The function are complete as of latest reverse engineering efforts.
Broadcom added stuff, if they do more stuff in latest code.

> Michael: should we care about the way wl sets core specific flags? I
> didn't dig into that moment in MMIO dumps, but as ssb_device_enable
> implementation ignores flags at the end, it has to set flags somehow
> differently on it's own.

I have no idea. ssb_device_enable is very hairy and I'm not going
to touch it without good reason and regression testing.

You didn't tell us the important part: Does changing ssb_device_enable
make it work?

-- 
Greetings Michael.
