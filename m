From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Sun, 04 Jul 2010 15:07:11 +0200
Subject: [PATCH] b43-fwcutter: add firmware 508.1084
In-Reply-To: <1278248157-23394-1-git-send-email-hauke@hauke-m.de>
	(sfid-20100704_145615_766041_36FBC613)
References: <1278248157-23394-1-git-send-email-hauke@hauke-m.de>
	(sfid-20100704_145615_766041_36FBC613)
Message-ID: <4C30877F.3030808@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/04/2010 02:55 PM, Hauke Mehrtens wrote:
> Signed-off-by: Hauke Mehrtens<hauke@hauke-m.de>
> ---

Could you write a _few_ more lines on where this firmware is from, how 
you generated the table and why one would want to use this firmware 
instead of some other version?

>   fwcutter/fwcutter_list.h |   73 ++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 73 insertions(+), 0 deletions(-)
>
> diff --git a/fwcutter/fwcutter_list.h b/fwcutter/fwcutter_list.h
> index 5175bbd..2edf799 100644
> --- a/fwcutter/fwcutter_list.h
> +++ b/fwcutter/fwcutter_list.h
> @@ -340,6 +340,70 @@ static struct extract _bb8537e3204a1ea5903fe3e66b5e2763[] =
>   	EXTRACT_LIST_END
>   };
>
> +static struct extract _339895eadf0ef3cebe337d060ce9b30c[] =
> +{
> +	/* ucode major version at offset 0xa5c00 */
> +	/* ucode minor version at offset 0xa5c04 */
> +	/* { .name = "ucode4", .offset = 0xB6B68, .type = EXT_UCODE_1, .length = 0x4E80 }, */
> +	/* { .name = "pcm4", .offset = 0x124AEC, .type = EXT_PCM, .length = 0x520 }, */
> +	/* { .name = "b0g0initvals4", .offset = 0xA5C08, .type = EXT_IV, .length = 0xE70 }, */
> +	/* { .name = "a0g0bsinitvals4", .offset = 0xA7930, .type = EXT_IV, .length = 0x30 }, */
> +	/* { .name = "b0g0bsinitvals4", .offset = 0xA6A80, .type = EXT_IV, .length = 0x30 }, */
> +	/* { .name = "a0g0initvals4", .offset = 0xA6AB8, .type = EXT_IV, .length = 0xE70 }, */
> +	{ .name = "ucode19", .offset = 0x1114BC, .type = EXT_UCODE_3, .length = 0x9998 },
> +	{ .name = "lp0initvals14", .offset = 0xAFAC8, .type = EXT_IV, .length = 0xB20 },
> +	{ .name = "ucode16_lp", .offset = 0xE46F4, .type = EXT_UCODE_3, .length = 0x9D90 },
> +	{ .name = "ucode16_sslpn", .offset = 0xEE488, .type = EXT_UCODE_3, .length = 0x8936 },
> +	{ .name = "lp0bsinitvals14", .offset = 0xB05F0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "b0g0initvals9", .offset = 0xA9AF8, .type = EXT_IV, .length = 0xAE0 },
> +	{ .name = "sslpn2bsinitvals17", .offset = 0xB4DE8, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "a0g1bsinitvals9", .offset = 0xABDF0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "b0g0bsinitvals13", .offset = 0xAED00, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode16_sslpn_nobt", .offset = 0xF6DC4, .type = EXT_UCODE_3, .length = 0x7413 },
> +	{ .name = "b0g0bsinitvals5", .offset = 0xA8378, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "sslpn2initvals17", .offset = 0xB4120, .type = EXT_IV, .length = 0xCC0 },
> +	{ .name = "b0g0initvals13", .offset = 0xAE178, .type = EXT_IV, .length = 0xB80 },
> +	{ .name = "ucode17", .offset = 0x107C50, .type = EXT_UCODE_3, .length = 0x9868 },
> +	{ .name = "sslpn1bsinitvals20", .offset = 0xB6A48, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode14", .offset = 0xD5964, .type = EXT_UCODE_2, .length = 0x64A0 },
> +	{ .name = "a0g0initvals5", .offset = 0xA8498, .type = EXT_IV, .length = 0xA08 },
> +	{ .name = "lp0bsinitvals16", .offset = 0xB4000, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "a0g1bsinitvals5", .offset = 0xA99D8, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "n0bsinitvals11", .offset = 0xACA90, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "n0absinitvals11", .offset = 0xACBB0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "a0g1bsinitvals13", .offset = 0xAF9A8, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "pcm5", .offset = 0x125010, .type = EXT_PCM, .length = 0x520 },
> +	{ .name = "ucode9", .offset = 0xC1100, .type = EXT_UCODE_2, .length = 0x6268 },
> +	{ .name = "a0g0bsinitvals9", .offset = 0xABCD0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode20", .offset = 0x11AE58, .type = EXT_UCODE_3, .length = 0x9C90 },
> +	{ .name = "a0g1initvals5", .offset = 0xA8EA8, .type = EXT_IV, .length = 0xA08 },
> +	{ .name = "n0bsinitvals16", .offset = 0xB22D0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "lp0initvals15", .offset = 0xB0710, .type = EXT_IV, .length = 0xD20 },
> +	{ .name = "b0g0initvals5", .offset = 0xA7968, .type = EXT_IV, .length = 0xA08 },
> +	{ .name = "sslpn0initvals16", .offset = 0xB23F0, .type = EXT_IV, .length = 0xD70 },
> +	{ .name = "a0g1initvals13", .offset = 0xAEE20, .type = EXT_IV, .length = 0xB80 },
> +	{ .name = "sslpn2initvals19", .offset = 0xB4F08, .type = EXT_IV, .length = 0xCB0 },
> +	{ .name = "a0g1initvals9", .offset = 0xAB1E8, .type = EXT_IV, .length = 0xAE0 },
> +	{ .name = "ucode5", .offset = 0xBB9EC, .type = EXT_UCODE_2, .length = 0x5710 },
> +	{ .name = "lp0bsinitvals13", .offset = 0xAE058, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "n0initvals16", .offset = 0xB1558, .type = EXT_IV, .length = 0xD70 },
> +	{ .name = "b0g0bsinitvals9", .offset = 0xAA5E0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode11", .offset = 0xC736C, .type = EXT_UCODE_2, .length = 0x74A8 },
> +	{ .name = "lp0initvals16", .offset = 0xB3288, .type = EXT_IV, .length = 0xD70 },
> +	{ .name = "ucode16_mimo", .offset = 0xFE1DC, .type = EXT_UCODE_3, .length = 0x9A70 },
> +	{ .name = "a0g0initvals9", .offset = 0xAA700, .type = EXT_IV, .length = 0xAE0 },
> +	{ .name = "lp0initvals13", .offset = 0xACCD0, .type = EXT_IV, .length = 0x1380 },
> +	{ .name = "a0g0bsinitvals5", .offset = 0xA98B8, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode13", .offset = 0xCE818, .type = EXT_UCODE_2, .length = 0x7148 },
> +	{ .name = "sslpn2bsinitvals19", .offset = 0xB5BC0, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "ucode15", .offset = 0xDBE08, .type = EXT_UCODE_3, .length = 0x88E8 },
> +	{ .name = "lp0bsinitvals15", .offset = 0xB1438, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "n0initvals11", .offset = 0xABF10, .type = EXT_IV, .length = 0xB78 },
> +	{ .name = "sslpn0bsinitvals16", .offset = 0xB3168, .type = EXT_IV, .length = 0x118 },
> +	{ .name = "sslpn1initvals20", .offset = 0xB5CE0, .type = EXT_IV, .length = 0xD60 },
> +	EXTRACT_LIST_END
> +};
> +
>   /*
>    * Links change, so let's not put them into the README.
>    * I still put them here so we know where the file was obtained.
> @@ -419,4 +483,13 @@ static const struct file files[] =
>   		.flags		= FW_FLAG_LE | FW_FLAG_V4,
>   		.extract	= _bb8537e3204a1ea5903fe3e66b5e2763,
>   	},
> +	{
> +		/* http://mirror2.openwrt.org/sources/broadcom-wl-5.10.56.27.0.tar.bz2 */
> +		.name		= "wl_prebuilt.o",
> +		.id		= "FW16",
> +		.ucode_version	= "508.1084",
> +		.md5		= "339895eadf0ef3cebe337d060ce9b30c",
> +		.flags		= FW_FLAG_LE | FW_FLAG_V4,
> +		.extract	= _339895eadf0ef3cebe337d060ce9b30c,
> +	},
>   };


-- 
Greetings Michael.
