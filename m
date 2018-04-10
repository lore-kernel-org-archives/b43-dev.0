From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 10 Apr 2018 18:57:56 +0200
Subject: [PATCH] net: wireless: b43legacy: Replace GFP_ATOMIC with
 GFP_KERNEL in dma_tx_fragment
In-Reply-To: <1523368459-32128-1-git-send-email-baijiaju1990@gmail.com>
References: <1523368459-32128-1-git-send-email-baijiaju1990@gmail.com>
Message-ID: <20180410185756.35d4f601@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Cc: Larry.Finger@lwfinger.net, kvalo@codeaurora.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org

On Tue, 10 Apr 2018 21:54:19 +0800
Jia-Ju Bai <baijiaju1990@gmail.com> wrote:

> dma_tx_fragment() is never called in atomic context.
> 
> dma_tx_fragment() is only called by b43legacy_dma_tx(), which is 
> only called by b43legacy_tx_work().
> b43legacy_tx_work() is only set a parameter of INIT_WORK() in 
> b43legacy_wireless_init().
> 
> Despite never getting called from atomic context,
> dma_tx_fragment() calls alloc_skb() with GFP_ATOMIC,
> which does not sleep for allocation.
> GFP_ATOMIC is not necessary and can be replaced with GFP_KERNEL,
> which can sleep and improve the possibility of sucessful allocation.
> 
> This is found by a static analysis tool named DCNS written by myself.
> And I also manually check it.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
>  drivers/net/wireless/broadcom/b43legacy/dma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
> index cfa617d..2f0c64c 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/dma.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
> @@ -1064,7 +1064,7 @@ static int dma_tx_fragment(struct b43legacy_dmaring *ring,
>  	meta->dmaaddr = map_descbuffer(ring, skb->data, skb->len, 1);
>  	/* create a bounce buffer in zone_dma on mapping failure. */
>  	if (b43legacy_dma_mapping_error(ring, meta->dmaaddr, skb->len, 1)) {
> -		bounce_skb = alloc_skb(skb->len, GFP_ATOMIC | GFP_DMA);
> +		bounce_skb = alloc_skb(skb->len, GFP_KERNEL | GFP_DMA);
>  		if (!bounce_skb) {
>  			ring->current_slot = old_top_slot;
>  			ring->used_slots = old_used_slots;


Ack.
I think the GFP_ATOMIC came from the days where we did DMA operations
under spinlock instead of mutex.

The same thing can be done in b43.

Also 
setup_rx_descbuffer(ring, desc, meta, GFP_ATOMIC)
could be GFP_KERNEL in dma_rx().
This function is called from IRQ thread context.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20180410/8729a971/attachment.sig>
