From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 20 Apr 2014 20:54:52 +0200
Subject: [wireless-next][PATCH 1/2] b43: ssb: refuse to support more
 than IEEE 802.11 core
In-Reply-To: <1398018659-17263-1-git-send-email-zajec5@gmail.com>
References: <1398018659-17263-1-git-send-email-zajec5@gmail.com>
Message-ID: <20140420205452.79a95330@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 20 Apr 2014 20:30:58 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index 69fc3d6..cf84cf2 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -5486,39 +5486,42 @@ int b43_ssb_probe(struct ssb_device *sdev, const struct ssb_device_id *id)
>  	struct b43_bus_dev *dev;
>  	struct b43_wl *wl;
>  	int err;
> -	int first = 0;
>  
>  	dev = b43_bus_dev_ssb_init(sdev);
>  	if (!dev)
>  		return -ENOMEM;
>  
>  	wl = ssb_get_devtypedata(sdev);


The whole "struct b43_wl" and "ssb_get_devtypedata" was to support multiple
cores of the same type in a single driver instance (= b43 multicore).
With multicore support being removed, everything in b43_wl could be merged into b43_wldev.
Also the use of ssb_get_devtypedata could probably be removed, too.

This will simplify a lot of the b43 startup and shutdown code.


-- 
Michael.

----
Please use PGP/GPG encryption.
Key-ID: F532BE1D908D8B0E
--------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140420/26c99456/attachment.sig>
