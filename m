From: Christopher Horler <cshorler@googlemail.com>
Date: Mon, 25 Nov 2013 10:33:29 +0000
Subject: b43 / LCN PHY
Message-ID: <CAAeT8m84k1iqQk+4nch=DG2+8FPn=Kmues2LuqCwScUmAbfqRQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi All,

I enabled the (broken) LCN PHY support.  I understand it's broken, I'm
not expecting it to work... at least not yet!

Is anyone looking at this?

Are there any obvious major blocking issues (so as to avoid unnecessary effort)?

Chris


Info:

(This is from my laptop)
For info # lspci -vvn -d 14e4:

03:00.0 Network controller [0280]: Broadcom Corporation BCM4313
802.11bgn Wireless Network Adapter [14e4:4727] (rev 01)
        Subsystem: Wistron NeWeb Corp. Device [185f:051a]
        Flags: bus master, fast devsel, latency 0, IRQ 16
        Memory at fea00000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3
        Capabilities: [58] Vendor Specific Information: Len=78 <?>
        Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
        Capabilities: [d0] Express Endpoint, MSI 00
        Capabilities: [100] Advanced Error Reporting
        Capabilities: [13c] Virtual Channel
        Capabilities: [160] Device Serial Number 00-00-4a-ff-ff-4a-30-14
        Capabilities: [16c] Power Budgeting <?>
        Kernel driver in use: bcma-pci-bridge
        Kernel modules: bcma

After activating allhwsupport=1,  perhaps as expected the wireless doesn't work.

On boot, the code is logging the following message (full dmesg output
is attached)
[   23.058777] b43-phy0 ERROR: SW ctl table is unknown for this card

This seems to be generated on examination of board flags, is there any
way to read /interrogate the current board flags from sysfs or
debugfs?  (or do I need some printk's?)

The kernel log reports a Broadcom Bluetooth adapter showing up on the
USB bus, this is also on-board (perhaps the same module?)

tables_phy_lcn.c-       if (sprom->boardflags_lo & B43_BFL_FEM &&
tables_phy_lcn.c-           !(sprom->boardflags_hi & B43_BFH_FEM_BT))
tables_phy_lcn.c-               b43_lcntab_write_bulk(dev, B43_LCNTAB16(0xf, 0),
tables_phy_lcn.c-
ARRAY_SIZE(b43_lcntab_sw_ctl_4313_epa_rev0),
tables_phy_lcn.c-                       b43_lcntab_sw_ctl_4313_epa_rev0);
tables_phy_lcn.c-       else
tables_phy_lcn.c:               b43err(dev->wl, "SW ctl table is
unknown for this card\n");


dmesg (likely relevant output)
chorler at linux-foxtrot:~/projects/src> grep -iE
'bluetooth|bcm|ieee80211|b43' b43_lcn.log
[    0.000000] BIOS-e820: [mem 0x00000000afb43000-0x00000000afb45fff] ACPI NVS
[    0.000000] PM: Registered nosave memory: [mem 0xafb43000-0xafb45fff]
[    0.167662] PM: Registering ACPI NVS region [mem
0xafb43000-0xafb45fff] (12288 bytes)
[    0.294126] pci 0000:00:14.2: reg 0x10: [mem 0xfeb40000-0xfeb43fff 64bit]
[    3.437464] usb 3-3: Product: Broadcom BCM2070 Bluetooth Device
[   11.954429] bcma: bus0: Found chip with id 0x4313, rev 0x01 and package 0x08
[   11.954465] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id
0x800, rev 0x24, class 0x0)
[   11.954489] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id
0x812, rev 0x18, class 0x0)
[   11.954533] bcma: bus0: Core 2 found: PCIe (manuf 0x4BF, id 0x820,
rev 0x11, class 0x0)
[   11.970475] bcma: bus0: Bus registered
[   12.535869] Bluetooth: Core ver 2.17
[   12.535938] Bluetooth: HCI device and connection manager initialized
[   12.535955] Bluetooth: HCI socket layer initialized
[   12.535961] Bluetooth: L2CAP socket layer initialized
[   12.535970] Bluetooth: SCO socket layer initialized
[   19.029813] b43-phy0: Broadcom 4313 WLAN found (core revision 24)
[   19.030736] b43-phy0: Found PHY: Analog 10, Type 8 (LCN), Revision 1
[   19.030752] b43-phy0 debug: Found Radio: Manuf 0x17F, Version
0x2064, Revision 1
[   19.601525] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   20.457836] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   20.457846] Bluetooth: BNEP filters: protocol multicast
[   20.457865] Bluetooth: BNEP socket layer initialized
[   23.055667] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[   23.058777] b43-phy0 ERROR: SW ctl table is unknown for this card
[   23.085703] b43-phy0 debug: Chip initialized
[   23.087096] b43-phy0 debug: 64-bit DMA initialized
[   23.087196] b43-phy0 debug: QoS enabled
[   23.088439] b43-phy0 debug: Wireless interface started
[   23.088510] b43-phy0 debug: Adding Interface type 2
[   41.301198] Bluetooth: RFCOMM TTY layer initialized
[   41.301234] Bluetooth: RFCOMM socket layer initialized
[   41.301250] Bluetooth: RFCOMM ver 1.11
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43_lcn.log
Type: text/x-log
Size: 66088 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20131125/4d593971/attachment-0001.bin>
