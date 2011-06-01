From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 1 Jun 2011 11:23:45 +0200
Subject: b43 error under heavy load
In-Reply-To: <BANLkTimBpGRxfidpE4hYCVscmX-Hy5q5jw@mail.gmail.com>
References: <4CEAB969.20702@lwfinger.net> <1290451982.20888.2.camel@maggie>
	<4CEAC095.7020706@lwfinger.net>
	<BANLkTimjRA5CsSDp_+LrGq8PNgaR4JFD=w@mail.gmail.com>
	<4DC9853A.1090508@lwfinger.net>
	<BANLkTimBpGRxfidpE4hYCVscmX-Hy5q5jw@mail.gmail.com>
Message-ID: <BANLkTi=TohOdjurvgqZT8=GXKbWfNe4v+w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Juan Carlos Romero <juancarlos.romero@gmail.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

W dniu 1 czerwca 2011 01:29 u?ytkownik Chris Vine
<chris@cvine.freeserve.co.uk> napisa?:
> However, fixing this bug reveals something else. ?After about 2 hours of
> streaming on MLB.TV I got this, apparently at random (but this is not a
> hard error: by disassociating from the AP and reassociating, the rest of
> the game played fine, and there was no need to load or unload modules):
>
> b43-phy0 debug: TX-status contains invalid cookie: 0x0DCE
> b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 76

Chris, my first suspicion for this issue is filling the whole TX
buffer. This could explain what does it happen on high traffic.

Below there is an idea how we can easily test it. Can you take a look
at this, and perform some testing?


2011/5/10 Rafa? Mi?ecki <zajec5@gmail.com>:
> It seems to happen only under heavy load... maybe it has something to
> do with reaching end of the ring (not whole ring, just end of free
> slots)?
>
> Did you try verbose debugging? I wonder if there is any relation
> between Out of order and:
> if (b43_debug(dev, B43_DBG_DMAVERBOSE)) {
> ? ? ? ?b43dbg(dev->wl, "Stopped TX ring %d\n", ring->index);
> }
>
> Could you try it?

AFAIK to enable this debugging you only need to:
echo 1 > /sys/kernel/debug/b43/phy0/debug_dmaverbose

-- 
Rafa?
