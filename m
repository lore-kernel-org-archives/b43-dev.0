From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 7 Mar 2012 07:54:44 +0100
Subject: [RFT][PATCH] b43: fix logic in GPIO configuration
In-Reply-To: <20120307003221.7664eb4a@milhouse>
References: <1331071898-3651-1-git-send-email-zajec5@gmail.com>
 <4F5695CC.3010206@hauke-m.de> <20120307003221.7664eb4a@milhouse>
Message-ID: <CACna6rzo79zByzwqcF77nadqFjHRk6v6nkG=05VohJV2ijQn1w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, larry.finger@lwfinger.net, florian@openwrt.org

2012/3/7 Michael B?sch <m@bues.ch>:
> On Tue, 06 Mar 2012 23:55:08 +0100
> Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
>> This patch did not helped fixing my problem. The ucode still takes over
>> the GPIOs of the buttons with firmware version 666.2. I am getting the
>> following messages:
>>
>> [ ? 83.620000] b43-phy0: Loading firmware version 666.2 (2011-02-23
>> 01:15:07)
>> [ ? 83.624000] Init value of B43_GPIO_CONTROL: 0x0
>
>
> I think this is caused by b43_gpio_cleanup. Can you try removing that function (or just returning early, for the time being.)

B43_GPIO_CONTROL is zero by default (after boot), so AFAIU setting it
back to zero in b43_gpio_cleanup shouldn't break anything.

-- 
Rafa?
