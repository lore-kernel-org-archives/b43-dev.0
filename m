From: Michael Buesch <mb@bu3sch.de>
Date: Sat, 1 May 2010 19:19:42 +0200
Subject: [PATCH] ssb: Implement fast powerup delay calculation
In-Reply-To: <AANLkTimXBlIETHVLapuSrkI8uTIU8JPepLWvAEq6_D4T@mail.gmail.com>
References: <4BDC56D2.5060605@gmail.com> <201005011907.05603.mb@bu3sch.de>
	<AANLkTimXBlIETHVLapuSrkI8uTIU8JPepLWvAEq6_D4T@mail.gmail.com>
	(sfid-20100501_171356_780008_6E95C7C2)
Message-ID: <201005011919.42294.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-1?q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: "John W. Linville" <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <larry.finger@lwfinger.net>

On Saturday 01 May 2010 19:13:31 G?bor Stefanik wrote:
> 2010/5/1 Michael Buesch <mb@bu3sch.de>:
> > On Saturday 01 May 2010 18:29:06 G?bor Stefanik wrote:
> >> +     ssb_write16(cc->dev, SSB_MMIO_POWERUP_DELAY, delay);
> >>   }
> >>
> >>   void ssb_chipco_suspend(struct ssb_chipcommon *cc)
> >> Index: wireless-testing/include/linux/ssb/ssb_regs.h
> >> ===================================================================
> >> --- wireless-testing.orig/include/linux/ssb/ssb_regs.h
> >> +++ wireless-testing/include/linux/ssb/ssb_regs.h
> >> @@ -26,6 +26,7 @@
> >>   #define     SSB_EUART               (SSB_EXTIF_BASE + 0x00800000)
> >>   #define     SSB_LED                 (SSB_EXTIF_BASE + 0x00900000)
> >>
> >> +#define SSB_MMIO_POWERUP_DELAY       0x06A8
> >
> > I think you are really confusing something here.
> > That register is a wireless core register and we already write it in b43.
> >
> > --
> > Greetings, Michael.
> >
> 
> This is what I am implementing: http://bcm-v4.sipsolutions.net/802.11/Init
> Here, it clearly says MMIO offset. 

Yeah. Just what I said. It is an 802.11 core register.
We already write it in b43/main.c/b43_chip_init().
It is _wrong_ to write to the chipcommon at that offset.

-- 
Greetings, Michael.
