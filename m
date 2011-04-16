From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 16 Apr 2011 15:41:00 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <BANLkTimPyu2CXP+pLTj_vhJjhkzV1ik1YA@mail.gmail.com>
References: <BANLkTinooer0aFqJfn0ui+QXpLO6YkPhEg@mail.gmail.com>
	<BANLkTimPyu2CXP+pLTj_vhJjhkzV1ik1YA@mail.gmail.com>
Message-ID: <BANLkTikwu4q2+iNU5txeDsJ9kDs6QcRwVw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 16 kwietnia 2011 06:37 u?ytkownik Darren <dmbtech@gmail.com> napisa?:
> I also just got a macbook pro 2011,
> I ran the patch on 2.6.38.3, had a couple compiler errors related to
> axi_debug (I just commented them out) added the pciid, and got some results:
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.218759] axi-pci-bridge
> 0000:03:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.218786] axi-pci-bridge
> 0000:03:00.0: setting latency timer to 64
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.218884] Core 0 found:
> ChipCommon (manuf 0x4BF, id 0x800, rev 0x25, class 0x0)
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.218919] Core 1 found: IEEE
> 802.11 (manuf 0x4BF, id 0x812, rev 0x1D, class 0x0)
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.218988] Core 2 found: PCIe
> (manuf 0x4BF, id 0x820, rev 0x13, class 0x0)
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.219142] PMU resource config
> unknown for device 0x4331
> Apr 16 00:01:36 dmb-MacBookPro kernel: [? 144.219150] Enabling Ext PA lines
> not implemented
> Apr 16 00:04:10 dmb-MacBookPro kernel: [? 144.248126] AXI registered
> Anything else you want me to try? Looks encouraging.

This seems to be the same situation as in case of Andy's machine. We
don't have any reference driver so I'll be hard to implement support
for this card.

Possible solutions I can see:
1) Wait for wl to support BCM4331
2) Try to use ndiswrapper and MMIO trace it's operations. Didn't try
it ever, not sure how much is this possible.

-- 
Rafa?
