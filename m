From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 10 May 2014 17:17:21 +0200
Subject: [RFC][PATCH] b43: drop SSB dependency
In-Reply-To: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
References: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
Message-ID: <20140510171721.54b21a63@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sat, 10 May 2014 16:44:48 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

>  config B43_BCMA
> -	bool "Support for BCMA bus"
> -	depends on B43 && (BCMA = y || BCMA = B43)
> -	default y
> +	bool
> +	depends on B43

A dependency on a purely selected option is ignored.
So I think you can remove this one as well.

>  config B43_SSB
>  	bool
> -	depends on B43 && (SSB = y || SSB = B43)
> -	default y
> +	depends on B43

Same here.

> +choice
> +	prompt "Supported bus types"
> +	depends on B43
> +	default B43_BCMA_AND_SSB
> +
> +config B43_BUSES_BCMA_AND_SSB
> +	bool "BCMA and SSB"
> +	depends on BCMA_POSSIBLE && SSB_POSSIBLE

I think this needs to be:

	depends on (BCMA_POSSIBLE && (BCMA = y || BCMA = B43)) && (SSB_POSSIBLE && (SSB = y || SSB = B43))

to avoid the case where b43 is y and ssb or bcma is m.
Or did I miss something and this is caught elsewhere?

> +	select B43_BCMA
> +	select B43_SSB
> +
> +config B43_BUSES_BCMA
> +	bool "BCMA only"
> +	depends on BCMA_POSSIBLE

Similar here.

> +	select B43_BCMA
> +
> +config B43_BUSES_SSB
> +	bool "SSB only"
> +	depends on SSB_POSSIBLE

And here.

> +	select B43_SSB
> +
> +endchoice


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
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140510/bfdab95b/attachment.sig>
