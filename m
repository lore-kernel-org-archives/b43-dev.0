From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 16 Feb 2011 23:20:56 +0100
Subject: [PATCH 1/2] ssb: trivial: fix SPROM extract warning formatting
In-Reply-To: <1297861106-18739-1-git-send-email-zajec5@gmail.com>
	(sfid-20110216_135811_600712_6253D5CA)
References: <1297861106-18739-1-git-send-email-zajec5@gmail.com>
	(sfid-20110216_135811_600712_6253D5CA)
Message-ID: <1297894856.32237.5.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Wed, 2011-02-16 at 13:58 +0100, Rafa? Mi?ecki wrote: 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>  drivers/ssb/pci.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
> index 158449e..127897c 100644
> --- a/drivers/ssb/pci.c
> +++ b/drivers/ssb/pci.c
> @@ -641,7 +641,7 @@ static int sprom_extract(struct ssb_bus *bus, struct ssb_sprom *out,
>  		break;
>  	default:
>  		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
> -			   "  revision %d detected. Will extract"
> +			   " revision %d detected. Will extract"
>  			   " v1\n", out->revision);
>  		out->revision = 1;
>  		sprom_extract_r123(out, in);

ack for those two patches.

-- 
Greetings Michael.
