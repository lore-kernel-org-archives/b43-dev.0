From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 21 Aug 2011 05:09:46 +0200
Subject: [PATCH V2] b43-fwcutter: Add 5 new drivers to cut list
In-Reply-To: <4e505cfa.n3tOINwHD8SPKunM%Larry.Finger@lwfinger.net>
References: <4e505cfa.n3tOINwHD8SPKunM%Larry.Finger@lwfinger.net>
Message-ID: <CA+XFjiqtTOd3a2BQhtf1mZfpkrDc7bpYqFyAngzby9wxHFv5YQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Aug 21, 2011 at 3:18 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> The following changes are made to fwcutter:
>
> 1. The two drivers whose donload is greater than 300 MB are eliminated.
> 2. Five new sources now posted at www.lwfinger.com are added.
> 3. The version is upgraded from 14 to 15.
>
> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> ---
>
> V2 - The FWxx entity is now sequential.
>
> Larry
> ---
>
> Index: fwcutter/fwcutter_list.h
> ===================================================================
> --- fwcutter.orig/fwcutter_list.h
> +++ fwcutter/fwcutter_list.h
> @@ -181,113 +181,6 @@ static struct extract _cb8d70972b885b1f8
> ? ? ? ?EXTRACT_LIST_END
> ?};
>
> -static struct extract _2dd738b8feb8b3559fd9d8fbaf3bfffc[] =
> -{
> - ? ? ? { .name = "lp0initvals14", .offset = 0x982B0, .type = EXT_IV, .length = 0xB80 },
> - ? ? ? { .name = "lp0bsinitvals14", .offset = 0x98E38, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0initvals9", .offset = 0x92218, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "a0g1bsinitvals9", .offset = 0x94540, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0bsinitvals13", .offset = 0x974D0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0bsinitvals5", .offset = 0x90A78, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode4", .offset = 0x9B868, .type = EXT_UCODE_1, .length = 0x4EA0 },
> - ? ? ? { .name = "b0g0initvals4", .offset = 0x8E2D8, .type = EXT_IV, .length = 0xE80 },
> - ? ? ? { .name = "b0g0initvals13", .offset = 0x96930, .type = EXT_IV, .length = 0xB98 },
> - ? ? ? { .name = "ucode14", .offset = 0xBBB1C, .type = EXT_UCODE_2, .length = 0x7910 },
> - ? ? ? { .name = "a0g0initvals5", .offset = 0x90B98, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "lp0bsinitvals16", .offset = 0x9B748, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "pcm4", .offset = 0xD4A40, .type = EXT_PCM, .length = 0x520 },
> - ? ? ? { .name = "a0g1bsinitvals5", .offset = 0x920F8, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0bsinitvals11", .offset = 0x95230, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0absinitvals11", .offset = 0x95350, .type = EXT_IV, .length = 0x118 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_bomminor */
> - ? ? ? { .name = "a0g1bsinitvals13", .offset = 0x98190, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "pcm5", .offset = 0xD4F64, .type = EXT_PCM, .length = 0x520 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_2w_bomminor */
> - ? ? ? { .name = "ucode9", .offset = 0xA5E00, .type = EXT_UCODE_2, .length = 0x6248 },
> - ? ? ? { .name = "a0g0bsinitvals9", .offset = 0x94420, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "a0g0bsinitvals4", .offset = 0x90020, .type = EXT_IV, .length = 0x30 },
> - ? ? ? { .name = "a0g1initvals5", .offset = 0x915B8, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "n0bsinitvals16", .offset = 0x9A980, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode16", .offset = 0xCBB9C, .type = EXT_UCODE_3, .length = 0x8EA0 },
> - ? ? ? { .name = "b0g0bsinitvals4", .offset = 0x8F160, .type = EXT_IV, .length = 0x30 },
> - ? ? ? { .name = "lp0initvals15", .offset = 0x98F58, .type = EXT_IV, .length = 0xC68 },
> - ? ? ? { .name = "b0g0initvals5", .offset = 0x90058, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "a0g0initvals4", .offset = 0x8F198, .type = EXT_IV, .length = 0xE80 },
> - ? ? ? { .name = "sslpn0initvals16", .offset = 0x9AAA0, .type = EXT_IV, .length = 0x0 },
> - ? ? ? { .name = "a0g1initvals13", .offset = 0x975F0, .type = EXT_IV, .length = 0xB98 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_2w11 */
> - ? ? ? /* ERROR: Could not guess data type for: ucode_bommajor */
> - ? ? ? { .name = "a0g1initvals9", .offset = 0x93928, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "ucode5", .offset = 0xA070C, .type = EXT_UCODE_2, .length = 0x56F0 },
> - ? ? ? { .name = "lp0bsinitvals13", .offset = 0x96810, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0initvals16", .offset = 0x99CE8, .type = EXT_IV, .length = 0xC90 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_2w_bommajor */
> - ? ? ? { .name = "b0g0bsinitvals9", .offset = 0x92D10, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode11", .offset = 0xAC04C, .type = EXT_UCODE_2, .length = 0x8000 },
> - ? ? ? { .name = "lp0initvals16", .offset = 0x9AAB0, .type = EXT_IV, .length = 0xC90 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_2w15 */
> - ? ? ? { .name = "a0g0initvals9", .offset = 0x92E30, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "lp0initvals13", .offset = 0x95470, .type = EXT_IV, .length = 0x1398 },
> - ? ? ? { .name = "a0g0bsinitvals5", .offset = 0x91FD8, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode13", .offset = 0xB4050, .type = EXT_UCODE_2, .length = 0x7AC8 },
> - ? ? ? /* ERROR: Could not guess data type for: ucode_2w13 */
> - ? ? ? { .name = "ucode15", .offset = 0xC3430, .type = EXT_UCODE_3, .length = 0x8768 },
> - ? ? ? { .name = "lp0bsinitvals15", .offset = 0x99BC8, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0initvals11", .offset = 0x94660, .type = EXT_IV, .length = 0xBC8 },
> - ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0x9AAA8, .type = EXT_IV, .length = 0x0 },
> - ? ? ? EXTRACT_LIST_END
> -};
> -
> -static struct extract _1a258b2d93efa641c32ddf3c3a962028[] =
> -{
> - ? ? ? /* { .name = "ucode4", .offset = 0xAFE08, .type = EXT_UCODE_1, .length = 0x4EA0 }, */
> - ? ? ? /* { .name = "pcm4", .offset = 0xE8FE0, .type = EXT_PCM, .length = 0x520 }, */
> - ? ? ? /* { .name = "b0g0initvals4", .offset = 0xA2878, .type = EXT_IV, .length = 0xE80 }, */
> - ? ? ? /* { .name = "a0g0bsinitvals4", .offset = 0xA45C0, .type = EXT_IV, .length = 0x30 }, */
> - ? ? ? /* { .name = "b0g0bsinitvals4", .offset = 0xA3700, .type = EXT_IV, .length = 0x30 }, */
> - ? ? ? /* { .name = "a0g0initvals4", .offset = 0xA3738, .type = EXT_IV, .length = 0xE80 }, */
> - ? ? ? { .name = "ucode5", .offset = 0xB4CAC, .type = EXT_UCODE_2, .length = 0x56F0 },
> - ? ? ? { .name = "pcm5", .offset = 0xE9504, .type = EXT_PCM, .length = 0x520 },
> - ? ? ? { .name = "a0g0bsinitvals5", .offset = 0xA6578, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0bsinitvals5", .offset = 0xA5018, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "a0g0initvals5", .offset = 0xA5138, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "a0g1initvals5", .offset = 0xA5B58, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "b0g0initvals5", .offset = 0xA45F8, .type = EXT_IV, .length = 0xA18 },
> - ? ? ? { .name = "a0g1bsinitvals5", .offset = 0xA6698, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode9", .offset = 0xBA3A0, .type = EXT_UCODE_2, .length = 0x6248 },
> - ? ? ? { .name = "a0g0bsinitvals9", .offset = 0xA89C0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0initvals9", .offset = 0xA67B8, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "a0g1bsinitvals9", .offset = 0xA8AE0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0bsinitvals9", .offset = 0xA72B0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "a0g0initvals9", .offset = 0xA73D0, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "a0g1initvals9", .offset = 0xA7EC8, .type = EXT_IV, .length = 0xAF0 },
> - ? ? ? { .name = "ucode11", .offset = 0xC05EC, .type = EXT_UCODE_2, .length = 0x8000 },
> - ? ? ? { .name = "n0initvals11", .offset = 0xA8C00, .type = EXT_IV, .length = 0xBC8 },
> - ? ? ? { .name = "n0bsinitvals11", .offset = 0xA97D0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0absinitvals11", .offset = 0xA98F0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode13", .offset = 0xC85F0, .type = EXT_UCODE_2, .length = 0x7AC8 },
> - ? ? ? { .name = "b0g0bsinitvals13", .offset = 0xABA70, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0initvals13", .offset = 0xAAED0, .type = EXT_IV, .length = 0xB98 },
> - ? ? ? { .name = "a0g1bsinitvals13", .offset = 0xAC730, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "a0g1initvals13", .offset = 0xABB90, .type = EXT_IV, .length = 0xB98 },
> - ? ? ? { .name = "lp0bsinitvals13", .offset = 0xAADB0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "lp0initvals13", .offset = 0xA9A10, .type = EXT_IV, .length = 0x1398 },
> - ? ? ? { .name = "ucode14", .offset = 0xD00BC, .type = EXT_UCODE_2, .length = 0x7910 },
> - ? ? ? { .name = "lp0initvals14", .offset = 0xAC850, .type = EXT_IV, .length = 0xB80 },
> - ? ? ? { .name = "lp0bsinitvals14", .offset = 0xAD3D8, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode15", .offset = 0xD79D0, .type = EXT_UCODE_3, .length = 0x8768 },
> - ? ? ? { .name = "lp0initvals15", .offset = 0xAD4F8, .type = EXT_IV, .length = 0xC68 },
> - ? ? ? { .name = "lp0bsinitvals15", .offset = 0xAE168, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "ucode16", .offset = 0xE013C, .type = EXT_UCODE_3, .length = 0x8EA0 },
> - ? ? ? { .name = "lp0bsinitvals16", .offset = 0xAFCE8, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "n0bsinitvals16", .offset = 0xAEF20, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "sslpn0initvals16", .offset = 0xAF040, .type = EXT_IV, .length = 0x0 },
> - ? ? ? { .name = "n0initvals16", .offset = 0xAE288, .type = EXT_IV, .length = 0xC90 },
> - ? ? ? { .name = "lp0initvals16", .offset = 0xAF050, .type = EXT_IV, .length = 0xC90 },
> - ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0xAF048, .type = EXT_IV, .length = 0x0 },
> - ? ? ? EXTRACT_LIST_END
> -};
> -
> ?static struct extract _bb8537e3204a1ea5903fe3e66b5e2763[] =
> ?{
> ? ? ? ?/* ucode major version at offset 0xa8b70 */
> @@ -354,15 +247,15 @@ static struct extract _490d4e149ecc45eb1
> ? ? ? ?{ .name = "ucode16_sslpn_nobt", .offset = 0xE0CC4, .type = EXT_UCODE_3, .length = 0x7413 },
> ? ? ? ?{ .name = "b0g0bsinitvals5", .offset = 0x92278, .type = EXT_IV, .length = 0x118 },
> ? ? ? ?{ .name = "sslpn2initvals17", .offset = 0x9E020, .type = EXT_IV, .length = 0xCC0 },
> - ? ? ? { .name = "ucode4", .offset = 0xA0A68, .type = EXT_UCODE_1, .length = 0x4E80 },
> - ? ? ? { .name = "b0g0initvals4", .offset = 0x8FB08, .type = EXT_IV, .length = 0xE70 },
> +/* ? ? { .name = "ucode4", .offset = 0xA0A68, .type = EXT_UCODE_1, .length = 0x4E80 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0x8FB08, .type = EXT_IV, .length = 0xE70 }, */
> ? ? ? ?{ .name = "b0g0initvals13", .offset = 0x98078, .type = EXT_IV, .length = 0xB80 },
> ? ? ? ?{ .name = "ucode17", .offset = 0xF1B50, .type = EXT_UCODE_3, .length = 0x9868 },
> ? ? ? ?{ .name = "sslpn1bsinitvals20", .offset = 0xA0948, .type = EXT_IV, .length = 0x118 },
> ? ? ? ?{ .name = "ucode14", .offset = 0xBF864, .type = EXT_UCODE_2, .length = 0x64A0 },
> ? ? ? ?{ .name = "a0g0initvals5", .offset = 0x92398, .type = EXT_IV, .length = 0xA08 },
> ? ? ? ?{ .name = "lp0bsinitvals16", .offset = 0x9DF00, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "pcm4", .offset = 0x10E9EC, .type = EXT_PCM, .length = 0x520 },
> +/* ? ? { .name = "pcm4", .offset = 0x10E9EC, .type = EXT_PCM, .length = 0x520 }, */
> ? ? ? ?{ .name = "a0g1bsinitvals5", .offset = 0x938D8, .type = EXT_IV, .length = 0x118 },
> ? ? ? ?{ .name = "n0bsinitvals11", .offset = 0x96990, .type = EXT_IV, .length = 0x118 },
> ? ? ? ?{ .name = "n0absinitvals11", .offset = 0x96AB0, .type = EXT_IV, .length = 0x118 },
> @@ -371,14 +264,14 @@ static struct extract _490d4e149ecc45eb1
> ? ? ? ?{ .name = "pcm5", .offset = 0x10EF10, .type = EXT_PCM, .length = 0x520 },
> ? ? ? ?{ .name = "ucode9", .offset = 0xAB000, .type = EXT_UCODE_2, .length = 0x6268 },
> ? ? ? ?{ .name = "a0g0bsinitvals9", .offset = 0x95BD0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "a0g0bsinitvals4", .offset = 0x91830, .type = EXT_IV, .length = 0x30 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0x91830, .type = EXT_IV, .length = 0x30 }, */
> ? ? ? ?{ .name = "ucode20", .offset = 0x104D58, .type = EXT_UCODE_3, .length = 0x9C90 },
> ? ? ? ?{ .name = "a0g1initvals5", .offset = 0x92DA8, .type = EXT_IV, .length = 0xA08 },
> ? ? ? ?{ .name = "n0bsinitvals16", .offset = 0x9C1D0, .type = EXT_IV, .length = 0x118 },
> - ? ? ? { .name = "b0g0bsinitvals4", .offset = 0x90980, .type = EXT_IV, .length = 0x30 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0x90980, .type = EXT_IV, .length = 0x30 }, */
> ? ? ? ?{ .name = "lp0initvals15", .offset = 0x9A610, .type = EXT_IV, .length = 0xD20 },
> ? ? ? ?{ .name = "b0g0initvals5", .offset = 0x91868, .type = EXT_IV, .length = 0xA08 },
> - ? ? ? { .name = "a0g0initvals4", .offset = 0x909B8, .type = EXT_IV, .length = 0xE70 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0x909B8, .type = EXT_IV, .length = 0xE70 }, */
> ? ? ? ?{ .name = "sslpn0initvals16", .offset = 0x9C2F0, .type = EXT_IV, .length = 0xD70 },
> ? ? ? ?{ .name = "a0g1initvals13", .offset = 0x98D20, .type = EXT_IV, .length = 0xB80 },
> ? ? ? ?{ .name = "sslpn2initvals19", .offset = 0x9EE08, .type = EXT_IV, .length = 0xCB0 },
> @@ -403,6 +296,481 @@ static struct extract _490d4e149ecc45eb1
> ? ? ? ?{ .name = "sslpn1initvals20", .offset = 0x9FBE0, .type = EXT_IV, .length = 0xD60 },
> ? ? ? ?EXTRACT_LIST_END
> ?};
> +
> +static struct extract _f06c8aa30ea549ce21872d10ee9a7d48[] =
> +{
> + ? ? ? { .name = "ucode19", .offset = 0x1364E0, .type = EXT_UCODE_3, .length = 0x9B30 },
> + ? ? ? { .name = "lp0initvals14", .offset = 0xD3338, .type = EXT_IV, .length = 0xB20 },
> + ? ? ? { .name = "ucode16_lp", .offset = 0x108E84, .type = EXT_UCODE_3, .length = 0x9EB0 },
> + ? ? ? { .name = "sslpn3bsinitvals21", .offset = 0xDB0B0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode16_sslpn", .offset = 0x112D38, .type = EXT_UCODE_3, .length = 0x8BE4 },
> + ? ? ? { .name = "lp0bsinitvals14", .offset = 0xD3E60, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0initvals9", .offset = 0xCD368, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "sslpn2bsinitvals17", .offset = 0xD8640, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "a0g1bsinitvals9", .offset = 0xCF660, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0bsinitvals13", .offset = 0xD2570, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode16_sslpn_nobt", .offset = 0x11B920, .type = EXT_UCODE_3, .length = 0x76C1 },
> + ? ? ? { .name = "b0g0bsinitvals5", .offset = 0xCBBE8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn2initvals17", .offset = 0xD7980, .type = EXT_IV, .length = 0xCB8 },
> +/* ? ? { .name = "ucode4", .offset = 0xDB1D0, .type = EXT_UCODE_1, .length = 0x4EB0 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0xC9478, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "b0g0initvals13", .offset = 0xD19E8, .type = EXT_IV, .length = 0xB80 },
> + ? ? ? { .name = "ucode17", .offset = 0x12CADC, .type = EXT_UCODE_3, .length = 0x9A00 },
> + ? ? ? { .name = "sslpn1bsinitvals20", .offset = 0xDA290, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode14", .offset = 0xFA09C, .type = EXT_UCODE_2, .length = 0x6498 },
> + ? ? ? { .name = "a0g0initvals5", .offset = 0xCBD08, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "lp0bsinitvals16", .offset = 0xD7860, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "pcm4", .offset = 0x151470, .type = EXT_PCM, .length = 0x520 }, */
> + ? ? ? { .name = "a0g1bsinitvals5", .offset = 0xCD248, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals11", .offset = 0xD0300, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0absinitvals11", .offset = 0xD0420, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode21_sslpn_nobt", .offset = 0x149FA0, .type = EXT_UCODE_3, .length = 0x74C9 },
> + ? ? ? /* ucode minor version at offset 0xc9474 */
> + ? ? ? { .name = "sslpn3initvals21", .offset = 0xDA3B0, .type = EXT_IV, .length = 0xCF8 },
> + ? ? ? { .name = "a0g1bsinitvals13", .offset = 0xD3218, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "pcm5", .offset = 0x151994, .type = EXT_PCM, .length = 0x520 },
> + ? ? ? /* ucode minor version at offset 0x151ec4 */
> + ? ? ? { .name = "ucode9", .offset = 0xE57C8, .type = EXT_UCODE_2, .length = 0x6290 },
> + ? ? ? { .name = "a0g0bsinitvals9", .offset = 0xCF540, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0xCB1A0, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "ucode20", .offset = 0x140014, .type = EXT_UCODE_3, .length = 0x9F88 },
> + ? ? ? { .name = "a0g1initvals5", .offset = 0xCC718, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "n0bsinitvals16", .offset = 0xD5B40, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0xCA2F0, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "lp0initvals15", .offset = 0xD3F80, .type = EXT_IV, .length = 0xD28 },
> + ? ? ? { .name = "b0g0initvals5", .offset = 0xCB1D8, .type = EXT_IV, .length = 0xA08 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0xCA328, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "sslpn0initvals16", .offset = 0xD5C60, .type = EXT_IV, .length = 0xD68 },
> + ? ? ? { .name = "a0g1initvals13", .offset = 0xD2690, .type = EXT_IV, .length = 0xB80 },
> + ? ? ? { .name = "sslpn2initvals19", .offset = 0xD8760, .type = EXT_IV, .length = 0xCA8 },
> + ? ? ? /* ucode major version at offset 0xc9470 */
> + ? ? ? { .name = "a0g1initvals9", .offset = 0xCEA58, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "ucode5", .offset = 0xE0084, .type = EXT_UCODE_2, .length = 0x5740 },
> + ? ? ? { .name = "lp0bsinitvals13", .offset = 0xD18C8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals16", .offset = 0xD4DD0, .type = EXT_IV, .length = 0xD68 },
> + ? ? ? /* ucode major version at offset 0x151ec0 */
> + ? ? ? { .name = "b0g0bsinitvals9", .offset = 0xCDE50, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode11", .offset = 0xEBA5C, .type = EXT_UCODE_2, .length = 0x74F8 },
> + ? ? ? { .name = "lp0initvals16", .offset = 0xD6AF0, .type = EXT_IV, .length = 0xD68 },
> + ? ? ? { .name = "ucode16_mimo", .offset = 0x122FE8, .type = EXT_UCODE_3, .length = 0x9AF0 },
> + ? ? ? { .name = "a0g0initvals9", .offset = 0xCDF70, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "lp0initvals13", .offset = 0xD0540, .type = EXT_IV, .length = 0x1380 },
> + ? ? ? { .name = "a0g0bsinitvals5", .offset = 0xCD128, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode13", .offset = 0xF2F58, .type = EXT_UCODE_2, .length = 0x7140 },
> + ? ? ? { .name = "sslpn2bsinitvals19", .offset = 0xD9410, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode15", .offset = 0x100538, .type = EXT_UCODE_3, .length = 0x8948 },
> + ? ? ? { .name = "lp0bsinitvals15", .offset = 0xD4CB0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals11", .offset = 0xCF780, .type = EXT_IV, .length = 0xB78 },
> + ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0xD69D0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn1initvals20", .offset = 0xD9530, .type = EXT_IV, .length = 0xD58 },
> + ? ? ? EXTRACT_LIST_END
> +};
> +
> +static struct extract _e413c0017b99195f3231201c53f314d1[] =
> +{
> + ? ? ? { .name = "ucode19", .offset = 0x129000, .type = EXT_UCODE_3, .length = 0x99A0 },
> + ? ? ? { .name = "lp0initvals14", .offset = 0xC75D8, .type = EXT_IV, .length = 0xB20 },
> + ? ? ? { .name = "ucode16_lp", .offset = 0xFC23C, .type = EXT_UCODE_3, .length = 0x9DC0 },
> + ? ? ? { .name = "ucode16_sslpn", .offset = 0x106000, .type = EXT_UCODE_3, .length = 0x8960 },
> + ? ? ? { .name = "lp0bsinitvals14", .offset = 0xC8100, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0initvals9", .offset = 0xC1608, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "sslpn2bsinitvals17", .offset = 0xCC8F8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "a0g1bsinitvals9", .offset = 0xC3900, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0bsinitvals13", .offset = 0xC6810, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode16_sslpn_nobt", .offset = 0x10E964, .type = EXT_UCODE_3, .length = 0x743D },
> + ? ? ? { .name = "b0g0bsinitvals5", .offset = 0xBFE88, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn2initvals17", .offset = 0xCBC30, .type = EXT_IV, .length = 0xCC0 },
> +/* ? ? { .name = "ucode4", .offset = 0xCE678, .type = EXT_UCODE_1, .length = 0x4E80 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0xBD718, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "b0g0initvals13", .offset = 0xC5C88, .type = EXT_IV, .length = 0xB80 },
> + ? ? ? { .name = "ucode17", .offset = 0x11F78C, .type = EXT_UCODE_3, .length = 0x9870 },
> + ? ? ? { .name = "sslpn1bsinitvals20", .offset = 0xCE558, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode14", .offset = 0xED49C, .type = EXT_UCODE_2, .length = 0x64A8 },
> + ? ? ? { .name = "a0g0initvals5", .offset = 0xBFFA8, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "lp0bsinitvals16", .offset = 0xCBB10, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "pcm4", .offset = 0x13C640, .type = EXT_PCM, .length = 0x520 }, */
> + ? ? ? { .name = "a0g1bsinitvals5", .offset = 0xC14E8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals11", .offset = 0xC45A0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0absinitvals11", .offset = 0xC46C0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0xbd714 */
> + ? ? ? { .name = "a0g1bsinitvals13", .offset = 0xC74B8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "pcm5", .offset = 0x13CB64, .type = EXT_PCM, .length = 0x520 },
> + ? ? ? /* ucode minor version at offset 0x13d094 */
> + ? ? ? { .name = "ucode9", .offset = 0xD8C10, .type = EXT_UCODE_2, .length = 0x6268 },
> + ? ? ? { .name = "a0g0bsinitvals9", .offset = 0xC37E0, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0xBF440, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "ucode20", .offset = 0x1329A4, .type = EXT_UCODE_3, .length = 0x9C98 },
> + ? ? ? { .name = "a0g1initvals5", .offset = 0xC09B8, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "n0bsinitvals16", .offset = 0xC9DE0, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0xBE590, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "lp0initvals15", .offset = 0xC8220, .type = EXT_IV, .length = 0xD20 },
> + ? ? ? { .name = "b0g0initvals5", .offset = 0xBF478, .type = EXT_IV, .length = 0xA08 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0xBE5C8, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "sslpn0initvals16", .offset = 0xC9F00, .type = EXT_IV, .length = 0xD70 },
> + ? ? ? { .name = "a0g1initvals13", .offset = 0xC6930, .type = EXT_IV, .length = 0xB80 },
> + ? ? ? { .name = "sslpn2initvals19", .offset = 0xCCA18, .type = EXT_IV, .length = 0xCB0 },
> + ? ? ? /* ucode major version at offset 0xbd710 */
> + ? ? ? { .name = "a0g1initvals9", .offset = 0xC2CF8, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "ucode5", .offset = 0xD34FC, .type = EXT_UCODE_2, .length = 0x5710 },
> + ? ? ? { .name = "lp0bsinitvals13", .offset = 0xC5B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals16", .offset = 0xC9068, .type = EXT_IV, .length = 0xD70 },
> + ? ? ? /* ucode major version at offset 0x13d090 */
> + ? ? ? { .name = "b0g0bsinitvals9", .offset = 0xC20F0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode11", .offset = 0xDEE7C, .type = EXT_UCODE_2, .length = 0x74C8 },
> + ? ? ? { .name = "lp0initvals16", .offset = 0xCAD98, .type = EXT_IV, .length = 0xD70 },
> + ? ? ? { .name = "ucode16_mimo", .offset = 0x115DA8, .type = EXT_UCODE_3, .length = 0x99E0 },
> + ? ? ? { .name = "a0g0initvals9", .offset = 0xC2210, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "lp0initvals13", .offset = 0xC47E0, .type = EXT_IV, .length = 0x1380 },
> + ? ? ? { .name = "a0g0bsinitvals5", .offset = 0xC13C8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode13", .offset = 0xE6348, .type = EXT_UCODE_2, .length = 0x7150 },
> + ? ? ? { .name = "sslpn2bsinitvals19", .offset = 0xCD6D0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode15", .offset = 0xF3948, .type = EXT_UCODE_3, .length = 0x88F0 },
> + ? ? ? { .name = "lp0bsinitvals15", .offset = 0xC8F48, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals11", .offset = 0xC3A20, .type = EXT_IV, .length = 0xB78 },
> + ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0xCAC78, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn1initvals20", .offset = 0xCD7F0, .type = EXT_IV, .length = 0xD60 },
> + ? ? ? EXTRACT_LIST_END
> +};
> +
> +static struct extract _023fafbe4918e384dd531a046dbc03e8[] =
> +{
> + ? ? ? { .name = "ucode19", .offset = 0x123318, .type = EXT_UCODE_3, .length = 0x93E8 },
> + ? ? ? { .name = "lp0initvals14", .offset = 0xD3710, .type = EXT_IV, .length = 0xB20 },
> + ? ? ? { .name = "ucode16_lp", .offset = 0x105EC4, .type = EXT_UCODE_3, .length = 0x9E08 },
> + ? ? ? { .name = "ucode16_sslpn", .offset = 0x10FCD0, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lp0bsinitvals14", .offset = 0xD4238, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0initvals9", .offset = 0xCD6E8, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "sslpn2bsinitvals17", .offset = 0xD7038, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "a0g1bsinitvals9", .offset = 0xCF9E0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "b0g0bsinitvals13", .offset = 0xD2940, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn4bsinitvals22", .offset = 0xD7068, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode16_sslpn_nobt", .offset = 0x10FCD8, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "b0g0bsinitvals5", .offset = 0xCBF68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn2initvals17", .offset = 0xD7030, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode22_sslpn", .offset = 0x136608, .type = EXT_UCODE_3, .length = 0x1 },
> +/* ? ? { .name = "ucode4", .offset = 0xD7070, .type = EXT_UCODE_1, .length = 0x4F50 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0xC97F8, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "b0g0initvals13", .offset = 0xD1DB0, .type = EXT_IV, .length = 0xB88 },
> + ? ? ? { .name = "ucode17", .offset = 0x119684, .type = EXT_UCODE_3, .length = 0x9C90 },
> + ? ? ? { .name = "sslpn1bsinitvals20", .offset = 0xD7058, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode14", .offset = 0xF6C1C, .type = EXT_UCODE_2, .length = 0x6518 },
> + ? ? ? { .name = "a0g0initvals5", .offset = 0xCC088, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? /* ERROR: Could not guess data type for: sampleucode16 */
> + ? ? ? { .name = "lp0bsinitvals16", .offset = 0xD6F10, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "pcm4", .offset = 0x136610, .type = EXT_PCM, .length = 0x520 }, */
> + ? ? ? { .name = "a0g1bsinitvals5", .offset = 0xCD5C8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals11", .offset = 0xD06C0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0absinitvals11", .offset = 0xD07E0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0xc97f4 */
> + ? ? ? { .name = "a0g1bsinitvals13", .offset = 0xD35F0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn4initvals22", .offset = 0xD7060, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "pcm5", .offset = 0x136B34, .type = EXT_PCM, .length = 0x520 },
> + ? ? ? /* ucode minor version at offset 0x1374f4 */
> + ? ? ? { .name = "ucode9", .offset = 0xE17B0, .type = EXT_UCODE_2, .length = 0x6338 },
> + ? ? ? { .name = "a0g0bsinitvals9", .offset = 0xCF8C0, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0xCB520, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "ucode20", .offset = 0x12C704, .type = EXT_UCODE_3, .length = 0x9F00 },
> + ? ? ? { .name = "a0g1initvals5", .offset = 0xCCA98, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "n0bsinitvals16", .offset = 0xD5FF8, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0xCA670, .type = EXT_IV, .length = 0x30 }, */
> + ? ? ? { .name = "lp0initvals15", .offset = 0xD4358, .type = EXT_IV, .length = 0xD90 },
> + ? ? ? { .name = "b0g0initvals5", .offset = 0xCB558, .type = EXT_IV, .length = 0xA08 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0xCA6A8, .type = EXT_IV, .length = 0xE70 }, */
> + ? ? ? { .name = "sslpn0initvals16", .offset = 0xD6118, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "a0g1initvals13", .offset = 0xD2A60, .type = EXT_IV, .length = 0xB88 },
> + ? ? ? { .name = "sslpn2initvals19", .offset = 0xD7040, .type = EXT_IV, .length = 0x0 },
> + ? ? ? /* ucode major version at offset 0xc97f0 */
> + ? ? ? { .name = "a0g1initvals9", .offset = 0xCEDD8, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "ucode5", .offset = 0xDBFC4, .type = EXT_UCODE_2, .length = 0x57E8 },
> + ? ? ? { .name = "lp0bsinitvals13", .offset = 0xD1C90, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals16", .offset = 0xD5210, .type = EXT_IV, .length = 0xDE0 },
> + ? ? ? /* ucode major version at offset 0x1374f0 */
> + ? ? ? { .name = "b0g0bsinitvals9", .offset = 0xCE1D0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode11", .offset = 0xE7AEC, .type = EXT_UCODE_2, .length = 0x7F48 },
> + ? ? ? { .name = "lp0initvals16", .offset = 0xD6128, .type = EXT_IV, .length = 0xDE0 },
> + ? ? ? { .name = "ucode16_mimo", .offset = 0x10FCE0, .type = EXT_UCODE_3, .length = 0x99A0 },
> + ? ? ? { .name = "a0g0initvals9", .offset = 0xCE2F0, .type = EXT_IV, .length = 0xAE0 },
> + ? ? ? { .name = "lp0initvals13", .offset = 0xD0900, .type = EXT_IV, .length = 0x1388 },
> + ? ? ? { .name = "a0g0bsinitvals5", .offset = 0xCD4A8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode13", .offset = 0xEFA38, .type = EXT_UCODE_2, .length = 0x71E0 },
> + ? ? ? { .name = "sslpn2bsinitvals19", .offset = 0xD7048, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode15", .offset = 0xFD138, .type = EXT_UCODE_3, .length = 0x8D88 },
> + ? ? ? { .name = "lp0bsinitvals15", .offset = 0xD50F0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals11", .offset = 0xCFB00, .type = EXT_IV, .length = 0xBB8 },
> + ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0xD6120, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn1initvals20", .offset = 0xD7050, .type = EXT_IV, .length = 0x0 },
> + ? ? ? EXTRACT_LIST_END
> +};
> +
> +static struct extract _68f38d139b1f69f3ea12393fb645c6f9[] =
> +{
> + ? ? ? { .name = "lp0initvals14", .offset = 0x1DBB68, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn0bsinitvals25", .offset = 0x13FC40, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals25", .offset = 0x142B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode major version at offset 0x193a10 */
> + ? ? ? { .name = "n0bsinitvals17", .offset = 0x1977A0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode17_mimo", .offset = 0x1BA904, .type = EXT_UCODE_3, .length = 0x9140 },
> + ? ? ? { .name = "ucode16_lp", .offset = 0x198870, .type = EXT_UCODE_3, .length = 0x8728 },
> + ? ? ? { .name = "sslpn1initvals27", .offset = 0x146C88, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lp2bsinitvals19", .offset = 0x1978E8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn3bsinitvals21", .offset = 0x198720, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode16_sslpn", .offset = 0x1A0F9C, .type = EXT_UCODE_3, .length = 0x8959 },
> + ? ? ? { .name = "ucode25_lcn", .offset = 0x164EC0, .type = EXT_UCODE_3, .length = 0x8975 },
> + ? ? ? { .name = "ucode21_sslpn", .offset = 0x1C3A68, .type = EXT_UCODE_3, .length = 0x8A78 },
> + ? ? ? { .name = "lp0bsinitvals14", .offset = 0x1DBB70, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0initvals9", .offset = 0x1D5AF8, .type = EXT_IV, .length = 0xAE8 },
> + ? ? ? { .name = "ucode20_sslpn", .offset = 0x1C3A58, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? /* ucode minor version at offset 0x193a14 */
> + ? ? ? { .name = "a0g1bsinitvals9", .offset = 0x1D7E08, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp1initvals20", .offset = 0x197910, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0bsinitvals13", .offset = 0x1DAD88, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp2initvals19", .offset = 0x1978E0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n2bsinitvals19", .offset = 0x1978C8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn4bsinitvals22", .offset = 0x198858, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode16_sslpn_nobt", .offset = 0x1A98FC, .type = EXT_UCODE_3, .length = 0x72B5 },
> + ? ? ? { .name = "n1bsinitvals20", .offset = 0x1978F8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n1initvals20", .offset = 0x1978F0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0bsinitvals5", .offset = 0x1D4378, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode22_sslpn", .offset = 0x1D392C, .type = EXT_UCODE_3, .length = 0x1 },
> +/* ? ? { .name = "ucode4", .offset = 0x1DCAC0, .type = EXT_UCODE_1, .length = 0x4 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0x1D3948, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "b0g0initvals13", .offset = 0x1DA1E8, .type = EXT_IV, .length = 0xB98 },
> + ? ? ? { .name = "ht0initvals26", .offset = 0x145C88, .type = EXT_IV, .length = 0xED8 },
> + ? ? ? /* ucode major version at offset 0x13ae80 */
> + ? ? ? { .name = "ucode33_lcn40", .offset = 0x193A08, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "sslpn1bsinitvals20", .offset = 0x197908, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn400bsinitvals33", .offset = 0x148C48, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode14", .offset = 0x1F76A8, .type = EXT_UCODE_2, .length = 0x4 },
> + ? ? ? /* ucode major version at offset 0x1d3940 */
> + ? ? ? { .name = "a0g0initvals5", .offset = 0x1D4498, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "lp1bsinitvals22", .offset = 0x198868, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n16initvals30", .offset = 0x147CD0, .type = EXT_IV, .length = 0xE38 },
> + ? ? ? { .name = "lp0bsinitvals16", .offset = 0x196940, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn1bsinitvals25", .offset = 0x140BF8, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "pcm4", .offset = 0x20090C, .type = EXT_PCM, .length = 0x4 }, */
> + ? ? ? { .name = "lcn400initvals33", .offset = 0x148C40, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n0bsinitvals24", .offset = 0x13EC88, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn2bsinitvals26", .offset = 0x145B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn1initvals26", .offset = 0x143C88, .type = EXT_IV, .length = 0xED8 },
> + ? ? ? { .name = "n0bsinitvals22", .offset = 0x198848, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n18initvals32", .offset = 0x148C30, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn2initvals26", .offset = 0x144C88, .type = EXT_IV, .length = 0xED8 },
> + ? ? ? { .name = "a0g1bsinitvals5", .offset = 0x1D59D8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals11", .offset = 0x1D8AE8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn2initvals24", .offset = 0x13CE18, .type = EXT_IV, .length = 0xEA0 },
> + ? ? ? { .name = "lcn0initvals26", .offset = 0x142C88, .type = EXT_IV, .length = 0xED8 },
> + ? ? ? { .name = "n0absinitvals11", .offset = 0x1D8C08, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode21_sslpn_nobt", .offset = 0x1CC4E4, .type = EXT_UCODE_3, .length = 0x7444 },
> + ? ? ? { .name = "ucode26_mimo", .offset = 0x16D83C, .type = EXT_UCODE_3, .length = 0x9E00 },
> + ? ? ? { .name = "n2initvals19", .offset = 0x1978C0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn3initvals21", .offset = 0x197920, .type = EXT_IV, .length = 0xDF8 },
> + ? ? ? { .name = "a0g1bsinitvals13", .offset = 0x1DBA48, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn4initvals22", .offset = 0x198850, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "pcm5", .offset = 0x200914, .type = EXT_PCM, .length = 0x520 },
> + ? ? ? { .name = "ucode29_lcn", .offset = 0x181464, .type = EXT_UCODE_3, .length = 0x8729 },
> + ? ? ? { .name = "ucode22_mimo", .offset = 0x1D3934, .type = EXT_UCODE_3, .length = 0x4 },
> + ? ? ? { .name = "ucode9", .offset = 0x1E226C, .type = EXT_UCODE_2, .length = 0x63A8 },
> + ? ? ? { .name = "lcn2initvals25", .offset = 0x140D18, .type = EXT_IV, .length = 0xE90 },
> + ? ? ? { .name = "lp1initvals22", .offset = 0x198860, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn1bsinitvals27", .offset = 0x146C90, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn0initvals24", .offset = 0x13AE88, .type = EXT_IV, .length = 0xEA0 },
> + ? ? ? { .name = "ucode32_mimo", .offset = 0x193A00, .type = EXT_UCODE_3, .length = 0x4 },
> + ? ? ? { .name = "a0g0bsinitvals9", .offset = 0x1D7CE8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n18bsinitvals32", .offset = 0x148C38, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n0initvals24", .offset = 0x13DDE0, .type = EXT_IV, .length = 0xEA0 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0x1D3960, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "n0initvals25", .offset = 0x141CD0, .type = EXT_IV, .length = 0xE90 },
> + ? ? ? { .name = "a0g1initvals5", .offset = 0x1D4EA8, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "ucode24_lcn", .offset = 0x15297C, .type = EXT_UCODE_3, .length = 0x8991 },
> + ? ? ? { .name = "n0initvals17", .offset = 0x196A60, .type = EXT_IV, .length = 0xD38 },
> + ? ? ? { .name = "n0bsinitvals16", .offset = 0x194910, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0x1D3950, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "lp0initvals15", .offset = 0x1DBB78, .type = EXT_IV, .length = 0xE20 },
> + ? ? ? { .name = "b0g0initvals5", .offset = 0x1D3968, .type = EXT_IV, .length = 0xA08 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0x1D3958, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "ucode20_sslpn_nobt", .offset = 0x1C3A60, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lcn1initvals24", .offset = 0x13BE50, .type = EXT_IV, .length = 0xEA0 },
> + ? ? ? { .name = "sslpn0initvals16", .offset = 0x194A30, .type = EXT_IV, .length = 0xEF0 },
> + ? ? ? { .name = "a0g1initvals13", .offset = 0x1DAEA8, .type = EXT_IV, .length = 0xB98 },
> + ? ? ? { .name = "lp1bsinitvals20", .offset = 0x197918, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn2initvals19", .offset = 0x1978D0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "a0g1initvals9", .offset = 0x1D71F8, .type = EXT_IV, .length = 0xAE8 },
> + ? ? ? { .name = "lcn1bsinitvals24", .offset = 0x13CCF8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode5", .offset = 0x1DCAC8, .type = EXT_UCODE_2, .length = 0x57A0 },
> + ? ? ? { .name = "lcn2bsinitvals24", .offset = 0x13DCC0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp0bsinitvals13", .offset = 0x1DA0C8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals16", .offset = 0x193A18, .type = EXT_IV, .length = 0xEF0 },
> + ? ? ? { .name = "ucode19_sslpn_nobt", .offset = 0x1C3A50, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "b0g0bsinitvals9", .offset = 0x1D65E8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode11", .offset = 0x1E8618, .type = EXT_UCODE_2, .length = 0x7DE0 },
> + ? ? ? { .name = "lp0initvals16", .offset = 0x195A48, .type = EXT_IV, .length = 0xEF0 },
> + ? ? ? { .name = "ucode16_mimo", .offset = 0x1B0BB8, .type = EXT_UCODE_3, .length = 0x9D48 },
> + ? ? ? { .name = "lcn0bsinitvals26", .offset = 0x143B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ht0initvals29", .offset = 0x146C98, .type = EXT_IV, .length = 0xF10 },
> + ? ? ? { .name = "lcn2bsinitvals25", .offset = 0x141BB0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "a0g0initvals9", .offset = 0x1D6708, .type = EXT_IV, .length = 0xAE8 },
> + ? ? ? { .name = "ucode29_mimo", .offset = 0x177648, .type = EXT_UCODE_3, .length = 0x9E18 },
> + ? ? ? { .name = "lcn0bsinitvals24", .offset = 0x13BD30, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode19_sslpn", .offset = 0x1C3A48, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lcn1initvals25", .offset = 0x13FD60, .type = EXT_IV, .length = 0xE90 },
> + ? ? ? { .name = "ucode30_mimo", .offset = 0x189B94, .type = EXT_UCODE_3, .length = 0x9E68 },
> + ? ? ? { .name = "n16bsinitvals30", .offset = 0x148B10, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0x13ae84 */
> + ? ? ? { .name = "ucode25_mimo", .offset = 0x15B314, .type = EXT_UCODE_3, .length = 0x9BA8 },
> + ? ? ? { .name = "ucode24_mimo", .offset = 0x148C50, .type = EXT_UCODE_3, .length = 0x9D28 },
> + ? ? ? { .name = "ucode27_sslpn", .offset = 0x177640, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lp0initvals13", .offset = 0x1D8D28, .type = EXT_IV, .length = 0x1398 },
> + ? ? ? { .name = "a0g0bsinitvals5", .offset = 0x1D58B8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0x1d3944 */
> + ? ? ? { .name = "ht0bsinitvals26", .offset = 0x146B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode13", .offset = 0x1F03FC, .type = EXT_UCODE_2, .length = 0x72A8 },
> + ? ? ? { .name = "sslpn2bsinitvals19", .offset = 0x1978D8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode15", .offset = 0x1F76B0, .type = EXT_UCODE_3, .length = 0x9258 },
> + ? ? ? { .name = "lp0bsinitvals15", .offset = 0x1DC9A0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals11", .offset = 0x1D7F28, .type = EXT_IV, .length = 0xBB8 },
> + ? ? ? { .name = "lcn0initvals25", .offset = 0x13EDA8, .type = EXT_IV, .length = 0xE90 },
> + ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0x195928, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn1initvals20", .offset = 0x197900, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn1bsinitvals26", .offset = 0x144B68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals22", .offset = 0x198840, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ht0bsinitvals29", .offset = 0x147BB0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? EXTRACT_LIST_END
> +};
> +
> +static struct extract _e1b05e268bcdbfef3560c28fc161f30e[] =
> +{
> + ? ? ? { .name = "lp0initvals14", .offset = 0x1F17C8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn0bsinitvals25", .offset = 0x1601D0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals25", .offset = 0x1635A8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode major version at offset 0x1aad60 */
> + ? ? ? { .name = "n0bsinitvals17", .offset = 0x1AEB10, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode17_mimo", .offset = 0x1D0F48, .type = EXT_UCODE_3, .length = 0x8D70 },
> + ? ? ? { .name = "ucode16_lp", .offset = 0x1AFBE8, .type = EXT_UCODE_3, .length = 0x83A8 },
> + ? ? ? { .name = "sslpn1initvals27", .offset = 0x167628, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lp2bsinitvals19", .offset = 0x1AEC58, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn3bsinitvals21", .offset = 0x1AFA98, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode16_sslpn", .offset = 0x1B7F94, .type = EXT_UCODE_3, .length = 0x8688 },
> + ? ? ? { .name = "ucode25_lcn", .offset = 0x1853E0, .type = EXT_UCODE_3, .length = 0x8817 },
> + ? ? ? { .name = "ucode21_sslpn", .offset = 0x1D9CDC, .type = EXT_UCODE_3, .length = 0x87A7 },
> + ? ? ? { .name = "lp0bsinitvals14", .offset = 0x1F17D0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0initvals9", .offset = 0x1EB788, .type = EXT_IV, .length = 0xAD8 },
> + ? ? ? { .name = "ucode20_sslpn", .offset = 0x1D9CCC, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? /* ucode minor version at offset 0x1aad64 */
> + ? ? ? { .name = "a0g1bsinitvals9", .offset = 0x1EDA68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp1initvals20", .offset = 0x1AEC80, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0bsinitvals13", .offset = 0x1F09E8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp2initvals19", .offset = 0x1AEC50, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n2bsinitvals19", .offset = 0x1AEC38, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn4bsinitvals22", .offset = 0x1AFBD0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode16_sslpn_nobt", .offset = 0x1C0620, .type = EXT_UCODE_3, .length = 0x6FA5 },
> + ? ? ? { .name = "n1bsinitvals20", .offset = 0x1AEC68, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n1initvals20", .offset = 0x1AEC60, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "b0g0bsinitvals5", .offset = 0x1EA008, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode22_sslpn", .offset = 0x1E95C0, .type = EXT_UCODE_3, .length = 0x1 },
> +/* ? ? { .name = "ucode4", .offset = 0x1F2710, .type = EXT_UCODE_1, .length = 0x4 }, */
> +/* ? ? { .name = "b0g0initvals4", .offset = 0x1E95D8, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "b0g0initvals13", .offset = 0x1EFE48, .type = EXT_IV, .length = 0xB98 },
> + ? ? ? { .name = "ht0initvals26", .offset = 0x166650, .type = EXT_IV, .length = 0xEB0 },
> + ? ? ? /* ucode major version at offset 0x15ac20 */
> + ? ? ? { .name = "ucode33_lcn40", .offset = 0x1AAD50, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "sslpn1bsinitvals20", .offset = 0x1AEC78, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn400bsinitvals33", .offset = 0x1695F8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode14", .offset = 0x20BD30, .type = EXT_UCODE_2, .length = 0x4 },
> + ? ? ? /* ucode major version at offset 0x1e95d0 */
> + ? ? ? { .name = "a0g0initvals5", .offset = 0x1EA128, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "lp1bsinitvals22", .offset = 0x1AFBE0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n16initvals30", .offset = 0x168648, .type = EXT_IV, .length = 0xE70 },
> + ? ? ? { .name = "lp0bsinitvals16", .offset = 0x1ADCA8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn1bsinitvals25", .offset = 0x161318, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "pcm4", .offset = 0x2147EC, .type = EXT_PCM, .length = 0x4 }, */
> + ? ? ? { .name = "lcn400initvals33", .offset = 0x1695F0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n0bsinitvals24", .offset = 0x15F088, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn2bsinitvals26", .offset = 0x166530, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn1initvals26", .offset = 0x1646A0, .type = EXT_IV, .length = 0xEB0 },
> + ? ? ? { .name = "n0bsinitvals22", .offset = 0x1AFBC0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n18initvals32", .offset = 0x1695E0, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn2initvals26", .offset = 0x165678, .type = EXT_IV, .length = 0xEB0 },
> + ? ? ? { .name = "a0g1bsinitvals5", .offset = 0x1EB668, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0bsinitvals11", .offset = 0x1EE748, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lcn2initvals24", .offset = 0x15CEE8, .type = EXT_IV, .length = 0x1038 },
> + ? ? ? { .name = "lcn0initvals26", .offset = 0x1636C8, .type = EXT_IV, .length = 0xEB0 },
> + ? ? ? { .name = "n0absinitvals11", .offset = 0x1EE868, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode21_sslpn_nobt", .offset = 0x1E2488, .type = EXT_UCODE_3, .length = 0x7134 },
> + ? ? ? { .name = "ucode26_mimo", .offset = 0x18DBFC, .type = EXT_UCODE_3, .length = 0x9B28 },
> + ? ? ? { .name = "n2initvals19", .offset = 0x1AEC30, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn3initvals21", .offset = 0x1AEC90, .type = EXT_IV, .length = 0xE00 },
> + ? ? ? { .name = "a0g1bsinitvals13", .offset = 0x1F16A8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn4initvals22", .offset = 0x1AFBC8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "pcm5", .offset = 0x2147F4, .type = EXT_PCM, .length = 0x520 },
> + ? ? ? { .name = "ucode22_mimo", .offset = 0x1E95C8, .type = EXT_UCODE_3, .length = 0x4 },
> + ? ? ? { .name = "ucode9", .offset = 0x1F7A64, .type = EXT_UCODE_2, .length = 0x5AD0 },
> + ? ? ? { .name = "lcn2initvals25", .offset = 0x161438, .type = EXT_IV, .length = 0x1020 },
> + ? ? ? { .name = "lp1initvals22", .offset = 0x1AFBD8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn1bsinitvals27", .offset = 0x167630, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn0initvals24", .offset = 0x15AC28, .type = EXT_IV, .length = 0x1038 },
> + ? ? ? { .name = "ucode32_mimo", .offset = 0x1AAD48, .type = EXT_UCODE_3, .length = 0x4 },
> + ? ? ? { .name = "a0g0bsinitvals9", .offset = 0x1ED948, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n18bsinitvals32", .offset = 0x1695E8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "n0initvals24", .offset = 0x15E048, .type = EXT_IV, .length = 0x1038 },
> +/* ? ? { .name = "a0g0bsinitvals4", .offset = 0x1E95F0, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "n0initvals25", .offset = 0x162580, .type = EXT_IV, .length = 0x1020 },
> + ? ? ? { .name = "a0g1initvals5", .offset = 0x1EAB38, .type = EXT_IV, .length = 0xA08 },
> + ? ? ? { .name = "ucode24_lcn", .offset = 0x17314C, .type = EXT_UCODE_3, .length = 0x89BB },
> + ? ? ? { .name = "n0initvals17", .offset = 0x1ADDC8, .type = EXT_IV, .length = 0xD40 },
> + ? ? ? { .name = "n0bsinitvals16", .offset = 0x1ABC68, .type = EXT_IV, .length = 0x118 },
> +/* ? ? { .name = "b0g0bsinitvals4", .offset = 0x1E95E0, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "lp0initvals15", .offset = 0x1F17D8, .type = EXT_IV, .length = 0xE10 },
> + ? ? ? { .name = "b0g0initvals5", .offset = 0x1E95F8, .type = EXT_IV, .length = 0xA08 },
> +/* ? ? { .name = "a0g0initvals4", .offset = 0x1E95E8, .type = EXT_IV, .length = 0x0 }, */
> + ? ? ? { .name = "ucode20_sslpn_nobt", .offset = 0x1D9CD4, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lcn1initvals24", .offset = 0x15BD88, .type = EXT_IV, .length = 0x1038 },
> + ? ? ? { .name = "sslpn0initvals16", .offset = 0x1ABD88, .type = EXT_IV, .length = 0xEF8 },
> + ? ? ? { .name = "a0g1initvals13", .offset = 0x1F0B08, .type = EXT_IV, .length = 0xB98 },
> + ? ? ? { .name = "lp1bsinitvals20", .offset = 0x1AEC88, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "sslpn2initvals19", .offset = 0x1AEC40, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "a0g1initvals9", .offset = 0x1ECE68, .type = EXT_IV, .length = 0xAD8 },
> + ? ? ? { .name = "lcn1bsinitvals24", .offset = 0x15CDC8, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode5", .offset = 0x1F2718, .type = EXT_UCODE_2, .length = 0x5348 },
> + ? ? ? { .name = "lcn2bsinitvals24", .offset = 0x15DF28, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "lp0bsinitvals13", .offset = 0x1EFD28, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals16", .offset = 0x1AAD68, .type = EXT_IV, .length = 0xEF8 },
> + ? ? ? { .name = "ucode19_sslpn_nobt", .offset = 0x1D9CC4, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "b0g0bsinitvals9", .offset = 0x1EC268, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode11", .offset = 0x1FD538, .type = EXT_UCODE_2, .length = 0x79C0 },
> + ? ? ? { .name = "lp0initvals16", .offset = 0x1ACDA8, .type = EXT_IV, .length = 0xEF8 },
> + ? ? ? { .name = "ucode16_mimo", .offset = 0x1C75CC, .type = EXT_UCODE_3, .length = 0x9978 },
> + ? ? ? { .name = "lcn0bsinitvals26", .offset = 0x164580, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ht0initvals29", .offset = 0x167638, .type = EXT_IV, .length = 0xEE8 },
> + ? ? ? { .name = "lcn2bsinitvals25", .offset = 0x162460, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "a0g0initvals9", .offset = 0x1EC388, .type = EXT_IV, .length = 0xAD8 },
> + ? ? ? { .name = "ucode29_mimo", .offset = 0x197730, .type = EXT_UCODE_3, .length = 0x9B48 },
> + ? ? ? { .name = "lcn0bsinitvals24", .offset = 0x15BC68, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode19_sslpn", .offset = 0x1D9CBC, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lcn1initvals25", .offset = 0x1602F0, .type = EXT_IV, .length = 0x1020 },
> + ? ? ? { .name = "ucode30_mimo", .offset = 0x1A127C, .type = EXT_UCODE_3, .length = 0x9AC8 },
> + ? ? ? { .name = "n16bsinitvals30", .offset = 0x1694C0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0x15ac24 */
> + ? ? ? { .name = "ucode25_mimo", .offset = 0x17BB0C, .type = EXT_UCODE_3, .length = 0x98D0 },
> + ? ? ? { .name = "ucode24_mimo", .offset = 0x169600, .type = EXT_UCODE_3, .length = 0x9B48 },
> + ? ? ? { .name = "ucode27_sslpn", .offset = 0x197728, .type = EXT_UCODE_3, .length = 0x1 },
> + ? ? ? { .name = "lp0initvals13", .offset = 0x1EE988, .type = EXT_IV, .length = 0x1398 },
> + ? ? ? { .name = "a0g0bsinitvals5", .offset = 0x1EB548, .type = EXT_IV, .length = 0x118 },
> + ? ? ? /* ucode minor version at offset 0x1e95d4 */
> + ? ? ? { .name = "ht0bsinitvals26", .offset = 0x167508, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "ucode13", .offset = 0x204EFC, .type = EXT_UCODE_2, .length = 0x6E30 },
> + ? ? ? { .name = "sslpn2bsinitvals19", .offset = 0x1AEC48, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ucode15", .offset = 0x20BD38, .type = EXT_UCODE_3, .length = 0x8AB0 },
> + ? ? ? { .name = "lp0bsinitvals15", .offset = 0x1F25F0, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals11", .offset = 0x1EDB88, .type = EXT_IV, .length = 0xBB8 },
> + ? ? ? { .name = "lcn0initvals25", .offset = 0x15F1A8, .type = EXT_IV, .length = 0x1020 },
> + ? ? ? { .name = "sslpn0bsinitvals16", .offset = 0x1ACC88, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "sslpn1initvals20", .offset = 0x1AEC70, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "lcn1bsinitvals26", .offset = 0x165558, .type = EXT_IV, .length = 0x118 },
> + ? ? ? { .name = "n0initvals22", .offset = 0x1AFBB8, .type = EXT_IV, .length = 0x0 },
> + ? ? ? { .name = "ht0bsinitvals29", .offset = 0x168528, .type = EXT_IV, .length = 0x118 },
> + ? ? ? EXTRACT_LIST_END
> +};
> +
> ?/*
> ?* Links change, so let's not put them into the README.
> ?* I still put them here so we know where the file was obtained.
> @@ -456,28 +824,9 @@ static const struct file files[] =
> ? ? ? ? ? ? ? ?.extract ? ? ? ?= _cb8d70972b885b1f8883b943c0261a3c,
> ? ? ? ?},
> ? ? ? ?{
> - ? ? ? ? ? ? ? /* ftp://ftp.linksys.com/opensourcecode/wrt610n/1.00.00.018/wrt610n_v1.00.00.018_us.tgz */
> - ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl.o",
> - ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW14",
> - ? ? ? ? ? ? ? .ucode_version ?= "478.104",
> - ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "2dd738b8feb8b3559fd9d8fbaf3bfffc",
> - ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4 | FW_FLAG_UNSUPPORTED,
> - ? ? ? ? ? ? ? .extract ? ? ? ?= _2dd738b8feb8b3559fd9d8fbaf3bfffc,
> - ? ? ? },
> - ? ? ? {
> - ? ? ? ? ? ? ? /* ftp://downloads.netgear.com/files/GPL/WNDR3300-V1.0.29_gpl_src.zip */
> - ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> - ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW15",
> - ? ? ? ? ? ? ? .ucode_version ?= "478.104",
> - ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "1a258b2d93efa641c32ddf3c3a962028",
> - ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> - ? ? ? ? ? ? ? .extract ? ? ? ?= _1a258b2d93efa641c32ddf3c3a962028,
> - ? ? ? },
> - ? ? ? {
> ? ? ? ? ? ? ? ?/* http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2 */
> ? ? ? ? ? ? ? ?.name ? ? ? ? ? = "wl_apsta.o",
> - ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW15",
> - ? ? ? ? ? ? ? .ucode_version ?= "478.104",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW14 = "478.104",

Typo?

> ? ? ? ? ? ? ? ?.md5 ? ? ? ? ? ?= "bb8537e3204a1ea5903fe3e66b5e2763",
> ? ? ? ? ? ? ? ?.flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> ? ? ? ? ? ? ? ?.extract ? ? ? ?= _bb8537e3204a1ea5903fe3e66b5e2763,
> @@ -491,4 +840,49 @@ static const struct file files[] =
> ? ? ? ? ? ? ? ?.flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> ? ? ? ? ? ? ? ?.extract ? ? ? ?= _490d4e149ecc45eb1a91f06aa75be071,
> ? ? ? ?},
> + ? ? ? {
> + ? ? ? ? ? ? ? /* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.56.51.tar.bz2 */
> + ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW16",
> + ? ? ? ? ? ? ? .ucode_version ?= "508.1107",
> + ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "f06c8aa30ea549ce21872d10ee9a7d48",
> + ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> + ? ? ? ? ? ? ? .extract ? ? ? ?= _f06c8aa30ea549ce21872d10ee9a7d48,
> + ? ? ? },
> + ? ? ? {
> + ? ? ? ? ? ? ? /* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.56.2808.tar.bz2 */
> + ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW17",
> + ? ? ? ? ? ? ? .ucode_version ?= "508.10872",
> + ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "e413c0017b99195f3231201c53f314d1",
> + ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> + ? ? ? ? ? ? ? .extract ? ? ? ?= _e413c0017b99195f3231201c53f314d1,
> + ? ? ? },
> + ? ? ? {
> + ? ? ? ? ? ? ? /* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.10.144.3.tar.bz2 */
> + ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW18",
> + ? ? ? ? ? ? ? .ucode_version ?= "508.154",
> + ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "023fafbe4918e384dd531a046dbc03e8",
> + ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> + ? ? ? ? ? ? ? .extract ? ? ? ?= _023fafbe4918e384dd531a046dbc03e8,
> + ? ? ? },
> + ? ? ? {
> + ? ? ? ? ? ? ? /* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.104.2.tar.bz2 */
> + ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW19",
> + ? ? ? ? ? ? ? .ucode_version ?= "644.1001",
> + ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "68f38d139b1f69f3ea12393fb645c6f9",
> + ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> + ? ? ? ? ? ? ? .extract ? ? ? ?= _68f38d139b1f69f3ea12393fb645c6f9,
> + ? ? ? },
> + ? ? ? {
> + ? ? ? ? ? ? ? /* http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2 */
> + ? ? ? ? ? ? ? .name ? ? ? ? ? = "wl_apsta.o",
> + ? ? ? ? ? ? ? .id ? ? ? ? ? ? = "FW20",
> + ? ? ? ? ? ? ? .ucode_version ?= "666.2",
> + ? ? ? ? ? ? ? .md5 ? ? ? ? ? ?= "e1b05e268bcdbfef3560c28fc161f30e",
> + ? ? ? ? ? ? ? .flags ? ? ? ? ?= FW_FLAG_LE | FW_FLAG_V4,
> + ? ? ? ? ? ? ? .extract ? ? ? ?= _e1b05e268bcdbfef3560c28fc161f30e,
> + ? ? ? },
> ?};
> Index: fwcutter/Makefile
> ===================================================================
> --- fwcutter.orig/Makefile
> +++ fwcutter/Makefile
> @@ -1,4 +1,4 @@
> -VERSION = 014
> +VERSION = 015
>
> ?# The toolchain definitions
> ?CC ? ? ? ? ? ? = cc
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
