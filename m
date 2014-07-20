From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 20 Jul 2014 13:19:37 +0200
Subject: [PATCH 1/2] b43: implement PPR (Power Per Rate) management/API
In-Reply-To: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
Message-ID: <20140720131937.3229b17c@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 20 Jul 2014 13:00:21 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> +#define B43_PPR_CCK_RATES_NUM		4
> +#define B43_PPR_OFDM_RATES_NUM		8
> +#define B43_PPR_MCS_RATES_NUM		8
> +
> +#define B43_PPR_RATES_NUM	(B43_PPR_CCK_RATES_NUM +	\
> +				 B43_PPR_OFDM_RATES_NUM * 2 +	\
> +				 B43_PPR_MCS_RATES_NUM * 4)
> +
> +struct b43_ppr_rates {
> +	u8 cck[B43_PPR_CCK_RATES_NUM];
> +	u8 ofdm[B43_PPR_OFDM_RATES_NUM];
> +	u8 ofdm_20_cdd[B43_PPR_OFDM_RATES_NUM];
> +	u8 mcs_20[B43_PPR_MCS_RATES_NUM]; /* SISO */
> +	u8 mcs_20_cdd[B43_PPR_MCS_RATES_NUM];
> +	u8 mcs_20_stbc[B43_PPR_MCS_RATES_NUM];
> +	u8 mcs_20_sdm[B43_PPR_MCS_RATES_NUM];
> +} __packed;
> +
> +struct b43_ppr {
> +	/* All powers are in qdbm (Q5.2) */
> +	union {
> +		u8 __all_rates[B43_PPR_RATES_NUM];
> +		struct b43_ppr_rates rates;
> +	} __packed;

I don't think this union has to be packed.
And most likely struct b43_ppr_rates is ok without packing, too.
You could probably remove it there and add a BUILD_BUG which checks something like (pseudocode):
BUILD_BUG_ON(offsetof(struct b43_ppr_rates.mcs_20_sdm) != B43_PPR_CCK_RATES_NUM + B43_PPR_OFDM_RATES_NUM * 2 + B43_PPR_MCS_RATES_NUM * 3);

Removing packed will produce much nicer code.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140720/9a30ee67/attachment.sig>
