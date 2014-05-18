From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 18 May 2014 13:53:24 +0200
Subject: [PATCH] b43: make B43_PCMCIA and B43_SDIO depend on B43_SSB
In-Reply-To: <1400413293-25973-1-git-send-email-zajec5@gmail.com>
References: <1400413293-25973-1-git-send-email-zajec5@gmail.com>
Message-ID: <20140518135324.415cf8d4@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Fengguang Wu <fengguang.wu@intel.com>, b43-dev@lists.infradead.org

On Sun, 18 May 2014 13:41:33 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

>  config B43_PCMCIA
>  	bool "Broadcom 43xx PCMCIA device support"
> -	depends on B43 && SSB_PCMCIAHOST_POSSIBLE
> +	depends on B43 && B43_SSB && SSB_PCMCIAHOST_POSSIBLE
>  	select SSB_PCMCIAHOST
>  	---help---
>  	  Broadcom 43xx PCMCIA device support.
> @@ -93,7 +93,7 @@ config B43_PCMCIA
>  
>  config B43_SDIO
>  	bool "Broadcom 43xx SDIO device support"
> -	depends on B43 && SSB_SDIOHOST_POSSIBLE
> +	depends on B43 && B43_SSB && SSB_SDIOHOST_POSSIBLE
>  	select SSB_SDIOHOST
>  	---help---
>  	  Broadcom 43xx device support for Soft-MAC SDIO devices.

This makes sense.
Ack by me.


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
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140518/20367c12/attachment.sig>
