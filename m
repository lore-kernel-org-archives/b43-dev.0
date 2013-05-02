From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 2 May 2013 15:06:03 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
Message-ID: <20130502150603.2ac36385@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thommy Jakobsson <thommyj@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry.Finger@lwfinger.net

On Tue, 23 Apr 2013 21:45:11 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

> From: Thommy Jakobsson <thommyj@gmail.com>
> 
> Add handling of rx descriptor underflow. This fixes a fault that could
> happen on slow machines, where data is received faster than the CPU can
> handle. In such a case the device will use up all rx descriptors and
> refuse to send any more data before confirming that it is ok. This
> patch enables necessary interrupt to discover such a situation and will
> handle them by dropping everything in the ring buffer.
> 
> Reviewed-by: Michael Buesch <m@bues.ch>
> Signed-off-by: Thommy Jakobsson <thommyj@gmail.com>
> Cc: stable <stable@vger.kernel.org>

Anybody interested in porting this to b43legacy (and testing)?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130502/f4fe2e27/attachment.sig>
