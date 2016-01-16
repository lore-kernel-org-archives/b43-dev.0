From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 16 Jan 2016 14:13:21 +0100
Subject: [PATCH v2 resend] b43: Fix memory leaks in b43_bus_dev_ssb_init
 and b43_bus_dev_bcma_init
In-Reply-To: <1452949690-16387-1-git-send-email-baijiaju1990@163.com>
References: <1452949690-16387-1-git-send-email-baijiaju1990@163.com>
Message-ID: <20160116141321.6e0d5a87@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@163.com>
Cc: kvalo@codeaurora.org, zajec5@gmail.com, joe@perches.com, davem@davemloft.net, johannes.berg@intel.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

On Sat, 16 Jan 2016 21:08:10 +0800
Jia-Ju Bai <baijiaju1990@163.com> wrote:

> The memory allocated by kzalloc in b43_bus_dev_ssb_init and
> b43_bus_dev_bcma_init is not freed.
> This patch fixes the bug by adding kfree in b43_ssb_remove,
> b43_bcma_remove and error handling code of b43_bcma_probe.
> 
> Thanks Michael for his suggestion.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> ---
>  drivers/net/wireless/b43/main.c |    6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index ec013fb..bbea769 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -5682,11 +5682,12 @@ static int b43_bcma_probe(struct bcma_device *core)
>  	INIT_WORK(&wl->firmware_load, b43_request_firmware);
>  	schedule_work(&wl->firmware_load);
>  
> -bcma_out:
>  	return err;
>  
>  bcma_err_wireless_exit:
>  	ieee80211_free_hw(wl->hw);
> +bcma_out:
> +	kfree(dev);
>  	return err;
>  }
>  
> @@ -5714,8 +5715,8 @@ static void b43_bcma_remove(struct bcma_device *core)
>  	b43_rng_exit(wl);
>  
>  	b43_leds_unregister(wl);
> -
>  	ieee80211_free_hw(wl->hw);
> +	kfree(wldev->dev);
>  }
>  
>  static struct bcma_driver b43_bcma_driver = {
> @@ -5798,6 +5799,7 @@ static void b43_ssb_remove(struct ssb_device *sdev)
>  
>  	b43_leds_unregister(wl);
>  	b43_wireless_exit(dev, wl);
> +	kfree(dev);
>  }
>  
>  static struct ssb_driver b43_ssb_driver = {


This still needs to be tested on both ssb and bcma devices. As long as
it's untested, there is no need to resend it to the maintainers.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160116/d969dd8e/attachment.sig>
