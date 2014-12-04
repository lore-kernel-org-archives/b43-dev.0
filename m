From: Andrey Skvortsov <andrej.skvortzov@gmail.com>
Date: Thu, 4 Dec 2014 14:11:40 +0300
Subject: [PATCH] SSB / B44: fix WOL for BCM4401
In-Reply-To: <20141203172315.120040c2@wiggum>
References: <20141201111125.GA11974@localhost.localdomain>
 <1417466798-15735-1-git-send-email-Andrej.Skvortzov@gmail.com>
 <20141201221023.79ffb40d@wiggum> <20141202200129.GA4580@crion89>
 <20141202211211.7e08b935@wiggum> <547E3BF5.5060201@lwfinger.net>
 <20141203161855.50951aa8@wiggum>
 <20141203161452.GD2896@tuxdriver.com>
 <20141203172315.120040c2@wiggum>
Message-ID: <20141204111140.GF4979@localhost.localdomain>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?utf-8?B?QsO8c2No?= <m@bues.ch>
Cc: "John W. Linville" <linville@tuxdriver.com>, Larry Finger <Larry.Finger@lwfinger.net>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Gary.Zambrano@qlogic.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On Wed, Dec 03, 2014 at 05:23:15PM +0100, Michael B?sch wrote:

> > > > > That sounds good, indeed.
> > > > > I'd still prefer, if someone with b43 (wireless) would test it, too.
> > > > 
> > > > I did a partial test with my PowerBook G4. With the patch installed, it would 
> > > > both suspend and hibernate, but WOL would be impossible. This computer uses a 
> > > > PCMCIA version of the BCM4318, and power is turned off to the PCMCIA card when 
> > > > suspended or hibernating.
> > > 
> > > Thanks for testing.
> > > 
> > > John, can you take this one? Or do we need to split the b44 part out?
> > > I added my Signed-off.
> > 
> > Um, sure...3.19 is OK I presume?
> 
> I think we could even wait for 3.20.
>

Thanks, guys.


-- 
Best regards,
Andrey Skvortsov

PGP Key ID: 0x57A3AEAD
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: Digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141204/5054cd1c/attachment.sig>
