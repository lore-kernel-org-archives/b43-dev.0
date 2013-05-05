From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 5 May 2013 15:56:19 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
Message-ID: <20130505155619.1f316a6b@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Thommy Jakobsson <thommyj@gmail.com>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, piotras@gmail.com, Larry.Finger@lwfinger.net

On Sun, 5 May 2013 14:44:14 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> 2013/4/23 Thommy Jakobsson <thommyj@gmail.com>:
> > Add handling of rx descriptor underflow. This fixes a fault that could
> > happen on slow machines, where data is received faster than the CPU can
> > handle. In such a case the device will use up all rx descriptors and
> > refuse to send any more data before confirming that it is ok. This
> > patch enables necessary interrupt to discover such a situation and will
> > handle them by dropping everything in the ring buffer.
> 
> Thommy: does it mean firmware actually ignores what we write to the
> B43_DMA64_RXINDEX (recently renamed to the B43_DMA64_RXSTOPINDEX)? Is
> our set_current_rxslot and op64_set_current_rxslot (same for 32bit
> version) useless in this situation?
> 
> Could this be a off-by-one issue? Maybe we're writing a value too low
> by a one and firmware believes the whole ring is empty while it's
> full?

The ring looks the same if it's full or empty. We can only know that it is
full when this interrupt fires, which happens as the indexes collide.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130505/e97d652f/attachment.sig>
