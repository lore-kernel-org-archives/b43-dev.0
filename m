From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Tue, 1 Feb 2011 15:41:35 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <20110122114834.00007abc@unknown>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
	<20110119140328.00002dd2@unknown> <20110121165137.000016ff@unknown>
	<4D39C0B9.8050708@lwfinger.net> <20110121225408.00003e2c@unknown>
	<4D3A050D.3090106@lwfinger.net> <20110122114834.00007abc@unknown>
Message-ID: <20110201154135.00006f0b@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 22 Jan 2011 11:48:34 +0100
Dylan Cristiani <d.cristiani@idem-tech.it> wrote:

[snip]
> > 
> > If you don't have any version that always works, then bisection is
> > likely not the answer. You will need to investigate what is on the
> > air by using kismet or wireshark on a separate computer.
> i'll try with kismet or wireshark (keeping my finger crossed....,but
> the fact that problems are intermittent make me feel bad....)
> > 
> > Larry
> tks again Larry!!
> 
i have some news: i went back to kernel version 2.6.26 and it worked
so i moved forward kernel by kernel and it works till kernel 2.6.32;
first kernel that shows up the problem is 2.6.33 and, at module loading
time i can see for the first time, after loading firmware, the following
debug info (don't know if it's helpful but same message happears in
every non-working kernel from 2.6.33 to 2.6.37):

"b43-phy0 warning: Invalid max-TX-power value in SPROM"

dylan
