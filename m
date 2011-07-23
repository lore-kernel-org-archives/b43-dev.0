From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 23 Jul 2011 10:21:51 +0200
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <4E2A7B59.80106@gnu.org>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
	<20110720011509.504022f8@maggie>
	<CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>
	<20110720105540.1c9d072c@maggie>
	<CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>
	<20110720153542.69edd601@Nokia-N900> <4E28422C.60209@gnu.org>
	<CACna6rz+t=ZOSiK+7weN7onZh3z44QeZSiuwY2L3oSxRneFV8A@mail.gmail.com>
	<20110721193440.2baeaae3@Nokia-N900> <4E2A7B59.80106@gnu.org>
Message-ID: <20110723102151.05ca3fe4@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 23 Jul 2011 03:42:17 -0400
Pavel Roskin <proski@gnu.org> wrote:

> On 07/21/2011 03:34 PM, Michael B?sch wrote:
> 
> > For historical reasons there is unused 64bit dma code in b43legacy. I'm not sure whether it would even work. Probably not. Larry's fixes were most likely not ported over.
> 
> I tried cleaning it up and found something more interesting in process:
> 
> b43legacy_dma_write(ring, B43legacy_DMA32_RXINDEX, 200);
> 
> Comparing to b43, that 200 is supposed to be
> 
> ring->nr_slots * sizeof(struct b43_dmadesc32)
> 
> For Rx, ring->nr_slots is 64 (B43legacy_RXRING_SLOTS).
> 
> sizeof(struct b43_dmadesc32) is 8.  That gives 512 or 0x200, not the 
> decimal 200!
> 
> I have no idea what kind of effect it can have of the driver.

It doesn't have a significant effect. However, you may fix it if
you want. The number of TX descriptor slots was also lowered in b43.
b43legacy still has the old value. You may change that, too, if you want.
There may be more fixes that were not ported over. However, none of
these should be significant.

-- 
Greetings, Michael.
