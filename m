From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Mon, 29 Aug 2011 16:08:25 +0300
Subject: BCM4321 support
In-Reply-To: <4E5AB689.4010000@lwfinger.net>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
	<4E5AB689.4010000@lwfinger.net>
Message-ID: <CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, Aug 29, 2011 at 12:43 AM, Larry Finger
<Larry.Finger@lwfinger.net> wrote:
> SPROM contents:
...
> My MAC address is 00:1A:73:65:94:D0. You should have the MAC for your device
> written on the label. In any case, do not use the same one as in my device.

Thanks! Yes, I used my own MAC address.

I was kind of lazy and didn't want to recompile the whole kernel, so I
went through a lot of trouble to compile just the modules I needed
(ssb, cfg80211, mac80211, b44, b43 -- I also need b44 for my ethernet
card and my current b44 didn't like a newer ssb). After a lot of
fumbling around and learning the hard way how tricky modversions can
get, finally managed to get it to work.

Bottom line... with a completely busted SPROM (reading it returns all
zeroes, writing it doesn't change one single bit), and a patched
ssb.ko (that would check if SPROM contents was all zeroes and patch it
up with the hard coded data if it was), card works perfectly now!

Interesting question: does the card's firmware use any of the values
in the SPROM, or are they just for the drivers to read? If the
firmware uses them, and my card works, would it mean that only the
interface to the SPROM is kind of busted, but the memory itself is OK
and can be read by the firmware? That would be a bit strange.

Gonna try writing a module to override SPROM on the fly using
ssb_arch_register_fallback_sprom, so that I don't have to patch and
recompile ssb when doing a kernel upgrade. If anyone thinks that would
be useful, I can post the source here when I'm done. It would have the
added benefit that it would permit testing a SPROM configuration
without actually writing anything, and risk bricking the device -- of
course, if the firmware uses anything from the SPROM, it wouldn't have
access to the modifications, so not sure how useful that would be.

And another side question: do you usually run the wireless-next kernel
when doing driver development and recompile the whole thing every time
you change something? Or rebuild just the targets/modules you're
interested in, and the whole kernel when changing data structures used
outside the module?

Octavian
