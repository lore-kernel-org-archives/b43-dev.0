From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 17 Nov 2010 21:29:58 +0100
Subject: [RFC][PATCH] b43: rfkill: use HI enabled bit for all devices
In-Reply-To: <AANLkTi=ddd9gTmfWgXgn-8SnTh_br_dTnagOFO0xztvh@mail.gmail.com>
	(sfid-20101117_212336_672388_05898F4E)
References: <1290023808-26672-1-git-send-email-zajec5@gmail.com>
	<1290025040.2513.69.camel@maggie>
	<AANLkTi=ddd9gTmfWgXgn-8SnTh_br_dTnagOFO0xztvh@mail.gmail.com>
	(sfid-20101117_212336_672388_05898F4E)
Message-ID: <1290025798.2513.74.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Wed, 2010-11-17 at 21:23 +0100, Rafa? Mi?ecki wrote: 
> >>  /* Returns TRUE, if the radio is enabled in hardware. */
> >> -bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
> >> +inline bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
> >
> > inline doesn't make sense here.
> 
> Err, tip for compiler for optimization? To avoid some JUMPs in generated ASM?

Inline doesn't really work that way. In this case it might generate
an inline version for callers inside of rfkill.c and an 
always-out-of-line version for other callers.
If you really want it inline (Which I think isn't really necessary
as this isn't a fastpath), you'll need to make it static inline
and put it into rfkill.h

-- 
Greetings Michael.
