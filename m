From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 05 Apr 2011 22:25:06 +0200
Subject: [RFC][PATCH] bcmai: introduce AI driver
In-Reply-To: <BANLkTimTmqop-xzFsWr1=2RXv5z6iTre4Q@mail.gmail.com>
	(sfid-20110405_221605_148029_FFFFFFFFFD5E0FFF)
References: <1302033463-1846-1-git-send-email-zajec5@gmail.com>
	<1302032137.3969.10.camel@Joe-Laptop>
	<BANLkTimTmqop-xzFsWr1=2RXv5z6iTre4Q@mail.gmail.com>
	(sfid-20110405_221605_148029_FFFFFFFFFD5E0FFF)
Message-ID: <1302035106.1923.7.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Joe Perches <joe@perches.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Arend van Spriel <arend@broadcom.com>, Larry Finger <Larry.Finger@lwfinger.net>, George Kashperko <george@znau.edu.ua>, b43-dev@lists.infradead.org

On Tue, 2011-04-05 at 22:15 +0200, Rafa? Mi?ecki wrote: 
> Some more reviews, please? Should I drop that prefix, is Joe right?

Yes.

> >> diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
> > []
> >> +/* AI core, see drivers/bcmai/ */
> >> +struct bcmai_device_id {
> >> +     __u16   manuf;
> >> +     __u16   id;
> >> +     __u8    rev;
> >> +};
> >
> > Do some of these structs need __packed declarations?
> 
> I was reading about __packed long time ago and it was a little tricky
> for me. However I don't see anything in mod_devicetable.h using that
> __packed. Why should we?

I don't think packed is needed here.
Just note that this struct is ABI. So it's written in stone if merged.

-- 
Greetings Michael.
