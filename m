From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 9 May 2018 18:51:01 +0200
Subject: [PATCH] drivers/net/wireless/broadcom/b43: fix transmit failure
 when VT is switched
In-Reply-To: <5AF2DE73.20608@sra-tohoku.co.jp>
References: <5AF2DE73.20608@sra-tohoku.co.jp>
Message-ID: <20180509185101.0888bd7a@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

thanks for your patch and your analysis of the problem.

On Wed, 09 May 2018 20:41:39 +0900
Taketo Kabe <kabe@sra-tohoku.co.jp> wrote:

> Workaround(1):
> This problem doesn't occur when using propriatory firmware

Please also report this bug to openfwwf.

> Description of the patch:
> This patch will forcibly reset the controller to make it
> work again. Very kludgy and doesn't look right, but
> the traffic will continue to flow.
> 
> Signed-off-by: Taketo Kabe <kabe@sra-tohoku.co.jp>
> ---
> diff -up ./drivers/net/wireless/broadcom/b43/dma.c.b43 ./drivers/net/wireless/broadcom/b43/dma.c
> --- ./drivers/net/wireless/broadcom/b43/dma.c.b43	2018-05-04 15:18:12.000000000 +0900
> +++ ./drivers/net/wireless/broadcom/b43/dma.c	2018-05-04 15:19:24.000000000 +0900
> @@ -1524,7 +1524,9 @@ void b43_dma_handle_txstatus(struct b43_
>  				b43dbg(dev->wl,
>  				       "Out of order TX status report on DMA ring %d. Expected %d, but got %d\n",
>  				       ring->index, firstused, slot);
> -			err_out2 = 1;
> +			/*err_out2 = 1;*/

Please completely remove the variable err_out2, but leave the b43dbg
unconditionally.

> +			/* Reset the controller to revive operation */
> +			b43_controller_restart(dev, "Out of order TX");
>  			return;
>  		}
>  	}


I think this change is fine. It adds some robustness.

Please take care of the above point and resend the patch.
Please also CC linux-wireless at vger.kernel.org and kvalo at codeaurora.org

Thanks for your work. :)

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20180509/22a8223b/attachment.sig>
