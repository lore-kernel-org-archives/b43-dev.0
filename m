From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 21 Jan 2011 16:13:33 -0600
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <20110121225408.00003e2c@unknown>
References: <20110114182113.0000753f@unknown>	<4D309B73.8050402@lwfinger.net>	<20110115080500.00001c48@unknown>	<4D31CDA3.9040304@lwfinger.net>	<20110117110618.0000170f@unknown>	<20110117145106.00001ec8@unknown>	<20110118115855.00007877@unknown>	<4D35A506.3090702@lwfinger.net>	<20110119140328.00002dd2@unknown>	<20110121165137.000016ff@unknown>	<4D39C0B9.8050708@lwfinger.net>
	<20110121225408.00003e2c@unknown>
Message-ID: <4D3A050D.3090106@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 01/21/2011 03:54 PM, Dylan Cristiani wrote:
> yes at least, other than bother community ;-), i know how to compile the
> kernel i think i'm over thousand, only with 2.6.36 i reached more than
> 200 :-(; btw tks for you time, i'll bisect kernel but i'm not really
> sure that it's a question of driver's problem, because as i told you
> same kernel version sometimes works sometimes not.

An intermittent problem makes bisection difficult. How many times to try before
calling a particular sample good? 10, 20??

As I understood the situation, 2.6.35 works all the time. Is that not so?

If you don't have any version that always works, then bisection is likely not
the answer. You will need to investigate what is on the air by using kismet or
wireshark on a separate computer.

Larry
