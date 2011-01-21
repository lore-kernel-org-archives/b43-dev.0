From: Dylan Cristiani <d.cristiani@idem-tech.it>
Date: Fri, 21 Jan 2011 22:54:08 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <4D39C0B9.8050708@lwfinger.net>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
	<20110119140328.00002dd2@unknown> <20110121165137.000016ff@unknown>
	<4D39C0B9.8050708@lwfinger.net>
Message-ID: <20110121225408.00003e2c@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 21 Jan 2011 11:22:01 -0600
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 01/21/2011 09:51 AM, Dylan Cristiani wrote:
> > probably i found a clue (maybe the point): when the b43 wlan
> > interface comes up its rate is, at the beginning, setted to the
> > lowest possible: 1Mbit, as i can see with iwconfig, and it seems
> > that, at this low rates, some access points doesn't work, becuase
> > of some handshake timeout failure happening or other different
> > timeouts issue, like they can't 'deal' with such communication
> > being too slow; if i set higher rates (i.e. 'iw set rate 24M') it
> > associates to access point (WPA2 encryption), it gets dhcp address
> > and it is possible to ping other net's nodes, also if there are
> > still some issue, like high percentage of packet lost and so on;
> > furthermore, trying to force setting of the rate to highest
> > possible 'iw set rate 54M', doesn't improve the performances but,
> > at the opposite, it leads again to association failures; is this a
> > normal behaviour? do you think that i'm doing something wrong? why
> > is the starting rate setted to 1M (it's a wlan module policy or a
> > driver choice?); which is the best way to solve this issue if any?
> > 
> > as usual thanks for you support and patience!!
> 
> Your finding may be a good clue, but I'm not sure how to interpret
> it. Any AP must be able to handle traffic at 1 Mbps. Consider a
> station at an extreme distance where rates no higher that 1M can be
> supported. In addition, all management frames are sent at 1M to
> minimize the chances of packet loss.
ok so that's normal and sensible policy and for sure very reasonable in
fact maybe my question was little blind (near to stupid!)
> 
> You may have found a bug in the firmware of the AP, although that is
> not too likely. What make and model is the AP and what firmware
> version is it using?
problems came up with motorola wireless switch RFS6000 and access
port650; but same problems with motorola ap7131 and less with ap5131 
> 
> Fixing the transmission rate at too high a value will reduce
> throughput, just as you see because of transmission errors. Any new
> connection always starts at 1M. The rate-control algorithm will then
> increase the rate until the error rate increases.
same as first point i was blind and hasty but you know when something
is not working, you change something and it works, then you revert it
but it still works it's not a good feeling, because you cannot target
the problem...
> 
> I think you must do the git bisection to find the kernel change that
> caused the problem. I know that it is a lot of work, but at least you
> already know how to compile a kernel.
yes at least, other than bother community ;-), i know how to compile the
kernel i think i'm over thousand, only with 2.6.36 i reached more than
200 :-(; btw tks for you time, i'll bisect kernel but i'm not really
sure that it's a question of driver's problem, because as i told you
same kernel version sometimes works sometimes not.

dyl
