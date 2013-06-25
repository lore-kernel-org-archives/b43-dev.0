From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 25 Jun 2013 21:51:11 +0200
Subject: [RFC][PATCH] b43: replace B43_BCMA_EXTRA with modparam
 allhwsupport
In-Reply-To: <CAOiHx=mHVhg93pRyq7Qg1H9iTnScGtCUeOoxBxpeHuH6pW2XYQ@mail.gmail.com>
References: <1372174495-14471-1-git-send-email-zajec5@gmail.com>
 <CAOiHx=mHVhg93pRyq7Qg1H9iTnScGtCUeOoxBxpeHuH6pW2XYQ@mail.gmail.com>
Message-ID: <CACna6rz=LQkaz+b+-gqnXYOL=bJfAVSiU4v50NPeRytmB_y5fw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jonas Gorski <jogo@openwrt.org>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/6/25 Jonas Gorski <jogo@openwrt.org>:
> On Tue, Jun 25, 2013 at 5:34 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> This allows enabling support for extra hardware with just a module
>> param, without kernel/module recompilation.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>>  drivers/net/wireless/b43/Kconfig |    6 ------
>>  drivers/net/wireless/b43/main.c  |   16 ++++++++++++++--
>>  2 files changed, 14 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/Kconfig b/drivers/net/wireless/b43/Kconfig
>> index 3f21e0b..51ff0b1 100644
>> --- a/drivers/net/wireless/b43/Kconfig
>> +++ b/drivers/net/wireless/b43/Kconfig
>> @@ -31,12 +31,6 @@ config B43_BCMA
>>         depends on B43 && (BCMA = y || BCMA = B43)
>>         default y
>>
>> -config B43_BCMA_EXTRA
>> -       bool "Hardware support that overlaps with the brcmsmac driver"
>> -       depends on B43_BCMA
>> -       default n if BRCMSMAC
>> -       default y
>> -
>>  config B43_SSB
>>         bool
>>         depends on B43 && (SSB = y || SSB = B43)
>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>> index a95b77a..583993c 100644
>> --- a/drivers/net/wireless/b43/main.c
>> +++ b/drivers/net/wireless/b43/main.c
>> @@ -113,13 +113,19 @@ static int b43_modparam_pio = 0;
>>  module_param_named(pio, b43_modparam_pio, int, 0644);
>>  MODULE_PARM_DESC(pio, "Use PIO accesses by default: 0=DMA, 1=PIO");
>>
>> +#ifdef CONFIG_BRCMSMAC
>
> This is only defined if BRCMSMAC is built-in, but not if it is built
> as a module; then it's CONFIG_BRCMSMAC_MODULE, which is probably not
> what you want. To easily catch both, use IS_ENABLED(CONFIG_BRCMSMAC).
>
>> +static int modparam_allhwsupport;
>> +#else
>> +static int modparam_allhwsupport = 1;
>> +#endif
>
> And since IS_ENABLED returns 0 or 1 you should be able to reduce it to one line:
>
> static int modparam_allhwsupport = !IS_ENABLED(CONFIG_BRCMSMAC);

I love learning new tricks all the time :)

-- 
Rafa?
