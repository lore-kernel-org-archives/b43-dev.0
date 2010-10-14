From: John W. Linville <linville@tuxdriver.com>
Date: Thu, 14 Oct 2010 14:14:47 -0400
Subject: Licensing wlc_phy_radio.h and brcm80211 (was: [PATCH 3/3] b43:
	N-PHY: add 2055 radio regs)
In-Reply-To: <AANLkTimz7xKtz15tVyytxgJ3mQJUNk-=ja-4cJBWJUV8@mail.gmail.com>
References: <AANLkTinQMRGkOvi4e4JMsHGV_BF_4Rf5oHCtZgQjwQ1g@mail.gmail.com>
	<20101014165111.GA22130@suse.de>
	<AANLkTin9PxzROyCQxiT5-ca4CUQK+kppS7gAibbbZ2=v@mail.gmail.com>
	<20101014171739.GA28522@suse.de>
	<AANLkTimz7xKtz15tVyytxgJ3mQJUNk-=ja-4cJBWJUV8@mail.gmail.com>
Message-ID: <20101014181446.GC2427@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Greg KH <gregkh@suse.de>, =?iso-8859-1?Q?G=E1bor?= Stefanik <netrolller.3d@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>

On Thu, Oct 14, 2010 at 07:38:49PM +0200, Rafa? Mi?ecki wrote:
> 2010/10/14 Greg KH <gregkh@suse.de>:

> > I don't think that bitfields are copyrightable :)
> 
> What about rest of the code? brcm80211 seems to support even newer
> devices we don't even try to support in b43 yet.
> 
> Can I treat code as pure-GPL and do not care about that
> maybe-not-GPL-compatible statement in header?

IANAL, but I think you should include the copyright statment with a
comment like "some portions covered by the following" at the top of
the files including such code.  Beyond that, I think you are fine
including it under GPL terms (which are merely more restrictive,
neither less restrictive nor incompatible).

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
