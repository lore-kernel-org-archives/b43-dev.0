From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 26 Dec 2011 11:51:40 -0600
Subject: [PATCH] b43: fix regression in PIO case
In-Reply-To: <alpine.DEB.2.00.1112261824000.12108@axis700.grange>
References: <alpine.DEB.2.00.1112261608140.12108@axis700.grange>
 <alpine.DEB.2.00.1112261824000.12108@axis700.grange>
Message-ID: <4EF8B42C.2020402@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, b43-dev <b43-dev@lists.infradead.org>

On 12/26/2011 11:28 AM, Guennadi Liakhovetski wrote:
> This patch fixes the regression, introduced by
>
> commit 17030f48e31adde5b043741c91ba143f5f7db0fd
> From: Rafa? Mi?ecki<zajec5@gmail.com>
> Date: Thu, 11 Aug 2011 17:16:27 +0200
> Subject: [PATCH] b43: support new RX header, noticed to be used in 598.314+ fw
>
> in PIO case.
>
> Signed-off-by: Guennadi Liakhovetski<g.liakhovetski@gmx.de>
> ---
> diff --git a/drivers/net/wireless/b43/pio.c b/drivers/net/wireless/b43/pio.c
> index ce8a4bd..b64b64c 100644
> --- a/drivers/net/wireless/b43/pio.c
> +++ b/drivers/net/wireless/b43/pio.c
> @@ -617,9 +617,19 @@ static bool pio_rx_frame(struct b43_pio_rxqueue *q)
>   	const char *err_msg = NULL;
>   	struct b43_rxhdr_fw4 *rxhdr =
>   		(struct b43_rxhdr_fw4 *)wl->pio_scratchspace;
> +	size_t rxhdr_size = sizeof(*rxhdr);
>
>   	BUILD_BUG_ON(sizeof(wl->pio_scratchspace)<  sizeof(*rxhdr));
> -	memset(rxhdr, 0, sizeof(*rxhdr));
> +	switch (dev->fw.hdr_format) {
> +	case B43_FW_HDR_410:
> +	case B43_FW_HDR_351:
> +		rxhdr_size -= sizeof(rxhdr->format_598) -
> +			sizeof(rxhdr->format_351);
> +		break;
> +	case B43_FW_HDR_598:
> +		break;
> +	}

I do not think the above will work for format_410. By my count, the format_410 
struct is 4 bytes longer than the format_351 struct.

Even if it does work, I suggest using the following:

	size_t rxhdr_size;

    	BUILD_BUG_ON(sizeof(wl->pio_scratchspace)<  sizeof(*rxhdr));
	switch (dev->fw.hdr_format) {
	case B43_FW_HDR_351:
		rxhdr_size = sizeof(rxhdr->format_351);
		break;
	case B43_FW_HDR_410:
etc.


Larry
