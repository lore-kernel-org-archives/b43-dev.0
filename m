From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Jul 2014 13:34:23 +0200
Subject: [PATCH 1/2] b43: implement PPR (Power Per Rate) management/API
In-Reply-To: <20140720131937.3229b17c@wiggum>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <20140720131937.3229b17c@wiggum>
Message-ID: <CACna6rySBXCzOhPTEd1Q4RsdQ0XBJSc0X3e2y5mH7O4c7kg5LA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On 20 July 2014 13:19, Michael B?sch <m@bues.ch> wrote:
> On Sun, 20 Jul 2014 13:00:21 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> +#define B43_PPR_CCK_RATES_NUM                4
>> +#define B43_PPR_OFDM_RATES_NUM               8
>> +#define B43_PPR_MCS_RATES_NUM                8
>> +
>> +#define B43_PPR_RATES_NUM    (B43_PPR_CCK_RATES_NUM +        \
>> +                              B43_PPR_OFDM_RATES_NUM * 2 +   \
>> +                              B43_PPR_MCS_RATES_NUM * 4)
>> +
>> +struct b43_ppr_rates {
>> +     u8 cck[B43_PPR_CCK_RATES_NUM];
>> +     u8 ofdm[B43_PPR_OFDM_RATES_NUM];
>> +     u8 ofdm_20_cdd[B43_PPR_OFDM_RATES_NUM];
>> +     u8 mcs_20[B43_PPR_MCS_RATES_NUM]; /* SISO */
>> +     u8 mcs_20_cdd[B43_PPR_MCS_RATES_NUM];
>> +     u8 mcs_20_stbc[B43_PPR_MCS_RATES_NUM];
>> +     u8 mcs_20_sdm[B43_PPR_MCS_RATES_NUM];
>> +} __packed;
>> +
>> +struct b43_ppr {
>> +     /* All powers are in qdbm (Q5.2) */
>> +     union {
>> +             u8 __all_rates[B43_PPR_RATES_NUM];
>> +             struct b43_ppr_rates rates;
>> +     } __packed;
>
> I don't think this union has to be packed.
> And most likely struct b43_ppr_rates is ok without packing, too.
> You could probably remove it there and add a BUILD_BUG which checks something like (pseudocode):
> BUILD_BUG_ON(offsetof(struct b43_ppr_rates.mcs_20_sdm) != B43_PPR_CCK_RATES_NUM + B43_PPR_OFDM_RATES_NUM * 2 + B43_PPR_MCS_RATES_NUM * 3);
>
> Removing packed will produce much nicer code.

Thanks for your comments. I'll rework this.
John: please wait for V2

Btw. I was waiting for comments since Monday you slug (just kidding!) ;)

-- 
Rafa?
