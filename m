From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 31 May 2017 17:17:15 +0200
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_attr_interfmode_store
In-Reply-To: <1496226547-5921-1-git-send-email-baijiaju1990@163.com>
References: <1496226547-5921-1-git-send-email-baijiaju1990@163.com>
Message-ID: <20170531171715.58d6c084@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@163.com>
Cc: Larry.Finger@lwfinger.net, kvalo@codeaurora.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org

On Wed, 31 May 2017 18:29:07 +0800
Jia-Ju Bai <baijiaju1990@163.com> wrote:

> The driver may sleep under a spin lock, and the function call path is:
> b43legacy_attr_interfmode_store (acquire the lock by spin_lock_irqsave)
>   b43legacy_radio_set_interference_mitigation
>     b43legacy_radio_interference_mitigation_disable
>       b43legacy_calc_nrssi_slope
>         b43legacy_synth_pu_workaround
>           might_sleep and msleep --> may sleep
> 
> Fixing it may be complex, and a possible way is to remove 
> spin_lock_irqsave and spin_lock_irqrestore in 
> b43legacy_attr_interfmode_store, and the code has been protected by
> mutex_lock and mutex_unlock.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> ---
>  drivers/net/wireless/broadcom/b43legacy/sysfs.c |    2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/sysfs.c b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> index 2a1da15..9ede143 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
> @@ -137,14 +137,12 @@ static ssize_t b43legacy_attr_interfmode_store(struct device *dev,
>  	}
>  
>  	mutex_lock(&wldev->wl->mutex);
> -	spin_lock_irqsave(&wldev->wl->irq_lock, flags);
>  
>  	err = b43legacy_radio_set_interference_mitigation(wldev, mode);
>  	if (err)
>  		b43legacyerr(wldev->wl, "Interference Mitigation not "
>  		       "supported by device\n");
>  	mmiowb();
> -	spin_unlock_irqrestore(&wldev->wl->irq_lock, flags);
>  	mutex_unlock(&wldev->wl->mutex);
>  
>  	return err ? err : count;


Interference mitigation has never been properly implemented and tested.
As such nobody should use it and I would be surprised if anybody uses
this attribute.
So I would suggest to remove this sysfs attribute entirely instead of
having this incorrect fix.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170531/47bfb51a/attachment.sig>
