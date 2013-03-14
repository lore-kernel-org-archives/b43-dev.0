From: ISE Development <isedev@gmail.com>
Date: Thu, 14 Mar 2013 21:58:18 +0100
Subject: [RFT][PATCH] b43: DMA: debug rings alignment
In-Reply-To: <1363293681-23385-1-git-send-email-zajec5@gmail.com>
References: <1363293681-23385-1-git-send-email-zajec5@gmail.com>
Message-ID: <8990870.3kQAHQdGWn@wks001.ise.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thursday 14 Mar 2013 21:41:21 Rafa? Mi?ecki wrote:
> index 38bc5a7..30da6ce 100644
> --- a/drivers/net/wireless/b43/dma.c
> +++ b/drivers/net/wireless/b43/dma.c
> @@ -915,6 +915,21 @@ struct b43_dmaring *b43_setup_dmaring(struct b43_wldev
> *dev, ring->last_injected_overflow = jiffies;
>  #endif
>  
> +       if (type == B43_DMA_64BIT) {
> +               u32 tmp;
> +               if (for_tx) {
> +                       b43_write32(dev, ring->mmio_base +
> B43_DMA64_TXRINGLO, 0xff0); +                       tmp = b43_read32(dev,
> ring->mmio_base + B43_DMA64_TXRINGLO);
> +                       pr_info("[DBG] Testing TX on ring 0x%X: 0x%X\n",
> ring->mmio_base, tmp); +               } else {
> +                       b43_write32(dev, ring->mmio_base +
> B43_DMA64_RXRINGLO, 0xff0); +                       tmp = b43_read32(dev,
> ring->mmio_base + B43_DMA64_RXRINGLO);
> +                       pr_info("[DBG] Testing RX on ring 0x%X: 0x%X\n",
> ring->mmio_base, tmp); +               }
> +       } else {
> +               pr_err("[DBG] Whoops, it's not 64b DMA engine!\n");
> +       }
> +
>         if (for_tx) {
>                 /* Assumption: B43_TXRING_SLOTS can be divided by
> TX_SLOTS_PER_FRAME */ BUILD_BUG_ON(B43_TXRING_SLOTS % TX_SLOTS_PER_FRAME !=
> 0);

Will start testing now...

-- 
-- isedev
