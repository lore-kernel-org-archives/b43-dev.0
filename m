From: Igor Korot <ikorot01@gmail.com>
Date: Sat, 6 Sep 2014 13:06:27 -0700
Subject: B43 driver problem
In-Reply-To: <20140824092021.6bfb718b@wiggum>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <53F75312.60200@lwfinger.net>
 <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
 <53F8B222.3080406@lwfinger.net>
 <CA+FnnTzG_dWyVfA1s+AOXV9VpzhbmE5YkHX-nUg5RTYbKQNxtQ@mail.gmail.com>
 <20140824092021.6bfb718b@wiggum>
Message-ID: <CA+FnnTz9oJcdaS_aA7GsNEQHNF-OO8JcE-+5OkpgdBeKmzEi_g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, Michael,
[code]
IgorDellGentoo agw # lspci -v
0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g
LP-PHY (rev 01)
        Subsystem: Dell Wireless 1397 WLAN Mini-Card
        Flags: bus master, fast devsel, latency 0, IRQ 17
        Memory at f69fc000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3
        Capabilities: [58] Vendor Specific Information: Len=78 <?>
        Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
        Capabilities: [d0] Express Endpoint, MSI 00
        Capabilities: [100] Advanced Error Reporting
        Capabilities: [13c] Virtual Channel
        Capabilities: [160] Device Serial Number 66-4a-5f-ff-ff-ce-00-22
        Capabilities: [16c] Power Budgeting <?>
        Kernel driver in use: b43-pci-bridge
[/code]

Do you know what is this b43-pci-bridge is? How do I turn it off?
Is it CONFIG_SSB related?

Thank you.


On 8/24/14, Michael B?sch <m@bues.ch> wrote:
> On Sat, 23 Aug 2014 20:56:17 -0700
> Igor Korot <ikorot01@gmail.com> wrote:
>
>> [    1.419227] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 6, Type 5
>> (LP), Revision 1)
>> [    1.420925] b43: probe of ssb0:0 failed with error -95
>>
>> What is "error -95"?
>
> -EOPNOTSUPP
> See below.
>
>> Maybe I have wrong firmware?
>
>
> No. You are using the wrong kernel.
>
> The relevant code section, that throws the error is:
>
>>	int unsupported = 0;
>>...
>> 	switch (phy_type) {
>>...
>> #ifdef CONFIG_B43_PHY_LP
>> 	case B43_PHYTYPE_LP:
>> 		if (phy_rev > 2)
>> 			unsupported = 1;
>> 		break;
>> #endif
>>...
>> 	default:
>> 		unsupported = 1;
>> 	}
>> 	if (unsupported) {
>> 		b43err(dev->wl, "FOUND UNSUPPORTED PHY (Analog %u, Type %d (%s),
>> Revision %u)\n",
>> 		       analog_type, phy_type, b43_phy_name(dev, phy_type),
>> 		       phy_rev);
>> 		return -EOPNOTSUPP;
>> 	}
>
> So for this error to trigger, you would have to have revision 3 or later,
> which you don't,
> or you would have to have a kernel without LP support compiled in.
>
> Make sure you installed your kernel _and_ initramfs correctly.
> Also make sure to boot the correct kernel.
>
> --
> Michael
>
