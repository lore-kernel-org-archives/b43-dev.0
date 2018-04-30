From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 30 Apr 2018 10:27:20 +0000 (UTC)
Subject: net: wireless: b43legacy: Replace GFP_ATOMIC with GFP_KERNEL in
 dma_tx_fragment
In-Reply-To: <1523368459-32128-1-git-send-email-baijiaju1990@gmail.com>
References: <1523368459-32128-1-git-send-email-baijiaju1990@gmail.com>
Message-ID: <20180430102720.A86B260767@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org

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

Patch applied to wireless-drivers-next.git, thanks.

6e1d8d1470b2 net: wireless: b43legacy: Replace GFP_ATOMIC with GFP_KERNEL in dma_tx_fragment

-- 
https://patchwork.kernel.org/patch/10333217/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
