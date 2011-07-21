From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 21 Jul 2011 19:34:40 +0000
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <CACna6rz+t=ZOSiK+7weN7onZh3z44QeZSiuwY2L3oSxRneFV8A@mail.gmail.com>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
	<20110720011509.504022f8@maggie>
	<CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>
	<20110720105540.1c9d072c@maggie>
	<CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>
	<20110720153542.69edd601@Nokia-N900> <4E28422C.60209@gnu.org>
	<CACna6rz+t=ZOSiK+7weN7onZh3z44QeZSiuwY2L3oSxRneFV8A@mail.gmail.com>
Message-ID: <20110721193440.2baeaae3@Nokia-N900>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 21 Jul 2011 17:33:51 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> 2011/7/21 Pavel Roskin <proski@gnu.org>:
> > On 07/20/2011 11:35 AM, Michael B?sch wrote:
> >>
> >> On Wed, 20 Jul 2011 13:10:55 +0200
> >> Rafa? Mi?ecki<zajec5@gmail.com> ?wrote:
> >>
> >>> Sorry, for not explaining this well eno
> >>> ugh. I'm afraid of situation where b44 driver supports 64-bit DMA
> >>> device *without* handling this as such a device.
> >>
> >> A b44 or b43legacy device with 64bit DMA engine does not exist.
> >
> > There are many references to "B43legacy_DMA_64BIT" and "dma64_ops" in
> > b43legacy. ?I guess they all are unneeded, and so is struct
> > b43legacy_dma_ops.
> >
> > b44 doesn't seem to have DMA64 support. ?By the way, the result of
> > ssb_dma_translation() is placed into bp->dma_offset. ?I think the word
> > "offset" is misleading.
> 
> Thanks for comment. I didn't have any time to review (&clean?)
> b43legacy, not to mention b44. Unfortunately I'm too busy with b43
> stuff for now. If you have some free time, you're input to the drivers
> is welcome :)
> 

For historical reasons there is unused 64bit dma code in b43legacy. I'm not sure whether it would even work. Probably not. Larry's fixes were most likely not ported over.
