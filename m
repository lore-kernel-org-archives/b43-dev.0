From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Sat, 19 Jun 2010 15:58:03 +0200
Subject: [PATCH] b43: Clarify logged message after fatal DMA error and
	switch to PIO mode
In-Reply-To: <4c1cc624.Whz955JR9XYzqjst%Larry.Finger@lwfinger.net>
	(sfid-20100619_092826_081651_5DC597B3)
References: <4c1cc624.Whz955JR9XYzqjst%Larry.Finger@lwfinger.net>
	(sfid-20100619_092826_081651_5DC597B3)
Message-ID: <4C1CCCEB.5040600@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/19/2010 03:29 PM, Larry Finger wrote:
> The message following fatal DMA errors fails to indicate properly that the
> driver has switched to PIO mode.
>
> Signed-off-by: Larry Finger<Larry.Finger@wfinger.net>
> ---
>
> Index: wireless-testing/drivers/net/wireless/b43/main.c
> ===================================================================
> --- wireless-testing.orig/drivers/net/wireless/b43/main.c
> +++ wireless-testing/drivers/net/wireless/b43/main.c
> @@ -1804,7 +1804,7 @@ static void b43_do_interrupt_thread(stru
>   			       dma_reason[2], dma_reason[3],
>   			       dma_reason[4], dma_reason[5]);
>   			b43err(dev->wl, "This device does not support DMA "
> -			       "on your system. Please use PIO instead.\n");
> +			       "on your system. It will now be switched to PIO.\n");
>   			/* Fall back to PIO transfers if we get fatal DMA errors! */
>   			dev->use_pio = 1;
>   			b43_controller_restart(dev, "DMA error");
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>

Ack.

But what's the current status of the debugging of the PCI-core code 
w.r.t DMA?

-- 
Greetings Michael.
