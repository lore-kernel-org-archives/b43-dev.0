From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Wed, 19 Jan 2011 14:03:28 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <4D35A506.3090702@lwfinger.net>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
Message-ID: <20110119140328.00002dd2@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 18 Jan 2011 08:34:46 -0600
Larry Finger <Larry.Finger@lwfinger.net> wrote:

.....
> > Hi Larry i've some news: i tryied with kernel 2.6.35 and it works!
> > the module associates to AP and i can browse the net, ping external
> > addresses and so on...; it seems that some drivers' changes made
> > things go worste for my 'platform': do you have any suggestions?
> > Note that all kernel settings are the same in 2.6.35, 2.6.36 and
> > 2.6.37 except, obviously, for the new kernel's parameters of the
> > latter two.
> 
> The usual advice offered in cases like yours is to install a git tree
> and bisect the issue. As you have a problem with mainline kernels, I
> definitely recommend the linux-2.6.git tree as it bisects better than
> development trees like wireless-testing.git. Your number of trials
> should not be too bad as you know it broke between 2.6.35 and 2.6.36.
> 
> Larry
Tks for hint, but today i had a brand new behaviour: before diving into
git, i tryed to add som debug printk into ssb backplane to see if there
were some difference between 2.6.35 and 2.6.36, and the magic is that
the module worked also with 2.6.36 kernel; for sure i don't really think
that my few printk made the miracle; the only difference was that i
manually made 'insmod' of ssb.ko and b43.ko, then i 'ifdown wlan0' then
'ifup wlan0' and it worked...; as it seems to me there must be some alea
somewhere, that in certain conditions makes the module to misbehave
and the AP forbids to associate to it; but i cannot get the point also
for the fact that if a restore the starting buggy situation ('insmod' is
performed by a script launched by inittat just after init), the 'race'
situation doesn't happen anymore (for now), and the wlan0 still keep
working: don't know where to hit my head......(desk already hitten!)

dylan (swimming in deep dark....)

-- 
eng. dylan cristiani
idem srl
