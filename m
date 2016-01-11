From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 11 Jan 2016 17:21:53 +0100
Subject: [PATCH] b43: Fix a memory leak in b43_bus_dev_ssb_init
In-Reply-To: <1452483457-568-1-git-send-email-baijiaju1990@163.com>
References: <1452483457-568-1-git-send-email-baijiaju1990@163.com>
Message-ID: <20160111172153.37a9613f@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@163.com>
Cc: kvalo@codeaurora.org, zajec5@gmail.com, joe@perches.com, davem@davemloft.net, johannes.berg@intel.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On Mon, 11 Jan 2016 11:37:36 +0800
Jia-Ju Bai <baijiaju1990@163.com> wrote:

> The memory allocated by kzalloc in b43_bus_dev_ssb_init is not freed.
> This patch fixes the bug by adding kfree in b43_ssb_remove.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> ---
>  drivers/net/wireless/b43/main.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index ec013fb..6d251a0 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -5798,6 +5798,7 @@ static void b43_ssb_remove(struct ssb_device *sdev)
>  
>  	b43_leds_unregister(wl);
>  	b43_wireless_exit(dev, wl);
> +	kfree(dev);
>  }
>  
>  static struct ssb_driver b43_ssb_driver = {



Nice catch.
The kfree is also missing in b43_bcma_remove().
And also in the error paths of b43_bcma_probe().

Can you please extend the patch to cover these, too?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160111/4c48e701/attachment.sig>
