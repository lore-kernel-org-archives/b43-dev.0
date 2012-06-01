From: Kshitij Kulshreshtha <kkhere.geo@gmail.com>
Date: Fri, 01 Jun 2012 13:16:32 +0200
Subject: Procedure for donating hardware to b43 project
In-Reply-To: <4FBB9C7F.5010102@gmail.com>
References: <4FBB9C7F.5010102@gmail.com>
Message-ID: <4FC8A490.4070507@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

*ping*

Does anyone want this piece of hardware?

As on 2012-05-22 16:02, Kshitij Kulshreshtha did write:
> Hello,
> 
> I am interested in donating a Broadcom BCM94228HMB Mini-PCIe card for
> the purpose of open source driver development. The card has the PCI ID
> 14e4:4359 This device is listed as not tested on the b43 driver website
> [1] and upon binding the pci device to the bcma driver and force loading
> b43 in kernel version 3.3.6 I get the following output.
> 
> [13174.301451] bcma: Core 0 found: ChipCommon (manuf 0x4BF, id 0x800,
> rev 0x25, class 0x0)
> [13174.301475] bcma: Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812,
> rev 0x1E, class 0x0)
> [13174.301526] bcma: Core 2 found: PCIe (manuf 0x4BF, id 0x820, rev
> 0x12, class 0x0)
>  [13174.301548] bcma: Core 3 found: SDIO Device (manuf 0x4BF, id 0x829,
> rev 0x07, class 0x0)
> [13174.301667] bcma: PLL init unknown for device 0xA8DC
> [13174.301669] bcma: PMU resource config unknown for device 0xA8DC
> [13174.301671] bcma: PMU switch/regulators init unknown for device 0xA8DC
> [13174.301672] bcma: Workarounds unknown for device 0xA8DC
> [13174.308903] bcma: No SPROM available
> [13174.308995] bcma: Bus registered
> [13174.327537] b43-phy0: Broadcom 43228 WLAN found (core revision 30)
> [13174.327953] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 9, Type 9,
> Revision 0)
> [13174.327958] b43: probe of bcma0:1 failed with error -95
> [13174.327968] Broadcom 43xx driver loaded [ Features: PMNLS ]
> 
> Incidentally the card seems to have a Bluetooth component as well, but
> this does not show up at all under linux.
> 
> So what would be the procedure to donate this card to someone who knows
> a more about the b43 driver and devices so this device can be supported
> in the future?
> 
> Thanks and regards.
> 

-- 
Dr. Kshitij Kulshreshtha

Institut f?r Mathematik,
Universit?t Paderborn,
Warburger Stra?e 100,
33098 Paderborn.

B?ro: A3.235

Privatanschrift:
Arnikaweg 62
33100 Paderborn.
