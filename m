From: John W. Linville <linville@tuxdriver.com>
Date: Tue, 16 Nov 2010 16:23:21 -0500
Subject: [PATCH] ssb: fail registration for unknown SPROM revision
In-Reply-To: <1288823326-9686-2-git-send-email-zajec5@gmail.com>
References: <1288823326-9686-1-git-send-email-zajec5@gmail.com>
	<1288823326-9686-2-git-send-email-zajec5@gmail.com>
Message-ID: <20101116212321.GF10774@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Michael =?iso-8859-1?Q?B=FCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

On Wed, Nov 03, 2010 at 11:28:46PM +0100, Rafa? Mi?ecki wrote:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> As noticed my Michael we have this left from old times of limited amount of
> revisions. It's not reliable to treat unknown as rev1.
> 
> Michael: would you like to add Reported-by?
> 
> John: it's for 2.6.38.
> ---
>  drivers/ssb/pci.c |    8 +++-----
>  1 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/ssb/pci.c b/drivers/ssb/pci.c
> index b5343ac..41a7337 100644
> --- a/drivers/ssb/pci.c
> +++ b/drivers/ssb/pci.c
> @@ -600,11 +600,9 @@ static int sprom_extract(struct ssb_bus *bus, struct ssb_sprom *out,
>  		sprom_extract_r8(out, in);
>  		break;
>  	default:
> -		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
> -			   "  revision %d detected. Will extract"
> -			   " v1\n", out->revision);
> -		out->revision = 1;
> -		sprom_extract_r123(out, in);
> +		ssb_printk(KERN_ERR PFX "Unsupported SPROM revision %d"
> +			   " detected\n", out->revision);
> +		return -EINVAL;
>  	}
>  
>  	if (out->boardflags_lo == 0xFFFF)

I think this is going to make my b43 PCI-E card not work...I'll try
it and get back to you...

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
