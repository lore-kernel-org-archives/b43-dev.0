From: Antonio Quartulli <antonio@meshcoding.com>
Date: Tue, 20 May 2014 08:48:00 +0200
Subject: [PATCH] b43: xmit: set 5 GHz bit depending on current band
In-Reply-To: <1400568385-26182-1-git-send-email-zajec5@gmail.com>
References: <1400568385-26182-1-git-send-email-zajec5@gmail.com>
Message-ID: <537AFAA0.3070401@meshcoding.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

Hi,

On 20/05/14 08:46, Rafa? Mi?ecki wrote:
> --- a/drivers/net/wireless/b43/xmit.c
> +++ b/drivers/net/wireless/b43/xmit.c
> -	if (phy->type == B43_PHYTYPE_A)
> +	if (!phy->gmode)
>  		mac_ctl |= B43_TXH_MAC_5GHZ;

I am not familiar with this driver, but wouldn't 11b mode fall in this
case as well ?

Cheers,

-- 
Antonio Quartulli

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 901 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140520/6df9551c/attachment.sig>
