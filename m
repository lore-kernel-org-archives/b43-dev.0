From: Igor Korot <ikorot01@gmail.com>
Date: Fri, 22 Aug 2014 02:04:10 -0700
Subject: B43 driver problem
In-Reply-To: <CACna6rwWQ0GGhj2NNcPUPiBMK1WfcX7d=qyM2==eTJ0C8NFKhg@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <CACna6rwkJRKp_cxVPEkJuwV7OVQf0frP1q5RLc9+oWRVN0P+Dg@mail.gmail.com>
 <CA+FnnTy2LENG+W_oXvwKKehHfibmjE3MziRgdNEzOMTG1CRTVg@mail.gmail.com>
 <CACna6ryRcMxcw7e+yHw5yMAAo91HhfTOfNK-rcW+H_4xbMA7TQ@mail.gmail.com>
 <CA+FnnTwagOv2Wun6L0SL7XDca62mrLZan5bgZi+kJ1bSx64Eow@mail.gmail.com>
 <CACna6rwWQ0GGhj2NNcPUPiBMK1WfcX7d=qyM2==eTJ0C8NFKhg@mail.gmail.com>
Message-ID: <CA+FnnTzAmzZ5vR48m2Q0=i20VCRS85w424m7QySDu26nYHpaCw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafal,
Maybe all I need is to upgrade the kernel?

Thank you.


On 8/21/14, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 22 August 2014 08:18, Igor Korot <ikorot01@gmail.com> wrote:
>> Rafal,
>>
>> On Thu, Aug 21, 2014 at 10:34 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>> On 22 August 2014 07:26, Igor Korot <ikorot01@gmail.com> wrote:
>>>> Rafal,
>>>> [code]
>>>> IgorDellGentoo linux # cat .config | grep B43
>>>> CONFIG_B43=m
>>>> CONFIG_B43_SSB=y
>>>> CONFIG_B43_PCI_AUTOSELECT=y
>>>> CONFIG_B43_PCICORE_AUTOSELECT=y
>>>> # CONFIG_B43_PCMCIA is not set
>>>> CONFIG_B43_PIO=y
>>>> CONFIG_B43_PHY_N=y
>>>> CONFIG_B43_PHY_LP=y
>>>> CONFIG_B43_LEDS=y
>>>> CONFIG_B43_HWRNG=y
>>>> CONFIG_B43_DEBUG=y
>>>> # CONFIG_B43LEGACY is not set
>>>> CONFIG_SSB_B43_PCI_BRIDGE=y
>>>> [/code]
>>>>
>>>> This option is set.
>>>
>>> Well, I think there must be sth wrong with your kernel/module then.
>>> b43 clearly says that this PHY is LP revision 1. If CONFIG_B43_PHY_LP
>>> is enabled, b43_phy_versioning [0] may result in "UNSUPPORTED PHY"
>>> only if revision is 3 or higher.
>>> Please verify your installation/module.
>>
>> What options should be compiled as a module in order for the driver to
>> function?
>> Does mac80211 should be also compiled as a module or in-kernel?
>
> Kconfig should handle all dependencies just fine.
>
> --
> Rafa?
>
