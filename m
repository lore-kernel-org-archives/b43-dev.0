From: David Woodhouse <dwmw2@infradead.org>
Date: Fri, 12 Aug 2011 11:15:08 +0100
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <1313113295.27274.53.camel@i7.infradead.org>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
Message-ID: <1313144109.27274.71.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On some 64-bit DMA engines (my BCM4331, at least) with a ring buffer
that is not aligned to 8KiB, we often see bit 12 spuriously being set in
the B43_DMA64_RXSTATUS register. This will happen the first time the
ring fills and loops back to zero:

[35755.186080] Read RXSTATUS 3f0 (makes offs 3f0, divided by 10 gives slot 3f
[35755.288366] Read RXSTATUS 1000 (makes offs 1000, divided by 10 gives slot 100
[35755.291007] ------------[ cut here ]------------
[35755.291041] WARNING: at drivers/net/wireless/b43/dma.c:1700 b43_dma_rx+0x5e/0x2df [b43]()
 ...
[35766.745374] b43-phy41 debug: DMA RX: Dropping poisoned buffer.

All we need to do is mask the offending bit out. The packets *are* where
they should be; it's just the high bit of the reported offset which is
weird.

Signed-off-by: David Woodhouse <David.Woodhouse@intel.com>

diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index 82168f8..92dd6d9 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -247,6 +249,10 @@ static int op64_get_current_rxslot(struct b43_dmaring *ring)
 
 	val = b43_dma_read(ring, B43_DMA64_RXSTATUS);
 	val &= B43_DMA64_RXSTATDPTR;
+	/* When the ring is not aligned to 8KiB, we sometimes get
+	   bit 12 (0x1000) set in the address. Mask it out; we
+	   only use a 4KiB ring. */
+	val &= B43_DMA_RINGMEMSIZE-1;
 
 	return (val / sizeof(struct b43_dmadesc64));
 }

-- 
David Woodhouse                            Open Source Technology Centre
David.Woodhouse at intel.com                              Intel Corporation
