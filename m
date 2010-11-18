From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Thu, 18 Nov 2010 17:47:45 +0100
Subject: [PATCH] ssb: fail registration for unknown SPROM revision
In-Reply-To: <AANLkTimh_8X1uRPudmQLDOTeA_X0ciR9BbDgyahLDMSs@mail.gmail.com>
	(sfid-20101118_174421_892253_3B53C8D3)
References: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
	<1288823326-9686-2-git-send-email-zajec5@gmail.com>
	<20101116212321.GF10774@tuxdriver.com>
	<1290013976.2513.14.camel@maggie>
	<20101118162748.GB2468@tuxdriver.com> <1290098156.12596.2.camel@maggie>
	<AANLkTimh_8X1uRPudmQLDOTeA_X0ciR9BbDgyahLDMSs@mail.gmail.com>
	(sfid-20101118_174421_892253_3B53C8D3)
Message-ID: <1290098865.12596.6.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: "John W. Linville" <linville@tuxdriver.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 2010-11-18 at 17:44 +0100, Rafa? Mi?ecki wrote: 
> 2010/11/18 Michael B?sch <mb@bu3sch.de>:
> >> [ 1036.293865] ssb: Unsupported SPROM  revision 255 detected. Will extract v1
> >
> > So what about specialcasing 255 instead of defaulting to 1 in general?
> >
> > if (rev == 255)
> > rev = 1;
> >
> > 255 basically means "Vendor forgot to set this field". So it would only
> > default to 1 for those broken sproms.
> 
> Will work as long as there won't appear new vendor who will forget to
> set this and will use new SPROM...

The old code will break for that, too.

> But hopefully it won't happen and it should not hurt too much to
> register device with incorrectly parsed SPROM.

If it would really succeed to initialize the device, this would be a
regulatory issue, because the sprom contains various power amplifier
calibration data. I think it should rather fail and be fixed correctly
instead of incorrectly using rev1 in that case.

-- 
Greetings Michael.
