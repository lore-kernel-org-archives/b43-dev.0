From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 25 Sep 2017 08:30:45 +0000 (UTC)
Subject: b43: make const arrays static, reduces object code size
In-Reply-To: <20170922153902.15372-1-colin.king@canonical.com>
References: <20170922153902.15372-1-colin.king@canonical.com>
Message-ID: <20170925083045.14D4F6099A@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin Ian King <colin.king-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Colin Ian King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate const arrays on the stack, instead make them static.
> Makes the object code smaller by over 60 bytes:
> 
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   14816	   1296	      0	  16112	   3ef0	b43/phy_ht.o
> 
> After:
>    text	   data	    bss	    dec	    hex	filename
>   14551	   1496	      0	  16047	   3eaf	b43/phy_ht.o
> 
> (gcc 6.3.0, x86-64)
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Patch applied to wireless-drivers-next.git, thanks.

96cbe3d638e4 b43: make const arrays static, reduces object code size

-- 
https://patchwork.kernel.org/patch/9966415/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
