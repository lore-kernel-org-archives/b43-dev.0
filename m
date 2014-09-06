From: Igor Korot <ikorot01@gmail.com>
Date: Sat, 6 Sep 2014 14:20:00 -0700
Subject: B43 driver problem
In-Reply-To: <20140906224802.5a8a36ea@wiggum>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <53F75312.60200@lwfinger.net>
 <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
 <53F8B222.3080406@lwfinger.net>
 <CA+FnnTzG_dWyVfA1s+AOXV9VpzhbmE5YkHX-nUg5RTYbKQNxtQ@mail.gmail.com>
 <20140824092021.6bfb718b@wiggum>
 <CA+FnnTz9oJcdaS_aA7GsNEQHNF-OO8JcE-+5OkpgdBeKmzEi_g@mail.gmail.com>
 <20140906224802.5a8a36ea@wiggum>
Message-ID: <CA+FnnTyc-6Ogsvd53Dxqd2AdoNBFbssg035ONmiyHb9uSfA+pA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Michael,

On Sat, Sep 6, 2014 at 1:48 PM, Michael B?sch <m@bues.ch> wrote:
> On Sat, 6 Sep 2014 13:06:27 -0700
> Igor Korot <ikorot01@gmail.com> wrote:
>
>> Hi, Michael,
>> [code]
>> IgorDellGentoo agw # lspci -v
>> 0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g
>> LP-PHY (rev 01)
>>         Subsystem: Dell Wireless 1397 WLAN Mini-Card
>>         Flags: bus master, fast devsel, latency 0, IRQ 17
>>         Memory at f69fc000 (64-bit, non-prefetchable) [size=16K]
>>         Capabilities: [40] Power Management version 3
>>         Capabilities: [58] Vendor Specific Information: Len=78 <?>
>>         Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
>>         Capabilities: [d0] Express Endpoint, MSI 00
>>         Capabilities: [100] Advanced Error Reporting
>>         Capabilities: [13c] Virtual Channel
>>         Capabilities: [160] Device Serial Number 66-4a-5f-ff-ff-ce-00-22
>>         Capabilities: [16c] Power Budgeting <?>
>>         Kernel driver in use: b43-pci-bridge
>> [/code]
>>
>> Do you know what is this b43-pci-bridge is? How do I turn it off?
>> Is it CONFIG_SSB related?
>
> You don't want to disable it.
> This is the PCI driver that registers the b43 ssb bus that lives on the b43 PCI device.

Ok.
AFAICS, this output should display just "b43" as the driver and not
"b43-pci-bridge", no?
So how do I set the appropriate driver for the card?
Or maybe the output is correct and I'm wrong?

I'm just trying to look at all possibilities of what is going on...

Thank you.

>
> --
> Michael
