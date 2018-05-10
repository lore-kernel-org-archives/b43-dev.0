From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 10 May 2018 13:15:22 +0200
Subject: [PATCH v2] drivers/net/wireless/broadcom/b43: fix transmit
 failure when VT is switched
In-Reply-To: <5AF41F55.4060606@sra-tohoku.co.jp>
References: <5AF2DE73.20608@sra-tohoku.co.jp> <20180509185101.0888bd7a@wiggum>
 <5AF41F55.4060606@sra-tohoku.co.jp>
Message-ID: <20180510131522.0ac08f84@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Taketo Kabe <kabe@sra-tohoku.co.jp>, kvalo@codeaurora.org
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Thu, 10 May 2018 19:30:45 +0900
Taketo Kabe <kabe@sra-tohoku.co.jp> wrote:

> Signed-off-by: Taketo Kabe <kabe@sra-tohoku.co.jp>
> ---
> diff -up ./drivers/net/wireless/broadcom/b43/dma.c.b43 ./drivers/net/wireless/broadcom/b43/dma.c
> --- ./drivers/net/wireless/broadcom/b43/dma.c.b43	2018-05-04 15:18:12.000000000 +0900
> +++ ./drivers/net/wireless/broadcom/b43/dma.c	2018-05-10 18:46:36.000000000 +0900
> @@ -1484,7 +1484,7 @@ void b43_dma_handle_txstatus(struct b43_
>   	int slot, firstused;
>   	bool frame_succeed;
>   	int skip;
> -	static u8 err_out1, err_out2;
> +	static u8 err_out1;
> 
>   	ring = parse_cookie(dev, status->cookie, &slot);
>   	if (unlikely(!ring))
> @@ -1518,13 +1518,13 @@ void b43_dma_handle_txstatus(struct b43_
>   			}
>   		} else {
>   			/* More than a single header/data pair were missed.
> -			 * Report this error once.
> +			 * Report this error, and reset the controller to
> +			 * revive operation.
>   			 */
> -			if (!err_out2)
> -				b43dbg(dev->wl,
> -				       "Out of order TX status report on DMA ring %d. Expected %d, but got %d\n",
> -				       ring->index, firstused, slot);
> -			err_out2 = 1;
> +			b43dbg(dev->wl,
> +			       "Out of order TX status report on DMA ring %d. Expected %d, but got %d\n",
> +			       ring->index, firstused, slot);
> +			b43_controller_restart(dev, "Out of order TX");
>   			return;
>   		}
>   	}


Reviewed-by: Michael B?sch <m@bues.ch>

I think this is a good thing to have.
It improves robustness against firmware/DMA misbehavior.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20180510/4c3fee2e/attachment.sig>
