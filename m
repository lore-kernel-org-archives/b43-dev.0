From: Darren <dmbtech@gmail.com>
Date: Sat, 16 Apr 2011 00:37:12 -0400
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <BANLkTinooer0aFqJfn0ui+QXpLO6YkPhEg@mail.gmail.com>
References: <BANLkTinooer0aFqJfn0ui+QXpLO6YkPhEg@mail.gmail.com>
Message-ID: <BANLkTimPyu2CXP+pLTj_vhJjhkzV1ik1YA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I also just got a macbook pro 2011,
I ran the patch on 2.6.38.3, had a couple compiler errors related to
axi_debug (I just commented them out) added the pciid, and got some results:
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.218759] axi-pci-bridge
0000:03:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.218786] axi-pci-bridge
0000:03:00.0: setting latency timer to 64
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.218884] Core 0 found:
ChipCommon (manuf 0x4BF, id 0x800, rev 0x25, class 0x0)
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.218919] Core 1 found: IEEE
802.11 (manuf 0x4BF, id 0x812, rev 0x1D, class 0x0)
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.218988] Core 2 found: PCIe
(manuf 0x4BF, id 0x820, rev 0x13, class 0x0)
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.219142] PMU resource config
unknown for device 0x4331
Apr 16 00:01:36 dmb-MacBookPro kernel: [  144.219150] Enabling Ext PA lines
not implemented
Apr 16 00:04:10 dmb-MacBookPro kernel: [  144.248126] AXI registered
Anything else you want me to try? Looks encouraging.

2011/4/16 *Rafa? Mi?ecki* zajec5 at gmail.com
<b43-dev%40lists.infradead.org?Subject=Re:%20Re%3A%20New%20device%20in%20MacBook%20Pro%2C%20yet%20unsupported%3F&In-Reply-To=%3CBANLkTi%3DNj67rVqwdH06A9tKq8%3DZUn2xx5Q%40mail.gmail.com%3E>
>
> W dniu 10 kwietnia 2011 11:16 u?ytkownik Andy Botting
> <andy@andybotting.com <http://lists.infradead.org/mailman/listinfo/b43-dev>> napisa?:
> >* Hi Rafa?,*>**>* I compiled it into my 2.6.38.2 kernel and booted it. When I modprobe'd*>* it, I get nothing in dmesg.*>**>* Anything else I can try?*
> Ah, sorry.
>
> Can you modify axi_pci_bridge_tbl in host_pci.c on you own, adding
> entry for your PCI ID?
>
> If lspci -nn gives you 14e4:4331, try adding:
> { PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4331) },
> (which exuals to:
> { PCI_DEVICE(0x14e4, 0x4331) },
> ).
>
> --
> Rafa?
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110416/da368c67/attachment.html>
