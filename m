From: Dylan Cristiani <d.cristiani@idem-tech.it>
Date: Sat, 22 Jan 2011 11:48:34 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <4D3A050D.3090106@lwfinger.net>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
	<20110119140328.00002dd2@unknown> <20110121165137.000016ff@unknown>
	<4D39C0B9.8050708@lwfinger.net> <20110121225408.00003e2c@unknown>
	<4D3A050D.3090106@lwfinger.net>
Message-ID: <20110122114834.00007abc@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 21 Jan 2011 16:13:33 -0600
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 01/21/2011 03:54 PM, Dylan Cristiani wrote:
> > yes at least, other than bother community ;-), i know how to
> > compile the kernel i think i'm over thousand, only with 2.6.36 i
> > reached more than 200 :-(; btw tks for you time, i'll bisect kernel
> > but i'm not really sure that it's a question of driver's problem,
> > because as i told you same kernel version sometimes works sometimes
> > not.
> 
> An intermittent problem makes bisection difficult. How many times to
> try before calling a particular sample good? 10, 20??
> 
> As I understood the situation, 2.6.35 works all the time. Is that not
> so?
with accesspoint i have (ap5131) 2.6.36 worked (seemed to) at the
beginning; other test by other people with different AP (wireless
switch RFS6000 + access port AP650) showed up the problem i initially
posted here: "not associating to access point or better associating then
de-associating for 'reason 4: Disassociated due to inactivity'"; then i
looked at Changelogs for 2.6.37 and i noticed that there were many
changes into cfg/mac80211 then i migrated to kernel 2.6.37; same as
before with my access point it worked while with wireless switch not;
(to be honest sometimes also to me happened associations problems but in
manner not 'deterministic' i.e. coming back to 2.6.36 (same situation
that worked early) it stopped work with same deassociation issue; so i
try to go back to 2.6.35 and it started to work again to me, so i gave
this version to people with wireless switch, but there it still not
worked, the module doesn't associate for some different inctivity
reasons like 'reason 2: Previous authentication no longer valid', if the
wireless switch's profile is open or 'Reason 15: is "4-Way Handshake
timeout"' if wpa2 is active; so i can really 'state' that (unlickly) i
saw one kernel working all the time neither by my side (with people
with wireless switch at the opposite no one kernel ever worked!)
> 
> If you don't have any version that always works, then bisection is
> likely not the answer. You will need to investigate what is on the
> air by using kismet or wireshark on a separate computer.
i'll try with kismet or wireshark (keeping my finger crossed....,but
the fact that problems are intermittent make me feel bad....)
> 
> Larry
tks again Larry!!

dylan
