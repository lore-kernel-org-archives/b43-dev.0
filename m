From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Sat, 19 Jun 2010 16:01:07 +0200
Subject: [PATCH] b43: Clarify logged message after fatal DMA error and
	switch to PIO mode
In-Reply-To: <4c1cc624.Whz955JR9XYzqjst%Larry.Finger@lwfinger.net>
	(sfid-20100619_152832_048688_17D51150)
References: <4c1cc624.Whz955JR9XYzqjst%Larry.Finger@lwfinger.net>
	(sfid-20100619_152832_048688_17D51150)
Message-ID: <4C1CCDA3.40502@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

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

Ack.

But what's the current status of the debugging of the PCI-core code 
w.r.t DMA?

-- 
Greetings Michael.
