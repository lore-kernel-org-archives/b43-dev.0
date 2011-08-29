From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 29 Aug 2011 11:36:20 -0500
Subject: BCM4321 support
In-Reply-To: <CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
	<4E5AB689.4010000@lwfinger.net>
	<CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
Message-ID: <4E5BC004.8060608@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/29/2011 08:08 AM, Octavian Voicu wrote:

> Bottom line... with a completely busted SPROM (reading it returns all
> zeroes, writing it doesn't change one single bit), and a patched
> ssb.ko (that would check if SPROM contents was all zeroes and patch it
> up with the hard coded data if it was), card works perfectly now!
>
> Interesting question: does the card's firmware use any of the values
> in the SPROM, or are they just for the drivers to read? If the
> firmware uses them, and my card works, would it mean that only the
> interface to the SPROM is kind of busted, but the memory itself is OK
> and can be read by the firmware? That would be a bit strange.

The firmware has its own private memory and it shares some memory with the host 
CPU, but it does not have access to the SPROM.

> Gonna try writing a module to override SPROM on the fly using
> ssb_arch_register_fallback_sprom, so that I don't have to patch and
> recompile ssb when doing a kernel upgrade. If anyone thinks that would
> be useful, I can post the source here when I'm done. It would have the
> added benefit that it would permit testing a SPROM configuration
> without actually writing anything, and risk bricking the device -- of
> course, if the firmware uses anything from the SPROM, it wouldn't have
> access to the modifications, so not sure how useful that would be.

Most of the code you need is already there. Use the SPROM fallback mechanism. 
You will need to call the ssb_arch_register_fallback_sprom() routine to specify 
the routine that loads an alternative SPROM contents. This mechanism will work 
to compensate for your broken hardware.

> And another side question: do you usually run the wireless-next kernel
> when doing driver development and recompile the whole thing every time
> you change something? Or rebuild just the targets/modules you're
> interested in, and the whole kernel when changing data structures used
> outside the module?

Fiddling around with modules to get them to load is too much work. I always use 
the wireless-testing kernel. Whenever changes are made. I use 'make -jX' to 
rebuild, where X is the number of cpu's + 1. It only does what is necessary. As 
I use openSUSE, this is followed by 'sudo make install_modules' and if bzImage 
was rebuilt, this is followed by 'sudo make install'. The latter command also 
updates the GRUB menu if the new kernel is not already in the list. If your 
distro is Debian-based, those simple commands may not work, but someone on the 
list will tell us how the do it. I don't think that long process of building a 
".deb" file is needed.

Larry
