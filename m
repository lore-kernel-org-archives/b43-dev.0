From: David Woodhouse <dwmw2@infradead.org>
Date: Sun, 14 Aug 2011 09:19:59 +0100
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6ry+jPQaOsZ=tg0LRSfpoy0ZNSULDywXCbDCtRiHQv=iew@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<1313276212.30099.0.camel@i7.infradead.org>
	<CACna6ry+jPQaOsZ=tg0LRSfpoy0ZNSULDywXCbDCtRiHQv=iew@mail.gmail.com>
Message-ID: <1313310000.28740.1.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 2011-08-14 at 10:18 +0200, Rafa? Mi?ecki wrote:
> 
> > What was the physical address of the ring for this test run?
> 
> W 4 1279.247106 2 0xb0600228 0x1f932000 0x0 0
> W 4 1279.247107 2 0xb060022c 0x80000000 0x0 0
> R 4 1279.247112 2 0xb0600220 0x40 0x0 0
> W 4 1279.247114 2 0xb0600220 0x84d 0x0 0
> W 4 1279.259637 2 0xb0600224 0x1f932200 0x0 0
> 
> I read from the dump it was 0x000000001f932000

The interesting case is when it's *not* aligned to 8KiB.

-- 
dwmw2
