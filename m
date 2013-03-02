From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 2 Mar 2013 10:19:26 +0100
Subject: [PATCH] b43: HT-PHY: make it BCMA-only
In-Reply-To: <20130302050900.6e768a3e@milhouse>
References: <1362186865-20539-1-git-send-email-zajec5@gmail.com>
 <20130302050900.6e768a3e@milhouse>
Message-ID: <CACna6rw1HLX8oP_mepfikpuKZ9zQ8j8+1=mOi_iCLQ49jUq-PA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/3/2 Michael B?sch <m@bues.ch>:
> On Sat,  2 Mar 2013 02:14:25 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> HT-PHY was found only on BCM4331 which is a BCMA-based chipset. This is
>> reallly unlikely we will ever see HT-PHY on SSB thus make the whole code
>> BCMA specific. This will allow us to call various BCMA-specific
>> functions directly (without extra checks).
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>>  drivers/net/wireless/b43/Kconfig  |    2 +-
>>  drivers/net/wireless/b43/phy_ht.c |    5 +++++
>>  2 files changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
>> index 7a28d21..09d315d 100644
>> --- a/drivers/net/wireless/b43/Kconfig
>> +++ b/drivers/net/wireless/b43/Kconfig
>> @@ -131,7 +131,7 @@ config B43_PHY_LP
>>
>>  config B43_PHY_HT
>>       bool "Support for HT-PHY (high throughput) devices (EXPERIMENTAL)"
>> -     depends on B43 && EXPERIMENTAL
>> +     depends on B43 && B43_BCMA && EXPERIMENTAL
>
> Makes sense.
> What about removing EXPERIMENTAL? This flag is mostly useless these days.

A little later, I've plan for some minor improvement :)

-- 
Rafa?
