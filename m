From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 24 Aug 2011 18:06:11 +0200
Subject: [RFT][PATCH] b43: use 8K buffers for 64-bit DMA to workaround
	hardware bug
In-Reply-To: <1314201438-12125-1-git-send-email-zajec5@gmail.com>
References: <1314201438-12125-1-git-send-email-zajec5@gmail.com>
Message-ID: <20110824180611.36af5a83@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>

On Wed, 24 Aug 2011 17:57:18 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> +	/* For unknown reasons - possibly a hardware error - the BCM4311 rev
>  	 * 02, which uses 64-bit DMA, needs the ring buffer in very low memory,
>  	 * which accounts for the GFP_DMA flag below.
> -	 *
> -	 * The flags here must match the flags in free_ringmemory below!
>  	 */
> +	gfp_t flags = GFP_KERNEL;
>  	if (ring->type == B43_DMA_64BIT)
>  		flags |= GFP_DMA;


Did somebody actually re-evaluate this?
I still believe that this is not a hardware error, but rather a software
bug in the DMA allocator that probably is fixed already.

Larry, I think you added this. Do you still have the device that triggered this?

-- 
Greetings, Michael.
