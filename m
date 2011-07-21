From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 21 Jul 2011 23:22:25 +0200
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <20110721193440.2baeaae3@Nokia-N900>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
	<20110720011509.504022f8@maggie>
	<CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>
	<20110720105540.1c9d072c@maggie>
	<CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>
	<20110720153542.69edd601@Nokia-N900> <4E28422C.60209@gnu.org>
	<CACna6rz+t=ZOSiK+7weN7onZh3z44QeZSiuwY2L3oSxRneFV8A@mail.gmail.com>
	<20110721193440.2baeaae3@Nokia-N900>
Message-ID: <20110721232225.1b0e1f15@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 21 Jul 2011 19:34:40 +0000
Michael B?sch <m@bues.ch> wrote:
> For historical reasons there is unused 64bit dma code in b43legacy. I'm not sure whether it would even work. Probably not. Larry's fixes were most likely not ported over.

So I looked closer at the code now.
The b43legacy 64bit DMA code certainly is dead, unused and broken code.
One could remove it, if someone really cares (I don't).

However, there is another issue.
b43legacy calls ssb_dma_translation() (also on 30/32bit code) for every descriptor.
As our ssb patch adds a SSB register read to ssb_dma_translation(), this adds an unacceptable
amount of overhead. This needs to be addressed before merging the ssb patch.
