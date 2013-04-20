From: Thommy <thommyj@gmail.com>
Date: Sat, 20 Apr 2013 16:14:09 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

new try sending in the patch (with pine instead of gmail webclient this 
time). Patch created on latest wireless-testing 

BR,
Thommy Jakobsson

Signed-off-by: Thommy Jakobsson <thommyj@gmail.com>
---
 drivers/net/wireless/b43/b43.h  |    1 +
 drivers/net/wireless/b43/dma.c  |   16 +++++++++++++++
 drivers/net/wireless/b43/dma.h  |    4 +++-
 drivers/net/wireless/b43/main.c |   43 ++++++++++++++++-----------------------
 4 files changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/net/wireless/b43/b43.h b/drivers/net/wireless/b43/b43.h
index 7f3d461..fdcd00f 100644
--- a/drivers/net/wireless/b43/b43.h
+++ b/drivers/net/wireless/b43/b43.h
@@ -680,6 +680,7 @@ struct b43_noise_calculation {
 
 struct b43_stats {
 	u8 link_noise;
+	u32 rxdesc_underruns;
 };
 
 struct b43_key {
diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
index 1221469..2ae00dd 100644
--- a/drivers/net/wireless/b43/dma.c
+++ b/drivers/net/wireless/b43/dma.c
@@ -1733,6 +1733,22 @@ drop_recycle_buffer:
 	sync_descbuffer_for_device(ring, dmaaddr, ring->rx_buffersize);
 }
 
+void b43_dma_rx_discard(struct b43_dmaring *ring)
+{
+	B43_WARN_ON(ring->tx);
+
+	/* Device has filled all buffers, drop all packets in buffers
+	* and let TCP decrease speed.
+	* Set index to one desc after the last one
+	* so the device will see all slots as free again
+	*/
+	/*
+	*TODO: How to increase rx_drop in mac80211?
+	*/
+	b43_dma_write(ring, B43_DMA32_RXINDEX, ring->nr_slots *
+			sizeof(struct b43_dmadesc32));
+}
+
 void b43_dma_rx(struct b43_dmaring *ring)
 {
 	const struct b43_dma_ops *ops = ring->ops;
diff --git a/drivers/net/wireless/b43/dma.h b/drivers/net/wireless/b43/dma.h
index 9fdd198..fed8163 100644
--- a/drivers/net/wireless/b43/dma.h
+++ b/drivers/net/wireless/b43/dma.h
@@ -9,7 +9,7 @@
 /* DMA-Interrupt reasons. */
 #define B43_DMAIRQ_FATALMASK	((1 << 10) | (1 << 11) | (1 << 12) \
 					 | (1 << 14) | (1 << 15))
-#define B43_DMAIRQ_NONFATALMASK	(1 << 13)
+#define B43_DMAIRQ_RDESC_UFLOW		(1 << 13)
 #define B43_DMAIRQ_RX_DONE		(1 << 16)
 
 /*** 32-bit DMA Engine. ***/
@@ -295,6 +295,8 @@ int b43_dma_tx(struct b43_wldev *dev,
 void b43_dma_handle_txstatus(struct b43_wldev *dev,
 			     const struct b43_txstatus *status);
 
+void b43_dma_rx_discard(struct b43_dmaring *ring);
+
 void b43_dma_rx(struct b43_dmaring *ring);
 
 void b43_dma_direct_fifo_rx(struct b43_wldev *dev,
diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index d377f77..277fe75 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -1902,30 +1902,19 @@ static void b43_do_interrupt_thread(struct b43_wldev *dev)
 		}
 	}
 
-	if (unlikely(merged_dma_reason & (B43_DMAIRQ_FATALMASK |
-					  B43_DMAIRQ_NONFATALMASK))) {
-		if (merged_dma_reason & B43_DMAIRQ_FATALMASK) {
-			b43err(dev->wl, "Fatal DMA error: "
-			       "0x%08X, 0x%08X, 0x%08X, "
-			       "0x%08X, 0x%08X, 0x%08X\n",
-			       dma_reason[0], dma_reason[1],
-			       dma_reason[2], dma_reason[3],
-			       dma_reason[4], dma_reason[5]);
-			b43err(dev->wl, "This device does not support DMA "
+	if (unlikely(merged_dma_reason & (B43_DMAIRQ_FATALMASK))) {
+		b43err(dev->wl, "Fatal DMA error: "
+		       "0x%08X, 0x%08X, 0x%08X, "
+		       "0x%08X, 0x%08X, 0x%08X\n",
+		       dma_reason[0], dma_reason[1],
+		       dma_reason[2], dma_reason[3],
+		       dma_reason[4], dma_reason[5]);
+		b43err(dev->wl, "This device does not support DMA "
 			       "on your system. It will now be switched to PIO.\n");
-			/* Fall back to PIO transfers if we get fatal DMA errors! */
-			dev->use_pio = true;
-			b43_controller_restart(dev, "DMA error");
-			return;
-		}
-		if (merged_dma_reason & B43_DMAIRQ_NONFATALMASK) {
-			b43err(dev->wl, "DMA error: "
-			       "0x%08X, 0x%08X, 0x%08X, "
-			       "0x%08X, 0x%08X, 0x%08X\n",
-			       dma_reason[0], dma_reason[1],
-			       dma_reason[2], dma_reason[3],
-			       dma_reason[4], dma_reason[5]);
-		}
+		/* Fall back to PIO transfers if we get fatal DMA errors! */
+		dev->use_pio = true;
+		b43_controller_restart(dev, "DMA error");
+		return;
 	}
 
 	if (unlikely(reason & B43_IRQ_UCODE_DEBUG))
@@ -1944,6 +1933,10 @@ static void b43_do_interrupt_thread(struct b43_wldev *dev)
 		handle_irq_noise(dev);
 
 	/* Check the DMA reason registers for received data. */
+	if (dma_reason[0] & B43_DMAIRQ_RDESC_UFLOW) {
+		b43warn(dev->wl, "RX descriptor underrun, dropping packets\n");
+		b43_dma_rx_discard(dev->dma.rx_ring);
+	}
 	if (dma_reason[0] & B43_DMAIRQ_RX_DONE) {
 		if (b43_using_pio_transfers(dev))
 			b43_pio_rx(dev->pio.rx_queue);
@@ -2001,7 +1994,7 @@ static irqreturn_t b43_do_interrupt(struct b43_wldev *dev)
 		return IRQ_NONE;
 
 	dev->dma_reason[0] = b43_read32(dev, B43_MMIO_DMA0_REASON)
-	    & 0x0001DC00;
+	    & 0x0001FC00;
 	dev->dma_reason[1] = b43_read32(dev, B43_MMIO_DMA1_REASON)
 	    & 0x0000DC00;
 	dev->dma_reason[2] = b43_read32(dev, B43_MMIO_DMA2_REASON)
@@ -3130,7 +3123,7 @@ static int b43_chip_init(struct b43_wldev *dev)
 		b43_write32(dev, 0x018C, 0x02000000);
 	}
 	b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, 0x00004000);
-	b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001DC00);
+	b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001FC00);
 	b43_write32(dev, B43_MMIO_DMA1_IRQ_MASK, 0x0000DC00);
 	b43_write32(dev, B43_MMIO_DMA2_IRQ_MASK, 0x0000DC00);
 	b43_write32(dev, B43_MMIO_DMA3_IRQ_MASK, 0x0001DC00);
-- 
1.7.9.5


On Fri, 19 Apr 2013, Jonas Gorski wrote:

> Hi,
> 
> On Mon, Apr 15, 2013 at 10:02 AM, Thommy Jakobsson <thommyj@gmail.com> wrote:
> > Hi,
> >
> > long user of b43 driver under openwrt. Not sure if it has been posted
> > previously but using slow and old hardware (as routers running openwrt
> > most of the time is), the CPU is sometimes slower than the NIC. So
> > recently I, and several others, has had problem of wifi going down.
> > See ticket 7552 at openwrt for more info
> > (https://dev.openwrt.org/ticket/7552)
> >
> > I have tracked down the problem to the nic getting into a rx
> > descriptor underrun. Since the driver don't listen to that (or take
> > care of it in any other way), the Wifi seemingly just dies. The CPU is
> > waiting for data from the nic and the nic is waiting for a
> > confirmation that it can keep sending.
> >
> > I created a patch for handling of that interrupt. I have tested it by
> > reducing the number of rx slots to 16 and sending a couple of 100GB of
> > data. Previously Wifi went down within a minute when maxing out the
> > uplink (so rx for AP), now it has been working flawless for a 1.5week.
> 
> Nice, very good to hear. Looks like you found the real issue the rx
> descriptor count increase was just papering over. Some comments
> regarding your patch.
> 
> >
> > BR,
> > Thommy Jakobsson
> >
> 
> You are missing a "Signed-off-by" - without it the patch can never be
> accepted. Also your patch is has broken tabs (they were converted to
> spaces), as well as is line-broken, so it doesn't apply anymore. You
> can't use gmail's web interface for sending patches.
> 
> > Index: drivers/net/wireless/b43/dma.c
> > ===================================================================
> > --- compat-wireless-2012-09-07.orig/drivers/net/wireless/b43/dma.c
> > 2013-04-09 17:33:54.325322046 +0200
> > +++ compat-wireless-2012-09-07/drivers/net/wireless/b43/dma.c
> 
> You should make your patch against the newest git tree, so usually
> wireless-testing or Rafa?'s b43-next.
> 
> > 2013-04-09 17:34:43.473565843 +0200
> > @@ -1688,6 +1688,21 @@
> >          b43_poison_rx_buffer(ring, skb);
> >          sync_descbuffer_for_device(ring, dmaaddr, ring->rx_buffersize);
> >  }
> > +void b43_dma_rx_discard(struct b43_dmaring *ring)
> > +{
> > +   B43_WARN_ON(ring->tx);
> > +
> > +    /* Device has filled all buffers, drop all packets in buffers
> > +     * and let TCP decrease speed.
> > +     * Set index to one desc after the last one (which is marked)
> > +     * so the device will see all slots as free again
> > +     */
> > +    /*
> > +     *TODO: How to increase rx_drop in mac80211
> > +     */
> > +   b43_dma_write(ring, B43_DMA32_RXINDEX, ring->nr_slots *
> > +                                     sizeof(struct b43_dmadesc32));
> > +}
> >
> >  void b43_dma_rx(struct b43_dmaring *ring)
> >  {
> >
> > Index: drivers/net/wireless/b43/dma.h
> > ===================================================================
> > --- compat-wireless-2012-09-07.orig/drivers/net/wireless/b43/dma.h
> > 2013-04-09 17:34:09.561397686 +0200
> > +++ compat-wireless-2012-09-07/drivers/net/wireless/b43/dma.h
> > 2013-04-09 17:34:43.461565780 +0200
> > @@ -10,7 +10,8 @@
> >  #define B43_DMAIRQ_FATALMASK    ((1 << 10) | (1 << 11) | (1 << 12) \
> >                                           | (1 << 14) | (1 << 15))
> >  #define B43_DMAIRQ_NONFATALMASK (1 << 13)
> > -#define B43_DMAIRQ_RX_DONE              (1 << 16)
> > +#define B43_DMAIRQ_RX_DONE      (1 << 16)
> 
> Unnecessary whitespace change.
> 
> > +#define B43_DMAIRQ_RDESC_UFLOW  (1 << 13)
> 
> Why not just rename B43_DMAIRQ_NONFATALMASK ?
> 
> >
> >  /*** 32-bit DMA Engine. ***/
> >
> > @@ -295,6 +296,8 @@
> >  void b43_dma_handle_txstatus(struct b43_wldev *dev,
> >                               const struct b43_txstatus *status);
> >
> > +void b43_dma_rx_discard(struct b43_dmaring *ring);
> > +
> >  void b43_dma_rx(struct b43_dmaring *ring);
> >
> >  void b43_dma_direct_fifo_rx(struct b43_wldev *dev,
> >
> > Index: drivers/net/wireless/b43/main.c
> > ===================================================================
> > --- compat-wireless-2012-09-07.orig/drivers/net/wireless/b43/main.c
> > 2013-04-09 17:33:54.325322046 +0200
> > +++ compat-wireless-2012-09-07/drivers/net/wireless/b43/main.c
> > 2013-04-09 18:08:01.011471215 +0200
> > @@ -1894,14 +1894,6 @@
> >                          b43_controller_restart(dev, "DMA error");
> >                          return;
> >                  }
> > -                if (merged_dma_reason & B43_DMAIRQ_NONFATALMASK) {
> > -                        b43err(dev->wl, "DMA error: "
> > -                               "0x%08X, 0x%08X, 0x%08X, "
> > -                               "0x%08X, 0x%08X, 0x%08X\n",
> > -                               dma_reason[0], dma_reason[1],
> > -                               dma_reason[2], dma_reason[3],
> > -                               dma_reason[4], dma_reason[5]);
> > -                }
> 
> You should say why you remove this one, and you should remove the
> B43_DMAIRQ_NONFATALMASK from the if (unlikely()) enclosing it.
> 
> >          }
> >
> >          if (unlikely(reason & B43_IRQ_UCODE_DEBUG))
> > @@ -1920,6 +1912,14 @@
> >                  handle_irq_noise(dev);
> >
> >          /* Check the DMA reason registers for received data. */
> > +        if (dma_reason[0] & B43_DMAIRQ_RDESC_UFLOW) {
> > +           //only print 256 time to not flood log
> > +           if(!(dev->stats.rxdesc_underruns++&0xFF)){
> > +                        b43warn(dev->wl, "Rx descriptor underrun
> > (high cpu load?), throwing packets\n");
> 
> Apart from the style problems, maybe doing a
> 	if (printk_ratelimit())
> 		b43warn(...);
> 
> which will ensure that it won't flood the log, but still won't stop
> reporting them after the 256th time.
> 
> 
> > +           }
> > +           b43_dma_rx_discard(dev->dma.rx_ring);
> > +
> > +        }
> >          if (dma_reason[0] & B43_DMAIRQ_RX_DONE) {
> >                  if (b43_using_pio_transfers(dev))
> >                          b43_pio_rx(dev->pio.rx_queue);
> > @@ -1977,7 +1977,7 @@
> >                  return IRQ_NONE;
> >
> >          dev->dma_reason[0] = b43_read32(dev, B43_MMIO_DMA0_REASON)
> > -            & 0x0001DC00;
> > +            & 0x0001FC00;
> >          dev->dma_reason[1] = b43_read32(dev, B43_MMIO_DMA1_REASON)
> >              & 0x0000DC00;
> >          dev->dma_reason[2] = b43_read32(dev, B43_MMIO_DMA2_REASON)
> > @@ -3081,7 +3081,7 @@
> >                  b43_write32(dev, 0x018C, 0x02000000);
> >          }
> >          b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, 0x00004000);
> > -        b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001DC00);
> > +        b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001FC00);
> >          b43_write32(dev, B43_MMIO_DMA1_IRQ_MASK, 0x0000DC00);
> >          b43_write32(dev, B43_MMIO_DMA2_IRQ_MASK, 0x0000DC00);
> >          b43_write32(dev, B43_MMIO_DMA3_IRQ_MASK, 0x0001DC00);
> >
> > ===================================================================
> > --- compat-wireless-2012-09-07.orig/drivers/net/wireless/b43/b43.h
> > 2013-04-09 17:04:51.552680190 +0200
> > +++ compat-wireless-2012-09-07/drivers/net/wireless/b43/b43.h
> > 2013-04-09 17:46:08.472962612 +0200
> > @@ -671,6 +671,7 @@
> >
> >  struct b43_stats {
> >          u8 link_noise;
> > +        u32 rxdesc_underruns;
> >  };
> >
> >  struct b43_key {
> 
> 
> Jonas
> 
