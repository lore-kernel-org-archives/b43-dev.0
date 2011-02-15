From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 15 Feb 2011 01:20:01 +0100
Subject: [PATCH] ssb: Make ssb_wait_bit multi-bit safe
In-Reply-To: <AANLkTingds9m3sj5bJoExiuoivbRSAtnF2A-4emjYMdJ@mail.gmail.com>
	(sfid-20110215_011145_942850_24C2EA9B)
References: <1297725710.5683.17.camel@maggie>
	<AANLkTingds9m3sj5bJoExiuoivbRSAtnF2A-4emjYMdJ@mail.gmail.com>
	(sfid-20110215_011145_942850_24C2EA9B)
Message-ID: <1297729201.5683.22.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?G=E1bor?= Stefanik <netrolller.3d@gmail.com>
Cc: John Linville <linville@tuxdriver.com>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On Tue, 2011-02-15 at 01:03 +0100, G?bor Stefanik wrote: 
> > -static int ssb_wait_bit(struct ssb_device *dev, u16 reg, u32 bitmask,
> > -                       int timeout, int set)
> > +static int ssb_wait_bits(struct ssb_device *dev, u16 reg, u32 bitmask,
> > +                        int timeout, int set)
> 
> While you are at it, you may want to change this to "bool set".

Please feel free to submit a separate patch on top of this.

-- 
Greetings Michael.
