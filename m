From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 17 Nov 2010 18:12:56 +0100
Subject: [PATCH] ssb: fail registration for unknown SPROM revision
In-Reply-To: <20101116212321.GF10774@tuxdriver.com>
	(sfid-20101116_162951_428051_09CF3C97)
References: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
	<1288823326-9686-2-git-send-email-zajec5@gmail.com>
	<20101116212321.GF10774@tuxdriver.com>
	(sfid-20101116_162951_428051_09CF3C97)
Message-ID: <1290013976.2513.14.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Tue, 2010-11-16 at 16:23 -0500, John W. Linville wrote: 
> > -		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
> > -			   "  revision %d detected. Will extract"
> > -			   " v1\n", out->revision);
> > -		out->revision = 1;
> > -		sprom_extract_r123(out, in);
> > +		ssb_printk(KERN_ERR PFX "Unsupported SPROM revision %d"
> > +			   " detected\n", out->revision);
> > +		return -EINVAL;
> >  	}
> >  
> >  	if (out->boardflags_lo == 0xFFFF)
> 
> I think this is going to make my b43 PCI-E card not work...I'll try
> it and get back to you...

Hm, what version does it report?

-- 
Greetings Michael.
