From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 20 Aug 2011 10:16:07 +0200
Subject: [PATCH] b43-fwcutter: Add 5 new drivers to cut list
In-Reply-To: <4e4f2b3d.m8ILqoBBdmdbeg9f%Larry.Finger@lwfinger.net>
References: <4e4f2b3d.m8ILqoBBdmdbeg9f%Larry.Finger@lwfinger.net>
Message-ID: <20110820101607.2fa0e6c1@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 19 Aug 2011 22:34:21 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

>  /*
>   * Links change, so let's not put them into the README.
>   * I still put them here so we know where the file was obtained.
> @@ -456,24 +824,6 @@ static const struct file files[] =
>  		.extract	= _cb8d70972b885b1f8883b943c0261a3c,
>  	},
>  	{
> -		/* ftp://ftp.linksys.com/opensourcecode/wrt610n/1.00.00.018/wrt610n_v1.00.00.018_us.tgz */
> -		.name		= "wl.o",
> -		.id		= "FW14",
> -		.ucode_version	= "478.104",
> -		.md5		= "2dd738b8feb8b3559fd9d8fbaf3bfffc",
> -		.flags		= FW_FLAG_LE | FW_FLAG_V4 | FW_FLAG_UNSUPPORTED,
> -		.extract	= _2dd738b8feb8b3559fd9d8fbaf3bfffc,
> -	},
> -	{
> -		/* ftp://downloads.netgear.com/files/GPL/WNDR3300-V1.0.29_gpl_src.zip */
> -		.name		= "wl_apsta.o",
> -		.id		= "FW15",
> -		.ucode_version	= "478.104",
> -		.md5		= "1a258b2d93efa641c32ddf3c3a962028",
> -		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> -		.extract	= _1a258b2d93efa641c32ddf3c3a962028,
> -	},
> -	{
>  		/* http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2 */
>  		.name		= "wl_apsta.o",
>  		.id		= "FW15",
> @@ -491,4 +841,49 @@ static const struct file files[] =
>  		.flags		= FW_FLAG_LE | FW_FLAG_V4,
>  		.extract	= _490d4e149ecc45eb1a91f06aa75be071,
>  	},
> +	{
> +		/* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.56.51.tar.bz2 */
> +		.name		= "wl_apsta.o",
> +		.id		= "FW15",

Please assign different IDs for all of these. Start with the first unused (FW16)
and increment monotonically for each added firmware.
(The existing FW15 entries are wrong, too, but I didn't notice that)

> +		.ucode_version	= "508.1107",
> +		.md5		= "f06c8aa30ea549ce21872d10ee9a7d48",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _f06c8aa30ea549ce21872d10ee9a7d48,
> +	},
> +	{
> +		/* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.56.2808.tar.bz2 */
> +		.name		= "wl_apsta.o",
> +		.id		= "FW15",
> +		.ucode_version	= "508.10872",
> +		.md5		= "e413c0017b99195f3231201c53f314d1",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _e413c0017b99195f3231201c53f314d1,
> +	},
> +	{
> +		/* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.144.3.tar.bz2 */
> +		.name		= "wl_apsta.o",
> +		.id		= "FW15",
> +		.ucode_version	= "508.154",
> +		.md5		= "023fafbe4918e384dd531a046dbc03e8",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _023fafbe4918e384dd531a046dbc03e8,
> +	},
> +	{
> +		/* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.104.2.tar.bz2 */
> +		.name		= "wl_apsta.o",
> +		.id		= "FW15",
> +		.ucode_version	= "644.1001",
> +		.md5		= "68f38d139b1f69f3ea12393fb645c6f9",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _68f38d139b1f69f3ea12393fb645c6f9,
> +	},
> +	{
> +		/* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2 */
> +		.name		= "wl_apsta.o",
> +		.id		= "FW15",
> +		.ucode_version	= "666.2",
> +		.md5		= "e1b05e268bcdbfef3560c28fc161f30e",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _e1b05e268bcdbfef3560c28fc161f30e,
> +	},
>  };
> Index: fwcutter/Makefile
> ===================================================================
> --- fwcutter.orig/Makefile
> +++ fwcutter/Makefile
> @@ -1,4 +1,4 @@
> -VERSION = 014
> +VERSION = 015
>  
>  # The toolchain definitions
>  CC		= cc
> 



-- 
Greetings, Michael.
