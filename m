From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 28 Jun 2012 17:52:36 +0200
Subject: [PATCH 6/8] bcma: handle SoCs in pmu initialization
In-Reply-To: <4FD4F793.2030507@hauke-m.de>
References: <1338933307-13446-1-git-send-email-hauke@hauke-m.de>
 <1338933307-13446-7-git-send-email-hauke@hauke-m.de>
 <2716026.rMfCBzMpF9@flexo>
 <CACna6rw_5dcR9tu_Nnq_0Z3u+KJ--Lmx7yi+uHJm-kJPepqrng@mail.gmail.com>
 <4FD4F793.2030507@hauke-m.de>
Message-ID: <CACna6rwYawBawu_KP4rADKjGTspKdvRrvJbhzA18ApBP1tvAiQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Florian Fainelli <florian@openwrt.org>, linville@tuxdriver.com, b43-dev@lists.infradead.org, arend@broadcom.com, linux-wireless@vger.kernel.org

2012/6/10 Hauke Mehrtens <hauke@hauke-m.de>:
> On 06/10/2012 06:54 PM, Rafa? Mi?ecki wrote:
>> 2012/6/6 Florian Fainelli <florian@openwrt.org>:
>>> Hi Hauke,
>>>
>>> On Tuesday 05 June 2012 23:55:05 Hauke Mehrtens wrote:
>>>> The SoCs do not need any special handling in bcma_pmu_pll_init(),
>>>> bcma_pmu_resources_init(), bcma_pmu_swreg_init() and
>>>> bcma_pmu_workarounds. This patches suppresses some warnings in the log.
>>>
>>> This does not look like it scales very good, how about you turn the pr_err()
>>> into a pr_debug() so that developpers porting bcma on a new chip need to turn
>>> on the appropriate debug knobs to get the message?
>>
>> debug sounds fine for me
>>
> Hi Rafa?,
>
> bcma_pmu_swreg_init() and bcma_pmu_pll_init() are doing nothing should
> they get removed? In the current version of the patch I also removed the
> chip ids of the PCIe based cards from the switch case statement if they
> just ended in a break, is that ok with you?

Original si_pmu_pll_init had some meaning for BCM4329, BCM4319,
BCM4336 and BCM4330. I guess all of them are fullmac devices, right?

Original si_pmu_swreg_init got meaning for BCM4336 and BCM4336.

Seems both can be dropped?

-- 
Rafa?
