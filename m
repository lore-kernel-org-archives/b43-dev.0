From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Thu, 18 Nov 2010 17:35:56 +0100
Subject: [PATCH] ssb: fail registration for unknown SPROM revision
In-Reply-To: <20101118162748.GB2468@tuxdriver.com>
	(sfid-20101118_173004_541609_FFFFFFFFBFBD5E1E)
References: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
	<1288823326-9686-2-git-send-email-zajec5@gmail.com>
	<20101116212321.GF10774@tuxdriver.com>
	<1290013976.2513.14.camel@maggie>
	<20101118162748.GB2468@tuxdriver.com>
	(sfid-20101118_173004_541609_FFFFFFFFBFBD5E1E)
Message-ID: <1290098156.12596.2.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 2010-11-18 at 11:27 -0500, John W. Linville wrote: 
> On Wed, Nov 17, 2010 at 06:12:56PM +0100, Michael B?sch wrote:
> > On Tue, 2010-11-16 at 16:23 -0500, John W. Linville wrote: 
> > > > -		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
> > > > -			   "  revision %d detected. Will extract"
> > > > -			   " v1\n", out->revision);
> > > > -		out->revision = 1;
> > > > -		sprom_extract_r123(out, in);
> > > > +		ssb_printk(KERN_ERR PFX "Unsupported SPROM revision %d"
> > > > +			   " detected\n", out->revision);
> > > > +		return -EINVAL;
> > > >  	}
> > > >  
> > > >  	if (out->boardflags_lo == 0xFFFF)
> > > 
> > > I think this is going to make my b43 PCI-E card not work...I'll try
> > > it and get back to you...
> > 
> > Hm, what version does it report?

> [ 1036.293865] ssb: Unsupported SPROM  revision 255 detected. Will extract v1

So what about specialcasing 255 instead of defaulting to 1 in general?

if (rev == 255)
rev = 1;

255 basically means "Vendor forgot to set this field". So it would only
default to 1 for those broken sproms.

-- 
Greetings Michael.
