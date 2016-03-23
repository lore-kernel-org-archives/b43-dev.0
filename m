From: Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 23 Mar 2016 15:51:57 +0000 (UTC)
Subject: b43: Fix memory leaks in b43_bus_dev_ssb_init
 andb43_bus_dev_bcma_init
In-Reply-To: <1457716477-6287-1-git-send-email-sudipm.mukherjee@gmail.com>
Message-ID: <20160323155157.45F8E615D5@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
References: <1457716477-6287-1-git-send-email-sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Jia-Ju Bai <baijiaju1990-9Onoh4P/yGk@public.gmane.org>, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, =?UTF-8?q?Michael=20B=C3=BCsch?= <m@bues.ch>


> From: Jia-Ju Bai <baijiaju1990@163.com>
> 
> The memory allocated by kzalloc in b43_bus_dev_ssb_init and
> b43_bus_dev_bcma_init is not freed.
> This patch fixes the bug by adding kfree in b43_ssb_remove,
> b43_bcma_remove and error handling code of b43_bcma_probe.
> 
> Thanks Michael for his suggestion.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> Acked-by: Michael B??sch <m@bues.ch>
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>

Thanks, applied to wireless-drivers.git.

Kalle Valo
