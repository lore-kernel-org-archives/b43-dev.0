From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Sat, 09 Apr 2011 13:31:30 +0200
Subject: Wrong offset for SSB_SPROM4_ANTAVAIL?
In-Reply-To: <BANLkTinWc6egggjnY=FAB2fZsV7aOTusBQ@mail.gmail.com>
	(sfid-20110409_041102_586952_85A12BA9)
References: <BANLkTin-p+XQaWRezBP4Ux7NvLf3cB26DA@mail.gmail.com>
	<BANLkTinWc6egggjnY=FAB2fZsV7aOTusBQ@mail.gmail.com>
	(sfid-20110409_041102_586952_85A12BA9)
Message-ID: <1302348690.32142.0.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 2011-04-09 at 10:10 +0200, Rafa? Mi?ecki wrote: 
> 2011/4/9 Jonas Gorski <jonas.gorski@gmail.com>:
> > while matching SPROM content to its offsets, I noticed that
> > SSB_SPROM4_ANTAVAIL has an odd offset (0x5d)[1]. Shouldn't this be
> > rather even (probably 0x5c), since the SPROM consists of 16 bit words?
> >
> > Regards
> > Jonas
> >
> > [1] <http://git.kernel.org/?p=linux/kernel/git/linville/wireless-next-2.6.git;a=blob;f=include/linux/ssb/ssb_regs.h;h=402955ae48ceac9c118833bed28ca093407e4638;hb=HEAD#l290>
> >
> > P.S: I currently lack the free space for yet another kernel git tree,
> > so I would prefer if somebody else fixes this - assuming my analysis
> > is right ;-)
> 
> I'll have time after weekend. There is some mess generally. We have
> ETHPHY instead of some LEDS and we have MASKs inverted for ANTENNA.

Note that the specs might also be incorrect on some of the fields.
There were bugfixes in the struct that were probably not propagated
up to the specs.

-- 
Greetings Michael.
