From: Chris Adams <cma@cmadams.net>
Date: Mon, 24 Jun 2013 08:22:49 -0500
Subject: BCM4331 deauthenticates every five minutes
In-Reply-To: <20130620002838.GA8252@cmadams.net>
References: <20130619160911.GB4784@cmadams.net> <51C1DDEB.3090701@lwfinger.net>
 <20130619164227.GC4784@cmadams.net>
 <CACna6rzbTHnyqs5SzTuYL7r_SW3iCNh0qqbnvfsF7Wspyhp1WA@mail.gmail.com>
 <20130619175850.GD4784@cmadams.net>
 <20130620002838.GA8252@cmadams.net>
Message-ID: <20130624132249.GD4793@cmadams.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>

Once upon a time, Chris Adams <cma@cmadams.net> said:
> Once upon a time, Chris Adams <cma@cmadams.net> said:
> > The AP appears to be an Adtran (don't know the model).
> 
> The issue appears to be specific to the Adtran AP combined with the b43
> device.  I have a D-Link DIR-625 at home (running OpenWRT 12.09, using
> ath9k wireless driver), and the MacBook seems to stay connected to it
> okay.

I haven't had a chance to do more debugging, but I did find one more bit
of possibly-useful information: the "deauthenticating" bit only seems to
happen when there is no traffic.  I used the wireless in a meeting for a
couple of hours, and it didn't deauthenticate once.  I got back to my
desk, plugged into the wired network, and the wireless started
deauthenticating again every five minutes.

-- 
Chris Adams <cma@cmadams.net>
