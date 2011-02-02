From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 02 Feb 2011 23:40:08 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <20110202163002.00005927@unknown>
	(sfid-20110202_103008_176343_E21C9E30)
References: <20110114182113.0000753f@unknown>
	<4D309B73.8050402@lwfinger.net> <20110115080500.00001c48@unknown>
	<4D31CDA3.9040304@lwfinger.net> <20110117110618.0000170f@unknown>
	<20110117145106.00001ec8@unknown> <20110118115855.00007877@unknown>
	<4D35A506.3090702@lwfinger.net> <20110119140328.00002dd2@unknown>
	<20110121165137.000016ff@unknown> <4D39C0B9.8050708@lwfinger.net>
	<20110121225408.00003e2c@unknown> <4D3A050D.3090106@lwfinger.net>
	<20110122114834.00007abc@unknown> <20110201154135.00006f0b@unknown>
	<4D486FC0.3020507@lwfinger.net> <20110202101151.00007105@unknown>
	<20110202125529.00002e75@unknown>  <20110202163002.00005927@unknown>
	(sfid-20110202_103008_176343_E21C9E30)
Message-ID: <1296686408.26739.18.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 2011-02-02 at 16:30 +0100, dylan cristiani wrote: 
> --- a/drivers/ssb/pcmcia.c
> +++ b/drivers/ssb/pcmcia.c
> @@ -735,5 +735,5 @@ int ssb_pcmcia_get_invariants(struct ssb_bus *bus,
> 	/* Fetch the vendor specific tuples. */
> 	res = pcmcia_loop_tuple(bus->host_pcmcia, SSB_PCMCIA_CIS,
> -				ssb_pcmcia_do_get_invariants, sprom);
> +				ssb_pcmcia_do_get_invariants, iv);
> 	if ((res == 0) || (res == -ENOSPC))
> 		return 0;

That patch seems right.
I guess that the regression was introduced with the general PCMCIA
changes by Dominik Brodowski back in October.



However...

I do actually have serious trouble to figure out what you're doing.
I'm not saying that there is no bug, but I don't understand what you're
doing to trigger and/or track down the bug.

Let's look at two facts you gave us in previous email:

1) You want to change the PCI IDs. That implies you have a PCI card.
2) You are patching stuff in the PCMCIA code.

These two things are mutually exclusive.
You card is either PCI xor PCMCIA. So only one of these facts can
be true.

If it really is PCMCIA, I'll have to say that the SSB-PCMCIA
SPROM writing code is basically untested. That means I would be
surprised if it worked at all.

PS:
I also want to note that it is wrong to override the SPROM with
an image acquired elsewhere. The SPROM contains important calibration
data that is card-specific. So you cannot take the SPROM from one
card and put it into another. Even if it's exactly the same card type.
You must read SPROM -> modify that image -> write SPROM back.

-- 
Greetings Michael.
