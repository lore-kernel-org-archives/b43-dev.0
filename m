From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 12 Jan 2016 06:44:47 +0100
Subject: [PATCH] b43: Fix memory leaks in b43_bus_dev_ssb_init and
 b43_bus_dev_bcma_init
In-Reply-To: <1452560464-7146-1-git-send-email-baijiaju1990@163.com>
References: <1452560464-7146-1-git-send-email-baijiaju1990@163.com>
Message-ID: <20160112064447.055dcf7f@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@163.com>
Cc: kvalo@codeaurora.org, zajec5@gmail.com, joe@perches.com, davem@davemloft.net, johannes.berg@intel.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On Tue, 12 Jan 2016 09:01:04 +0800
Jia-Ju Bai <baijiaju1990@163.com> wrote:

> The memory allocated by kzalloc in b43_bus_dev_ssb_init and
> b43_bus_dev_bcma_initis not freed.
> This patch fixes the bug by adding kfree in b43_ssb_remove,
> b43_bcma_remove and error handling code of b43_bcma_probe.
> 
> Thanks Michael for his suggestion.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> ---
>  drivers/net/wireless/b43/main.c |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index ec013fb..2c9d9c1 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -5683,6 +5683,7 @@ static int b43_bcma_probe(struct bcma_device *core)
>  	schedule_work(&wl->firmware_load);
>  
>  bcma_out:
> +	kfree(dev);
>  	return err;
>  

This is not correct. It will also free dev for the non-error exit.


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160112/b63a82a1/attachment.sig>
