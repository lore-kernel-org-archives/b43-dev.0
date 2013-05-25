From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 25 May 2013 21:42:23 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <51A112FC.8060100@hauke-m.de>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
 <alpine.DEB.2.02.1305132025560.1278@kelly.ryd.net>
 <20130524164922.GA2175@tuxdriver.com>
 <alpine.DEB.2.02.1305252058060.1282@kelly.ryd.net>
 <51A112FC.8060100@hauke-m.de>
Message-ID: <20130525214223.4e69a772@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Thommy Jakobsson <thommyj@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, piotras@gmail.com, Larry.Finger@lwfinger.net

On Sat, 25 May 2013 21:37:32 +0200
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> On 05/25/2013 09:02 PM, Thommy Jakobsson wrote:
> > 
> > 
> > On Fri, 24 May 2013, John W. Linville wrote:
> > 
> >> Ping?  Should I drop this one?
> >>
> > Still working great on my device, so from that I think we should go for 
> > it. But it would be great if Rafal (or someone) tested it on some other 
> > hardware as well. 
> > 
> > //Thommy
> 
> This is included in OpenWrt for ~4 weeks now and I haven't read of
> anybody complaining about any new problems introduced by this patch or
> something which looks like the DMA under run.
> I am also for adding this to the kernel.

I'm probably missing something, but isn't this patch already in Linus' tree?
It's in stable review after all.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130525/c25c3bd2/attachment.sig>
