From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Wed, 2 Feb 2011 10:11:51 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <4D486FC0.3020507@lwfinger.net>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
	<20110119140328.00002dd2@unknown> <20110121165137.000016ff@unknown>
	<4D39C0B9.8050708@lwfinger.net> <20110121225408.00003e2c@unknown>
	<4D3A050D.3090106@lwfinger.net> <20110122114834.00007abc@unknown>
	<20110201154135.00006f0b@unknown> <4D486FC0.3020507@lwfinger.net>
Message-ID: <20110202101151.00007105@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 01 Feb 2011 14:40:32 -0600
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 02/01/2011 08:41 AM, dylan cristiani wrote:
> > i have some news: i went back to kernel version 2.6.26 and it worked
> > so i moved forward kernel by kernel and it works till kernel 2.6.32;
> > first kernel that shows up the problem is 2.6.33 and, at module
> > loading time i can see for the first time, after loading firmware,
> > the following debug info (don't know if it's helpful but same
> > message happears in every non-working kernel from 2.6.33 to 2.6.37):
> > 
> > "b43-phy0 warning: Invalid max-TX-power value in SPROM"
> 
> Between 2.6.32 and 2.6.33, there were only 6 patches that touched
> SSB. Two of them (e33761e and 3ba6018) affected SPROM writing, one
> (37ace3d) was only for PCMCIA, and one (ac2752c) only affected
> logging of a core scan. The two remaining are 391ae22 that fixed an
> SDIO typo and 8b45499 that put host pointers in a union should be the
> only ones that needed testing.
> 
> Those patches are attached. Try each of them in turn to 2.6.33 with a
> 'patch -p1 -R < patch_name' If it doesn't help, use the same command
> without the "-R" to reapply. I'm guessing that 8b45499 is more likely
> to be the problem, and I would try it first.
> 
> Larry
Hi Larry i tryied to reverte two patches you sent me but nothing
happens; but i discovered interesting behaviour: the mac address of the
module is:
00:0B:B6....
but starting from 2.6.33 the chip is read as:
14:0B:B6....
(maybe the '0x14' value could be '20dBm' related to the max-TX-power
value.....); so it seems that the driver is faulty reading the chip
properties from sprom (in fact till the 2.6.32 the mac address was
correct and the max-TX-power warning wasn't issued); i noticed that
into drivers/ssb/pcmcia.c tha way to read properties from the chip is
changed also; hope this helps

thanks

dylan
