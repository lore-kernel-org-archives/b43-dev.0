From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 3 Dec 2014 17:23:15 +0100
Subject: [PATCH] SSB / B44: fix WOL for BCM4401
In-Reply-To: <20141203161452.GD2896@tuxdriver.com>
References: <20141201111125.GA11974@localhost.localdomain>
 <1417466798-15735-1-git-send-email-Andrej.Skvortzov@gmail.com>
 <20141201221023.79ffb40d@wiggum> <20141202200129.GA4580@crion89>
 <20141202211211.7e08b935@wiggum> <547E3BF5.5060201@lwfinger.net>
 <20141203161855.50951aa8@wiggum>
 <20141203161452.GD2896@tuxdriver.com>
Message-ID: <20141203172315.120040c2@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Andrey Skvortsov <andrej.skvortzov@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Gary.Zambrano@qlogic.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On Wed, 3 Dec 2014 11:14:52 -0500
"John W. Linville" <linville@tuxdriver.com> wrote:

> On Wed, Dec 03, 2014 at 04:18:55PM +0100, Michael B?sch wrote:
> > On Tue, 02 Dec 2014 16:23:49 -0600
> > Larry Finger <Larry.Finger@lwfinger.net> wrote:
> > 
> > > On 12/02/2014 02:12 PM, Michael B?sch wrote:
> > > > On Tue, 2 Dec 2014 23:01:29 +0300
> > > > Andrey Skvortsov <andrej.skvortzov@gmail.com> wrote:
> > > >
> > > >> On Mon, Dec 01, 2014 at 10:10:23PM +0100, Michael B?sch wrote:
> > > >>> On Mon,  1 Dec 2014 23:46:38 +0300
> > > >>> Andrey Skvortsov <andrej.skvortzov@gmail.com> wrote:
> > > >>>
> > > >>>> Wake On Lan was not working on laptop DELL Vostro 1500.
> > > >>>> If WOL was turned on, BCM4401 was powered up in suspend mode. LEDs blinked.
> > > >>>> But the laptop could not be woken up with the Magic Packet. The reason for
> > > >>>> that was that PCIE was not enabled as a system wakeup source and
> > > >>>> therefore the host PCI bridge was not powered up in suspend mode.
> > > >>>> PCIE was not enabled in suspend by PM because no child devices were
> > > >>>> registered as wakeup source during suspend process.
> > > >>>> On laptop BCM4401 is connected through the SSB bus, that is connected to the
> > > >>>> PCI-Express bus. SSB and B44 did not use standard PM wakeup functions
> > > >>>> and did not forward wakeup settings to their parents.
> > > >>>> To fix that B44 driver enables PM wakeup and registers new wakeup source
> > > >>>> using device_set_wakeup_enable(). Wakeup is automatically reported to the parent SSB
> > > >>>> bus via power.wakeup_path. SSB bus enables wakeup for the parent PCI bridge, if there is any
> > > >>>> child devices with enabled wakeup functionality. All other steps are
> > > >>>> done by PM core code.
> > > >>>
> > > >>> Thanks, this looks good.
> > > >>> I assume you tested this (I currently don't have a device to test this).
> > > >>
> > > >> Sure, I've tested it. WOL from suspend is working and after resume from hibernate Ethernet is working too.
> > > >
> > > > That sounds good, indeed.
> > > > I'd still prefer, if someone with b43 (wireless) would test it, too.
> > > 
> > > I did a partial test with my PowerBook G4. With the patch installed, it would 
> > > both suspend and hibernate, but WOL would be impossible. This computer uses a 
> > > PCMCIA version of the BCM4318, and power is turned off to the PCMCIA card when 
> > > suspended or hibernating.
> > 
> > Thanks for testing.
> > 
> > John, can you take this one? Or do we need to split the b44 part out?
> > I added my Signed-off.
> 
> Um, sure...3.19 is OK I presume?

I think we could even wait for 3.20.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141203/48a8a45d/attachment.sig>
