From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 Mar 2015 14:36:10 +0100
Subject: [PATCH] bcma: Kconfig: Let it depend on PCI
In-Reply-To: <CACna6ryi4ACAfkYRDGTWkwGh9PQrj9zxcnaWjO56m1dyhmiFGA@mail.gmail.com>
References: <BLU436-SMTP3656F4A0610686DAE30BA1B9110@phx.gbl>
 <CACna6rxJ_uQHmpQS9NPs9JW=zNS4oc2-_cH6nXG0Z9CWu7iW7A@mail.gmail.com>
 <CACna6ryi4ACAfkYRDGTWkwGh9PQrj9zxcnaWjO56m1dyhmiFGA@mail.gmail.com>
Message-ID: <CACna6rxtvwQxrsRuRt0XLAyQg5rKFf2VqNm6Vrzic5gMCbJDcg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chen Gang <xili_gchen_5257@hotmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Larry Finger <Larry.Finger@lwfinger.net>, Arnd Bergmann <arnd@arndb.de>

On 4 March 2015 at 13:08, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 4 March 2015 at 07:19, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> On 3 March 2015 at 22:16, Chen Gang <xili_gchen_5257@hotmail.com> wrote:
>>> bcma also needs PCI, just like IOMEM and DMA, so let it depend on PCI,
>>> or will cause building break for allmodconfig under c6x:
>>>
>>>     CC [M]  drivers/bcma/driver_pcie2.o
>>>   drivers/bcma/driver_pcie2.c: In function 'bcma_core_pcie2_up':
>>>   drivers/bcma/driver_pcie2.c:196:8: error: implicit declaration of function 'pcie_set_readrq' [-Werror=implicit-function-declaration]
>>>     err = pcie_set_readrq(dev, pcie2->reqsize);
>>>           ^
>>>
>>> Signed-off-by: Chen Gang <gang.chen.5i5j@gmail.com>
>>> ---
>>>  drivers/bcma/Kconfig | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/bcma/Kconfig b/drivers/bcma/Kconfig
>>> index 0ee48be..8be284e 100644
>>> --- a/drivers/bcma/Kconfig
>>> +++ b/drivers/bcma/Kconfig
>>> @@ -1,6 +1,6 @@
>>>  config BCMA_POSSIBLE
>>>         bool
>>> -       depends on HAS_IOMEM && HAS_DMA
>>> +       depends on HAS_IOMEM && HAS_DMA && PCI
>>>         default y
>>>
>>>  menu "Broadcom specific AMBA"
>>> --
>>> 1.9.3
>>
>> Hm, I'm not sure how to ideally handle this. Cc-ing few ppl, maybe
>> they have something to add.
>>
>> In fact there are SoCs (not using PCI host code obviously) with
>> everything embedded (without any PCI host mode cores). So note
>> following info about driver_pci.c and driver_pcie2.c:
>> 1) For BCMA_HOST_PCI
>> They are required, because of needed host-related PCI(e) core initialization.
>> 2) For BCMA_HOST_SOC
>> They are needed only if your SoC has PCI(e) host cores and you want to use them.
>>
>> So I guess in theory we could have BCMA_DRIVER_PCI and *require* it
>> for BCMA_HOST_PCI only.
>
> After thinking about this.
> We already have Kconfig entries for other internal drivers, so I guess
> it makes sense to do the same for PCIe.

I've just realized that implementing my idea (optional PCIe core
drivers) will require reworking following functions:
bcma_core_pci_irq_ctl
bcma_core_pci_power_save
bcma_core_pci_irq_ctl
bcma_core_pci_init
bcma_core_pcie2_init
bcma_core_pci_early_init
to make them safe to call ever without BCMA_DRIVER_PCI(E).

To do that we should clean headers first, which is what I started doing in
[PATCH next] bcma: move internal function declarations to private header

So I think that for now we could just accept Chen's patch and then
improve PCIe handling in bcma dropping this dependency at some point.

Any other opinions?

-- 
Rafa?
