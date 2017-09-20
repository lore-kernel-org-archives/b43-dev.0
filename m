From: Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 20 Sep 2017 12:41:24 +0000 (UTC)
Subject: [1/2] b43: fix unitialized reads of ret by initializing the array
 to zero
In-Reply-To: <20170905181550.23839-1-colin.king@canonical.com>
References: <20170905181550.23839-1-colin.king@canonical.com>
Message-ID: <20170920124124.5440D60724@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin Ian King <colin.king-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Colin Ian King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The u8 char array ret is not being initialized and elements outside
> the range start to end contain just garbage values from the stack.
> This results in a later scan of the array to read potentially
> uninitialized values.  Fix this by initializing the array to zero.
> This seems to have been an issue since the very first commit.
> 
> Detected by CoverityScan CID#139652 ("Uninitialized scalar variable")
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Reviewed-by: Michael Buesch <m@bues.ch>

2 patches applied to wireless-drivers-next.git, thanks.

e31fbe1034d9 b43: fix unitialized reads of ret by initializing the array to zero
e3ae1c772046 b43legacy: fix unitialized reads of ret by initializing the array to zero

-- 
https://patchwork.kernel.org/patch/9939435/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
