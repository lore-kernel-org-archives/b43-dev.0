From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 18 Feb 2016 17:32:12 +0100
Subject: [PATCH] b43: fix memory leak
In-Reply-To: <1455798876-32186-1-git-send-email-sudipm.mukherjee@gmail.com>
References: <1455798876-32186-1-git-send-email-sudipm.mukherjee@gmail.com>
Message-ID: <20160218173212.03670d97@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, Jia-Ju Bai <baijiaju1990@163.com>

On Thu, 18 Feb 2016 18:04:36 +0530
Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:

> From: Sudip Mukherjee <sudip@vectorindia.org>
> 
> On error we jumped to the label bcma_out and returned the error code but
> we missed freeing dev.
> 
> Signed-off-by: Sudip Mukherjee <sudip@vectorindia.org>
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> index c279211..78f670a 100644
> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -5671,6 +5671,7 @@ static int b43_bcma_probe(struct bcma_device *core)
>  	wl = b43_wireless_init(dev);
>  	if (IS_ERR(wl)) {
>  		err = PTR_ERR(wl);
> +		kfree(dev);
>  		goto bcma_out;
>  	}
>  

We recently had a patch that fixes this, among more leaks. Subject:
[PATCH v2 resend] b43: Fix memory leaks in b43_bus_dev_ssb_init and
b43_bus_dev_bcma_init

Please test that patch instead, so we can finally apply it.

It needs to be tested on both ssb and bcma. Come on. This isn't too
hard. :) Please somebody with any hardware test it. (I currently don't
have any b43 hardware)

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160218/4d19a6dd/attachment.sig>
