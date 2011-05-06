From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 6 May 2011 22:40:14 +0200
Subject: Interesting 14e4:4321
Message-ID: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
rare and interesting so I wanted to post all info about it :)

I'm attaching lspci and dmesg.

I find it interesting because it seems to be SSB SOC with standard
cores: CC, FastEthernet, USB, MIPS, etc. Plus there is PCI bridge with
14e4:4321 card connected, which is SSB-based one with (the most
interesting) 80211.

Unfortunately this is one another BCM4321 with DMA not working. I
really need to focus on this after fixing LP-PHY and adding BCMA.

-- 
Rafa?
-------------- next part --------------
# lspci -tvnn //kernel 2.4
-[0000:00]-+-00.0  Broadcom Corporation Sentry5 Chipcommon I/O Controller [14e4:0800]
          +-01.0  Broadcom Corporation Sentry5 Ethernet Controller [14e4:4713]
          +-02.0  Broadcom Corporation Sentry5 Ethernet Controller [14e4:4713]
          +-03.0  Broadcom Corporation Sentry5 USB Controller [14e4:4715]
          +-04.0-[01]--+-00.0  Broadcom Corporation BCM4704 PCI to SB Bridge [14e4:4704]
          |            \-01.0  Broadcom Corporation BCM4306 802.11a Wireless LAN Controller [14e4:4321]
          +-05.0  Broadcom Corporation BCM3302 Sentry5 MIPS32 CPU [14e4:0816]
          +-06.0  Broadcom Corporation BCM47xx V.92 56k modem [14e4:4712]
          +-07.0  Broadcom Corporation Sentry5 Crypto Accelerator [14e4:4718]
          \-08.0  Broadcom Corporation Sentry5 DDR/SDR RAM Controller [14e4:080f]


# lspci -tvnn //kernel 2.6
-[0000:00]---00.0  Broadcom Corporation BCM4704 PCI to SB Bridge [14e4:4704]


# lspci -tvnn //kernel 2.6 with nvram cardbus=0
root at OpenWrt:/# lspci -tvnn
-[0000:00]-+-00.0  Broadcom Corporation BCM4704 PCI to SB Bridge [14e4:4704]
          \-01.0  Broadcom Corporation BCM4306 802.11a Wireless LAN Controller [14e4:4321]


# lspci -vnn //kernel 2.4
00:00.0 FLASH memory [0501]: Broadcom Corporation Sentry5 Chipcommon I/O Controller [14e4:0800] (rev 09)
       Flags: fast devsel, IRQ 3
       Memory at 18000000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Memory at 1fc00000 (32-bit, non-prefetchable) [disabled] [size=4M]
       Memory at 1c000000 (32-bit, non-prefetchable) [disabled] [size=32M]
       Memory at 1a000000 (32-bit, non-prefetchable) [disabled] [size=32M]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:01.0 Ethernet controller [0200]: Broadcom Corporation Sentry5 Ethernet Controller [14e4:4713] (rev 09)
       Flags: bus master, fast devsel, latency 64, IRQ 4
       Memory at 18001000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:02.0 Ethernet controller [0200]: Broadcom Corporation Sentry5 Ethernet Controller [14e4:4713] (rev 09)
       Flags: bus master, fast devsel, latency 64, IRQ 5
       Memory at 18002000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:03.0 USB Controller [0c03]: Broadcom Corporation Sentry5 USB Controller [14e4:4715] (rev 09) (prog-if 10 [OHCI])
       Flags: fast devsel, IRQ 6
       Memory at 18003000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:04.0 PCI bridge [0604]: Broadcom Corporation Sentry5 PCI Bridge [14e4:0804] (rev 09) (prog-if 00 [Normal decode])
       Flags: 66MHz, user-definable features, ?? devsel
       Memory at 18004000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Memory at 08000000 (32-bit, non-prefetchable) [disabled] [size=128M]
       Bus: primary=00, secondary=01, subordinate=01, sec-latency=64
       I/O behind bridge: 00000000-00000fff
       Memory behind bridge: 00000000-000fffff
       Prefetchable memory behind bridge: 00000000-000fffff
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:05.0 MIPS [0b30]: Broadcom Corporation BCM3302 Sentry5 MIPS32 CPU [14e4:0816] (rev 09)
       Flags: fast devsel, IRQ 2
       Memory at 18005000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:06.0 Modem [0703]: Broadcom Corporation BCM47xx V.92 56k modem [14e4:4712] (rev 09) (prog-if 00 [Generic])
       Flags: fast devsel, IRQ 2
       Memory at 18006000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:07.0 Network and computing encryption device [1000]: Broadcom Corporation Sentry5 Crypto Accelerator [14e4:4718] (rev 09)
       Flags: fast devsel, IRQ 2
       Memory at 18007000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Expansion ROM at <unassigned> [disabled] [size=2K]

00:08.0 RAM memory [0500]: Broadcom Corporation Sentry5 DDR/SDR RAM Controller [14e4:080f] (rev 09)
       Flags: fast devsel, IRQ 3
       Memory at 18008000 (32-bit, non-prefetchable) [disabled] [size=4K]
       Memory at <unassigned> (32-bit, non-prefetchable) [disabled] [size=128M]
       Memory at 10000000 (32-bit, non-prefetchable) [disabled] [size=128M]
       Memory at 80000000 (32-bit, non-prefetchable) [disabled] [size=512M]
       Expansion ROM at <unassigned> [disabled] [size=2K]

01:00.0 Host bridge [0600]: Broadcom Corporation BCM4704 PCI to SB Bridge [14e4:4704] (rev 09)
       Subsystem: Broadcom Corporation BCM4704 PCI to SB Bridge [14e4:4704]
       Flags: bus master, fast devsel, latency 64, IRQ 2
       Memory at 40000000 (32-bit, non-prefetchable) [size=8K]
       Memory at <unassigned> (32-bit, prefetchable) [size=128M]

01:01.0 Network controller [0280]: Broadcom Corporation BCM4306 802.11a Wireless LAN Controller [14e4:4321] (rev 03)
       Subsystem: Broadcom Corporation BCM4306 802.11a Wireless LAN Controller [14e4:4321]
       Flags: bus master, fast devsel, latency 64, IRQ 2
       Memory at 40004000 (32-bit, non-prefetchable) [size=16K]
-------------- next part --------------
# dmesg | grep ssb //kernel 2.6 with nvram cardbus=0
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x03, vendor 0x4243)
ssb: Core 1 found: Fast Ethernet (cc 0x806, rev 0x06, vendor 0x4243)
ssb: Core 2 found: Fast Ethernet (cc 0x806, rev 0x06, vendor 0x4243)
ssb: Core 3 found: USB 1.1 Hostdev (cc 0x808, rev 0x03, vendor 0x4243)
ssb: Core 4 found: PCI (cc 0x804, rev 0x08, vendor 0x4243)
ssb: Core 5 found: MIPS 3302 (cc 0x816, rev 0x03, vendor 0x4243)
ssb: Core 6 found: V90 (cc 0x807, rev 0x02, vendor 0x4243)
ssb: Core 7 found: IPSEC (cc 0x80B, rev 0x00, vendor 0x4243)
ssb: Core 8 found: MEMC SDRAM (cc 0x80F, rev 0x02, vendor 0x4243)
ssb: chipcommon status is 0x0
ssb: Initializing MIPS core...
ssb: set_irq: core 0x0806, irq 4 => 4
ssb: set_irq: core 0x0806, irq 5 => 5
ssb: set_irq: core 0x0808, irq 6 => 2
ssb: set_irq: core 0x0804, irq 2 => 6
ssb: after irq reconfiguration
ssb: core 0x0800, irq : 2(S)  3* 4  5  6  D  I
ssb: core 0x0806, irq : 2(S)  3  4* 5  6  D  I
ssb: core 0x0806, irq : 2(S)  3  4  5* 6  D  I
ssb: core 0x0808, irq : 2(S)* 3  4  5  6  D  I
ssb: core 0x0804, irq : 2(S)  3  4  5  6* D  I
ssb: core 0x0816, irq : 2(S)* 3  4  5  6  D  I
ssb: core 0x0807, irq : 2(S)* 3  4  5  6  D  I
ssb: core 0x080b, irq : 2(S)* 3  4  5  6  D  I
ssb: core 0x080f, irq : 2(S)  3  4  5  6  D  I*
ssb: Sonics Silicon Backplane found at address 0x18000000
ssb: PCIcore in host mode found
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0C, vendor 0x4243)
ssb: Core 2 found: PCI-E (cc 0x820, rev 0x04, vendor 0x4243)
ssb: Core 3 found: PCI (cc 0x804, rev 0x0D, vendor 0x4243)
ssb: Core 4 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
ssb: chipcommon status is 0x0
ssb: SPROM offset is 0x1000
ssb: WARNING: Invalid SPROM CRC (corrupt SPROM)
ssb: SPROM revision 0 detected.
ssb: Unsupported SPROM revision 0 detected. Will extract v1
ssb: Sonics Silicon Backplane found on PCI device 0000:00:01.0
