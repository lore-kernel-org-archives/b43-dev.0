From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Thu, 14 Oct 2010 19:24:17 +0200
Subject: Licensing wlc_phy_radio.h and brcm80211 (was: [PATCH 3/3] b43:
	N-PHY: add 2055 radio regs)
In-Reply-To: <20101014171739.GA28522@suse.de>
	(sfid-20101014_191829_132773_43868632)
References: <AANLkTinQMRGkOvi4e4JMsHGV_BF_4Rf5oHCtZgQjwQ1g@mail.gmail.com>
	<20101014165111.GA22130@suse.de>
	<AANLkTin9PxzROyCQxiT5-ca4CUQK+kppS7gAibbbZ2=v@mail.gmail.com>
	<20101014171739.GA28522@suse.de> (sfid-20101014_191829_132773_43868632)
Message-ID: <1287077057.20394.19.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg KH <gregkh@suse.de>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, =?ISO-8859-1?Q?G=E1bor?= Stefanik <netrolller.3d@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>

On Thu, 2010-10-14 at 10:17 -0700, Greg KH wrote: 
> > Finishing N-PHY support in b43 does not need much work plus:
> > 1) We support SSB devices
> > 2) We support older (LP/G-phy) devices
> > 3) We share infrastructure (easier to maintain)
> > 4) We probably could support modes like AP
> 
> If that would be a simpler task than trying to clean up the brcm80211
> driver, that seems quite reasonable.

That's really an unrelated topic. b43 and brcm80211 support different
kinds of devices whereas both devices may share certain sub-devices.
Like the radio device (b2056) in this case.

So it's not just a matter of "cleaning up" brcm80211. That doesn't give
us support for old SSB based N-PHY devices, because brcm80211 does not
support them at all.

-- 
Greetings Michael.
